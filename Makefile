ifeq ($(USER),root)
$(info )$(info you should NOT use user "root")$(info )
$(error )
endif

.PHONY: xpi

# ####
# https://f-droid.org/en/packages/org.mozilla.fennec_fdroid/
# ####

VERSION:=68.8.0
VERSION:=68.9.0

pppDirName:=p01
progName:=hope000.$(pppDirName).$(shell printf "%x" `date +%s`|cut -b 4-)
progName:=$(pppDirName).$(shell printf "%x" `date +%s`|cut -b 4-)

ifeq (,$(strip $(no_proxy_text)))
no_proxy_text:=
sedAboutHome:= -e 's,AboutPages.HOME,"https://hope000.github.io/$(pppDirName)/",g' 
else
no_proxy_text:=|grep -v network.proxy.type
sedAboutHome:= -e 's,AboutPages.HOME,"https://hk2007j.chinadsf.org/p01/",g' 
endif


gradleVER:=$(shell gradle --version 2>/dev/null |grep ^Gradle|awk '{print $$2}')
ifneq (4.4.1,$(gradleVER))
$(info gradleVER must be 4.4.4 )$(error )
endif

gradlePATH:=/usr/bin/gradle
gradlePATH:=/e/eda5101/gradle/gradle-4.10.2-all/bin/gradle
gradlePATH:=/e/eda5101/gradle/gradle-4.10.3-all/bin/gradle
#gradlePATH:=/e/eda5101/gradle/gradle-5.6.4-all/bin/gradle
#gradlePATH:=/e/eda5101/gradle/gradle-6.4.1-all/bin/gradle

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

reset1 --> $(reset1)
reset2 --> $(reset2)
reset3 --> $(reset3)

reset  --> $(reset) --> note : you can use "export no_proxy_text=p01"

# https://hg.mozilla.org/releases/mozilla-esr68/

hg clone https://hg.mozilla.org/l10n-central/zh-TW/
hg clone https://hg.mozilla.org/l10n-central/zh-CN/

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

##### dstPKGfmt:=armv7-linux-androideabi   : I don't know why , the i686 and aarch64 can be used. armv7 always failed.

#ac_add_options --target=$(dstPKGfmt)
#dstPKGfmt?=i686-linux-android
dstPKGfmt?=arm-unknown-linux-androideabi
#dstPKGfmt?=aarch64-linux-android


# Android 4.1 Jelly Bean (API 16)
# Android 4.4 KitKat (API 19)
# Android 5.0 Lollipop (API 21)

define mozconfTEXT


mk_add_options 'export L10NBASEDIR=$(MozLocales)'
ac_add_options --with-l10n-base=$(MozLocales)
ac_add_options --target=$(dstPKGfmt)
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
ac_add_options --with-gradle=$(gradlePATH)
ac_add_options --with-android-min-sdk=19
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
	@echo "$${allHelpText}"

