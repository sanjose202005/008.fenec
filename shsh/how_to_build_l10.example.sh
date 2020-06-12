#!/bin/sh

# https://bugzilla.mozilla.org/show_bug.cgi?id=519684
# https://bug519684.bmoattachments.org/attachment.cgi?id=406278

set -ex
LOCALE='pt-BR'
TOP=`pwd`
BRANCH='mozilla-1.9.2'

# 1) Checking out
hg clone http://hg.mozilla.org/releases/mozilla-1.9.2
cd $BRANCH && hg clone http://hg.mozilla.org/mobile-browser mobile
cd $TOP && hg clone http://hg.mozilla.org/build/compare-locales
# Let's not create the directory with a generic name rather than branch specific 
cd $TOP && mkdir l10n && hg clone http://hg.mozilla.org/releases/l10n-mozilla-1.9.2/$LOCALE

# 2) Create the mozconfig
cat > "${BRANCH}/.mozconfig" << BLOCK
export LDFLAGS='-Wl,-rpath-link,/usr/lib:/lib'
mk_add_options MOZ_BUILD_PROJECTS="xulrunner mobile"
mk_add_options MOZ_OBJDIR=@TOPSRCDIR@/objdir
# relative to MOZ_OBJDIR/mobile
ac_add_options --with-l10n-base=../../../l10n
ac_add_app_options xulrunner --enable-application=xulrunner
ac_add_options --disable-javaxpcom
ac_add_app_options xulrunner --with-arm-kuser
ac_add_options --disable-tests
ac_add_app_options mobile --enable-application=mobile
ac_add_app_options mobile --with-libxul-sdk=../xulrunner/dist
BLOCK

# 3) Let's build
#cd $TOP/$BRANCH
#make -f client.mk build

# 4) Let process the locale
#    - run compare-locales
#    - make chrome-ab-CD
export PYTHONPATH=$TOP/compare-locales/lib/:$PYTHONPATH
cd $TOP/$BRANCH/dist && python $TOP/compare-locales/scripts/compare-locales -m merged $TOP/$BRANCH/mobile/locales/l10n.ini $TOP/l10n $LOCALE
# TODO: run chrome-ab-CD with the merged directory rather than the source tree?
cd $TOP/$BRANCH/objdir/mobile && make -C mobile/locales chrome-$LOCALE LOCALE_MERGEDIR=$TOP/$BRANCH/merged

# 5) Let's package all together
cd $TOP/$BRANCH/objdir/mobile && make package
