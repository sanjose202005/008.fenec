.PHONY: xpi

# ####
# https://f-droid.org/en/packages/org.mozilla.fennec_fdroid/
# ####

VERSION:=68.8.0

gradleVER:=$(shell gradle --version 2>/dev/null |grep ^Gradle|awk '{print $$2}')
ifneq (4.4.1,$(gradleVER))
$(info gradleVER must be 4.4.4 )$(error )
endif

gradlePATH:=/usr/bin/gradle
gradlePATH:=/e/eda5101/gradle/gradle-4.10.2-all/bin/gradle

androidSdkPATH:=/e/eda5101/Android/Sdk
androidNdkPATH:=/e/eda5101/Android/Sdk/ndk/19.2.5345600/
#export ANDROID_NDK_HOME=$(androidNdkPATH)

# /e/eda5101/src/android-studio-ide-193.6514223-linux/android-studio/jre/bin/jarsigner
JAVA_HOME:=/e/eda5101/src/android-studio-ide-193.6514223-linux/android-studio
JAVA_HOME:=/e/eda5101/src/android-studio-ide-193.6514223-linux/android-studio/jre
JAVA_HOME:=/e/eda5101/sdk/Sdk/jre/bin
JAVA_HOME:=$(androidSdkPATH)/jre/bin
JAVA_HOME:=$(androidSdkPATH)/jre
#$(if $(wildcard $(JAVA_HOME)/jarsigner),,$(info x88238181)$(error xxx))
$(info JAVA_HOME : $(JAVA_HOME))


define EOL


endef

ttt:=688020

define allHelpText

m   -->> $(m)    -->> $($(m))

c1  -->> $(c1)   -->> $($(c1))

r1  -->> $(r1)   -->> $($(r1))

rrr  -->> $(rrr)
rrr2 -->> $(rrr2)
rrr4 -->> $(rrr4)

ii  -->> $(ii)   -->> $($(ii))
bk01 -->> $(bk01)

# https://hg.mozilla.org/releases/mozilla-esr68/

# https://firefox-source-docs.mozilla.org/build/buildsystem/locales.html
# https://hg.mozilla.org/l10n-central/ 
# https://hg.mozilla.org/l10n-central/zh-CN/archive/tip.zip
# ac_add_options --with-l10n-base=/make/this/a/absolute/path
# .mozconfig --> .mozconfig
# ac_add_options --with-java-bin-path=/e/eda5101/src/android-studio-ide-193.6514223-linux/android-studio/jre/bin

# android-sdk.configure
# return namespace(build_tools_versions=['27.0.3'], target_sdk_version='28')

# hwo to build : https://gitlab.com/fdroid/fdroiddata/-/blob/master/metadata/org.mozilla.fennec_fdroid.yml

rustup-init.sh -y
source $$HOME/.cargo/env
rustup default 1.38.0
rustup target add aarch64-linux-android
cargo install --force --vers 0.14.2 cbindgen

endef
export allHelpText

env01:= JAVA_HOME=$(JAVA_HOME) nice -n 19

MozLocales:=$(shell realpath MozLocales/MozLocales)

define mozconfTEXT


ac_add_options --enable-ffmpeg
ac_add_options --enable-application=mobile/android
ac_add_options --enable-linker=lld
#ac_add_options --disable-eme
ac_add_options --disable-tests
ac_add_options --disable-debug
ac_add_options --disable-nodejs
ac_add_options --disable-updater
ac_add_options --disable-crashreporter
ac_add_options --without-google-play-services
ac_add_options --with-branding=mobile/android/branding/unofficial
export MOZ_INSTALL_TRACKING=
export MOZ_NATIVE_DEVICES=
mk_add_options 'export MOZ_CHROME_MULTILOCALE=zh-TW zh-CN '
mk_add_options 'export L10NBASEDIR=$(MozLocales)'
ac_add_options --with-l10n-base=$(MozLocales)
ac_add_options --with-gradle=$(gradlePATH)
ac_add_options --target=aarch64-linux-android
ac_add_options --with-android-min-sdk=21
ac_add_options --with-android-ndk="$(androidNdkPATH)"
ac_add_options --with-android-sdk="$(androidSdkPATH)"
ac_add_options --enable-application=mobile/android
ac_add_options --with-branding=mobile/android/branding/unofficial
ac_add_options --with-libclang-path=$(androidNdkPATH)/toolchains/llvm/prebuilt/linux-x86_64/lib64/
ac_add_options --with-clang-path=$(androidNdkPATH)/toolchains/llvm/prebuilt/linux-x86_64/bin/clang
mk_add_options MOZ_OBJDIR=@TOPSRCDIR@/obj

