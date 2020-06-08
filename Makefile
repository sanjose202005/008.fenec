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

rrr -->> $(rrr)

i  -->> $(i)   -->> $($(i))

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
	@echo "$${allHelpText}"

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

r1:=release1
$(r1):=cd $(ttt) && $(env01) time ./mach build 
r1 $(r1):
	rm -f ./r1.txt
	$($(r1)) | tee ../r1.txt
	$(apkListCMD) >> ../r1.txt
	$(apkListCMD)

r2:
	@echo
	rm -f ./r2.txt
	cd $(ttt) && echo $${JAVA_HOME}
	echo zh-TW > $(ttt)/used-locales
	echo zh-CN >> $(ttt)/used-locales
	cd $(ttt) && $(env01) cat used-locales | xargs -I % time ./mach build chrome-%    | tee ../r2.txt
	$(apkListCMD) >> ../r2.txt
	@echo

r3:
	@echo
	rm -f ./r3.txt
	cd $(ttt) && $(env01) time make -C obj/mobile/android/base android_apks    | tee ../r3.txt
	$(apkListCMD) >> ../r3.txt
	$(apkListCMD)
	@echo

r4:
	@echo
	rm -f ./r4.txt
	cd $(ttt) && $(env01) time make -C obj package AB_CD=multi    | tee ../r4.txt
	$(apkListCMD) >> ../r4.txt
	$(apkListCMD)
	@echo

r5:
	@echo
	rm -f ./r5.txt
	cd $(ttt) && $(env01) \
		time zip -d obj/dist/fennec-$(VERSION).multi.android-*-unsigned-unaligned.apk \
        'META-INF/CERT.*' 'META-INF/MANIFEST.MF'    | tee ../r5.txt
	$(apkListCMD) >> ../r5.txt
	$(apkListCMD)
	@echo

r6:
	@echo
	$(apkListCP) 1/
	@echo

r7:
	@echo
	adb uninstall org.mozilla.fennec_fdroid
	adb install 1/fennec-$(VERSION).multi.android-aarch64.apk 
	@echo

rrr := r1 r2 r3 r4 r5 r6 r7
rrr2 := r2 r3 r4 r5 r6 r7

rrr : $(rrr)
rrr2 : $(rrr2)

iconsCMD:= find ./$(ttt)/mobile/android/ -name "*.png" |grep ic_launcher
iconsCMD2:= find ./$(ttt)/mobile/android/branding/unofficial/res/mipmap-xxhdpi/ -name "*.png" |grep ic_launcher
i:=icons
$(i):=$(iconsCMD2)
i $(i):
	$(iconsCMD2)
	@echo ; echo "$(iconsCMD2)" ; echo

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