pre:
	echo "$${mozconfTEXT}" > $(ttt)/.mozconfig
	echo "$${local_propertiesTEXT}" > $(ttt)/local.properties
	#cat AndroidManifest.xml.002.my.xml > $(ttt)/mobile/android/geckoview/src/main/AndroidManifest.xml
	cat FennecManifest_permissions.xml.in.003.my.in > \
		$(ttt)/mobile/android/base/FennecManifest_permissions.xml.in
	cat DataReportingNotification.java.002.my.java > \
		$(ttt)/mobile/android/base/java/org/mozilla/gecko/DataReportingNotification.java
	cat FxAccountAndroidManifest_permissions.xml.in.003.my.in > \
		$(ttt)/mobile/android/services/manifests/FxAccountAndroidManifest_permissions.xml.in
	cd $(ttt) && tar xf ../bkTar/bk01_icon.tar 
	##cat UnusedResourcesUtil.java.003.my.java > \
	##	$(ttt)/mobile/android/base/java/org/mozilla/gecko/util/UnusedResourcesUtil.java
	##cat firefox.js.003.my.js > \
	##	$(ttt)/browser/app/profile/firefox.js
	# grep -R AboutPages.HOME    688020/mobile/android/base/java/org/mozilla/gecko/
	# grep -R AboutPages.HOME    org.mozilla.fennec_fdroid_/ |awk -F: '{print $1}' |sort -u
	sed -i                                                                                        \
		$(sedAboutHome)  \
		$(ttt)/mobile/android/base/java/org/mozilla/gecko/Tabs.java                               \
		$(ttt)/mobile/android/base/java/org/mozilla/gecko/preferences/GeckoPreferences.java       \
		$(ttt)/mobile/android/base/java/org/mozilla/gecko/preferences/SetHomepagePreference.java  
	sed -i \
		\
		-e 's;\b965234145045\b;999999999999;g'                  \
		-e 's;\b242693410970\b;222222222222;g'                  \
		-e 's;\borg.mozilla.fennec_fdroid\b;org.mmm.fff;g'      \
		-e 's;\bFennec F-Droid\b;$(progName);g'                		\
		-e 's;\b689020\b;222222;g'                        		\
		\
		$(ttt)/mobile/android/branding/unofficial/configure.sh
	#### change the network.proxy.type here
	cat all.js.003.my.js   $(no_proxy_text)  > \
		$(ttt)/modules/libpref/init/all.js
	#cat all.js.001.origin.js > \
	#	$(ttt)/modules/libpref/init/all.js
	#
	#sed -i \
	#	-e 's;"Mozilla/5.0 (Android;"Firefox.mmm.21.$(progName).$(pppDirName) Mozilla/5.0 (Android;g' \
	#	688020/mobile/android/geckoview/build.gradle 
	#sed -i \
	#	-e 's;"Mozilla/5.0 (Android;"Firefox.mmm.31.$(progName).$(pppDirName) Mozilla/5.0 (Android;g' \
	#	688020/mobile/android/base/AppConstants.java.in
	sed -i \
		-e 's;"Mozilla/5.0 (;"Firefox.mmm.41.$(progName).$(pppDirName) Mozilla/5.0 (;g' \
		$(ttt)/toolkit/components/resistfingerprinting/nsRFPService.cpp