endef
export mozconfTEXT

define local_propertiesTEXT

sdk.dir=$(androidSdkPATH)
sdk-location=$(androidSdkPATH)
ndk.dir=$(androidNdkPATH)
ndk-location=$(androidNdkPATH)

endef
export local_propertiesTEXT


all:
	@echo "$${mozconfTEXT}" > $(ttt)/.mozconfig
	@echo "$${local_propertiesTEXT}" > $(ttt)/local.properties
	cat all.js.003.my.js > $(ttt)/modules/libpref/init/all.js
	cd $(ttt) && tar xf ../bkTar/bk01_icon.tar 
	@echo "$${allHelpText}"

xpi:
	for aa1 in xpi/*.xpi ; do \
		aa2=`basename $${aa1}` ; \
		aa3=$(ttt)/mobile/android/extensions/$${aa2%.xpi} ; \
		aa4=`realpath  shsh/gen_Moz.build.txt ` ; \
		echo === $${aa1} === begin ; \
		[ -d $${aa3} ] || ( \
		mkdir    $${aa3} ; \
		unzip -q $${aa1}      -d $${aa3}/ ;  \
		sed -i -e "/$${aa2%.xpi}/d" \
		$(ttt)/mobile/android/extensions/moz.build ; \
		echo "DIRS += ['$${aa2}']" >> \
		$(ttt)/mobile/android/extensions/moz.build ; \
		cd $${aa3}/ && . $${aa4} ;  \
		) ; \
		echo === $${aa1} , $${aa2} , $${aa3} , $${aa4} === end ; \
		done

m:=vm1
$(m):=vim Makefile
m:
	$($(m))

c1:=clean1
$(c1):=cd $(ttt) && ./mach clobber
c1 $(c1):
	$($(c1))

apkListCMD:=\
	find $(ttt)/obj/dist/ -type f -name "*.apk" ; \
	find $(ttt)/obj/gradle/build/mobile/android/app/outputs/ -type f -name "*.apk"

apkListCP:=\
	cp `find $(ttt)/obj/dist/ -type f -name "*.apk" `  \
	`find $(ttt)/obj/gradle/build/mobile/android/app/outputs/ -type f -name "*.apk"`

define swithLOG
rm -f    $(1).003
[ ! -f   $(1).002 ] || mv    $(1).002 $(1).003 
[ ! -f   $(1).001 ] || mv    $(1).001 $(1).002 
[ ! -f   $(1)     ] || mv    $(1)     $(1).001 


endef
r1:=release1
$(r1):=cd $(ttt) && $(env01) time ./mach build 
r1 $(r1):
	$(call swithLOG,./r1.txt)
	$($(r1)) | tee --output-error=warn ../r1.txt
	$(apkListCMD) >> ../r1.txt
	$(apkListCMD)

r2:
	@echo
	rm -f ./r2.txt
	cd $(ttt) && echo $${JAVA_HOME}
	echo zh-TW > $(ttt)/used-locales
	echo zh-CN >> $(ttt)/used-locales
	cd $(ttt) && $(env01) cat used-locales | xargs -I % time ./mach build chrome-%    | tee --output-error=warn ../r2.txt
	$(apkListCMD) >> ../r2.txt
	@echo

r3:
	@echo
	rm -f ./r3.txt
	cd $(ttt) && $(env01) time make -C obj/mobile/android/base android_apks    | tee --output-error=warn ../r3.txt
	$(apkListCMD) >> ../r3.txt
	$(apkListCMD)
	@echo

r4:
	@echo
	#rm -f ./r4.txt
	$(call swithLOG,./r4.txt)
	cd $(ttt) && $(env01) time make -C obj package AB_CD=multi    | tee --output-error=warn ../r4.txt
	$(apkListCMD) >> ../r4.txt
	$(apkListCMD)
	@echo

r5:
	@echo
	rm -f ./r5.txt
	cd $(ttt) && $(env01) \
		time zip -d obj/dist/fennec-$(VERSION).multi.android-*-unsigned-unaligned.apk \
        'META-INF/CERT.*' 'META-INF/MANIFEST.MF'    | tee --output-error=warn ../r5.txt
	$(apkListCMD) >> ../r5.txt
	$(apkListCMD)
	@echo

r6:
	@echo
	$(apkListCP) 1/
	@echo

r7:
	$(call swithLOG,./r7.txt)

i1:
	@echo
	-adb shell pm clear org.mozilla.fennec_fdroid
	-adb uninstall org.mozilla.fennec_fdroid
	adb install 1/fennec-$(VERSION).multi.android-aarch64.apk 
	@echo

rrr := r1 r2 r3 r4 r5 r6 i1
rrr2 :=   r2 r3 r4 r5 r6 i1
rrr4 :=         r4 r5 r6 i1

rrr : $(rrr)
rrr2 : $(rrr2)
rrr4 : $(rrr4)

iconsCMD1:= find ./$(ttt)/mobile/android/ -name "*.png" |grep ic_launcher
iconsCMD2:= find ./$(ttt)/mobile/android/branding/unofficial/res/mipmap-xxhdpi/ -name "*.png" |grep ic_launcher
define iconsCMD3

$(ttt)/mobile/android/branding/unofficial/res/mipmap-xxxhdpi/ic_launcher_foreground.png
$(ttt)/mobile/android/branding/unofficial/res/mipmap-xxhdpi/ic_launcher_foreground.png
$(ttt)/mobile/android/app/src/main/res/drawable-nodpi/firstrun_sendtab.png
$(ttt)/mobile/android/app/src/main/res/drawable-nodpi/firstrun_sync2.png
$(ttt)/mobile/android/app/src/main/res/drawable-nodpi/firstrun_welcome2.png


endef
export iconsCMD3
ii:=icons
$(ii):=$(iconsCMD2)
iiExtensions:=b7f26455-ddae-4845-a97a-4c396ad8ca20
ii $(ii):
	$(iconsCMD2)
	@echo ; echo "$(iconsCMD1)" ; echo
	@echo ; echo "$(iconsCMD2)" ; echo
	@echo ; echo "$${iconsCMD3}" ; echo

iiXXX:
	$(foreach aa1,$(iiExtensions),\
		ls -d -l                               xpi/\{$(aa1)\}.xpi $(EOL)   \
		test -d     $(ttt)//browser/extensions/                        \
		|| mkdir -p $(ttt)//browser/extensions/   $(EOL)               \
		test -f     $(ttt)//browser/extensions/\{$(aa1)\}.xpi          \
		|| cp                                  xpi/\{$(aa1)\}.xpi          \
		-d          $(ttt)//browser/extensions/\{$(aa1)\}.xpi   $(EOL) \
		)

gs:
	git status

gss:
	cd $(ttt) && git status

gd :
	git diff

gdd:
	cd $(ttt) && git diff

gc :
	git commit -a

gcc :
	cd $(ttt) && git commit -a


bk01:=bk01_icon_of_ourselves
bk01 $(bk01):
	[ -d bkTar/ ] || mkdir bkTar/
	[ -d bkTar/ ] 
	[ ! -f bkTar/bk01_icon.tar ]
	cd $(ttt) && tar cf ../bkTar/bk01_icon.tar \
		mobile/android/branding/unofficial/res/mipmap-xxxhdpi/ic_launcher_foreground.png \
		mobile/android/branding/unofficial/res/mipmap-xxhdpi/ic_launcher_foreground.png \
		mobile/android/app/src/main/res/drawable-nodpi/firstrun_sendtab.png \
		mobile/android/app/src/main/res/drawable-nodpi/firstrun_sync2.png \
		mobile/android/app/src/main/res/drawable-nodpi/firstrun_welcome2.png \

define kkk

FINAL_TARGET_FILES.features += [
    '{b7f26455-ddae-4845-a97a-4c396ad8ca20}.xpi'
]


endef