xpi:
	for aa1 in xpi/*.xpi ; do \
		aa2=`basename $${aa1}` ; \
		aa5=`echo $${aa2%.xpi}|tr [@\.] _|cut -b 1-6` ; \
		aa3=$(ttt)/mobile/android/extensions/$${aa5} ; \
		aa4=`realpath  shsh/gen_Moz.build.txt ` ; \
		echo === $${aa1} === begin ; \
		[ -d $${aa3} ] || ( \
		mkdir    $${aa3} ; \
		unzip -q $${aa1}      -d $${aa3}/ ;  \
		sed -i -e "/$${aa5}/d" \
		$(ttt)/mobile/android/extensions/moz.build ; \
		echo "DIRS += ['$${aa5}']" >> \
		$(ttt)/mobile/android/extensions/moz.build ; \
		cd $${aa3}/ && ( . $${aa4} \
		&& $(xpiPath01SED) $(xpiPath01FILE)) ;  \
		) ; \
		echo === $${aa1} , $${aa2} , $${aa3} , $${aa4} , $${aa5} === end ; \
		done

xpiPath01SED:=sed -i.bak -e '/"CHN-/,+5 s;"off": true,;"off": false,;g' 
xpiPath01FILE:=assets/assets.json
xpiPath01CMD:=
xpiPath01:

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
apkListCP:=\
	cp `find $(ttt)/obj/dist/ -type f -name "*.apk" |grep -v unsigned-unaligned.apk `  

define swithLOG
rm -f    $(1).003
[ ! -f   $(1).002 ] || mv    $(1).002 $(1).003 
[ ! -f   $(1).001 ] || mv    $(1).001 $(1).002 
[ ! -f   $(1)     ] || mv    $(1)     $(1).001 


endef
r1:=release1
$(r1):=cd $(ttt) && $(env01) time nice -n 19 ./mach build 
r1 $(r1):
	[ -d log ] || mkdir log
	$(call swithLOG,log/r1.txt)
	$($(r1)) | tee --output-error=warn ../log/r1.txt
	$(apkListCMD) >> log/r1.txt
	$(apkListCMD)
	find $(ttt)/ -type f > $(ttt).after.r1.txt

r2:
	@echo
	rm -f ./r2.txt
	cd $(ttt) && echo $${JAVA_HOME}
	echo zh-TW > $(ttt)/used-locales
	echo zh-CN >> $(ttt)/used-locales
	cd $(ttt) && $(env01) cat used-locales | xargs -I % time nice -n 19 ./mach build chrome-%    | tee --output-error=warn ../log/r2.txt
	$(apkListCMD) >> log/r2.txt
	find $(ttt)/ -type f > $(ttt).after.r2.txt
	@echo

r3:
	@echo
	rm -f ./r3.txt
	cd $(ttt) && $(env01) time nice -n 19 make -C obj/mobile/android/base android_apks    | tee --output-error=warn ../log/r3.txt
	$(apkListCMD) >> log/r3.txt
	$(apkListCMD)
	find $(ttt)/ -type f > $(ttt).after.r3.txt
	@echo

r4:
	@echo
	#rm -f ./r4.txt
	$(call swithLOG,log/r4.txt)
	cd $(ttt) && $(env01) time nice -n 19 make -C obj package AB_CD=multi    | tee --output-error=warn ../log/r4.txt
	$(apkListCMD) >> log/r4.txt
	$(apkListCMD)
	find $(ttt)/ -type f > $(ttt).after.r4.txt
	@echo

r5:
	@echo
	rm -f ./r5.txt
	cd $(ttt) && $(env01) \
		time nice -n 19 zip -d obj/dist/fennec-$(VERSION).multi.android-*-unsigned-unaligned.apk \
        'META-INF/CERT.*' 'META-INF/MANIFEST.MF'    | tee --output-error=warn ../log/r5.txt
	$(apkListCMD) >> log/r5.txt
	$(apkListCMD)
	find $(ttt)/ -type f > $(ttt).after.r5.txt
	@echo

r6:
	@echo
	[ -d 1/ ] || mkdir 1/
	touch 1/$(progName)__$(dstPKGfmt).txt
	$(apkListCP) 1/
	@echo

r7:
	$(call swithLOG,log/r7.txt)

i1:
	@echo
	-adb shell pm clear org.mozilla.fennec_fdroid
	-adb shell pm clear org.mmm.fff
	-adb uninstall org.mozilla.fennec_fdroid
	-adb uninstall org.mmm.fff
	adb install $(firstword $(wildcard \
		1/fennec-$(VERSION).multi.android-aarch64.apk \
		1/fennec-$(VERSION).multi.android-arm.apk \
		))
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
		\
		`find mobile/android/branding/unofficial/res/ -type f -name "*.png" |grep ic_launcher`      \
		\
		`find mobile/android/branding/unofficial/res/ -type f -name "*.png" |grep icon.png`      \
		\
		mobile/android/app/src/main/res/drawable-nodpi/firstrun_sendtab.png \
		mobile/android/app/src/main/res/drawable-nodpi/firstrun_sync2.png \
		mobile/android/app/src/main/res/drawable-nodpi/firstrun_welcome2.png \

reset:=do_all_build_step
reset: 
	make reset1 
	make reset2 
	make pre 
	make xpi 
	make c1 
	make rrr

reset1:
	cd $(ttt)/ && (rm .* * -fr ; ls -la )
	@echo === 
	if [ -f $(ttt).tar.xz ] ; then \
		echo "extarct from tar.xz" ; \
		(cd $(ttt) && tar xfJ ../$(ttt).tar.xz && cd org.mozilla.fennec_fdroid_* \
		&& (mv * ../ && mv .* ../ 2>/dev/null )) ; \
		else  \
		echo "copy from org.mozilla.fennec_fdroid_/" ; \
		((cd org.mozilla.fennec_fdroid_/ && tar cf - .)|( cd ${ttt} && tar xf - )) ; \
		fi; echo -n


	$(reset1)


reset2:= rm -fr  ~/.gradle
reset2:
	$(reset2)

reset3:= rm -fr  ~/.android 
reset3:
	$(reset3)

up:
	git push
