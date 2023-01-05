#!/bin/sh

wget -O baksmali.jar https://bitbucket.org/JesusFreke/smali/downloads/baksmali-2.5.2.jar
wget -O apktool.jar https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.6.0.jar
wget -O sign.jar https://github.com/appium-boneyard/sign/releases/download/1.0/sign-1.0.jar
wget https://github.com/appium-boneyard/sign/raw/master/testkey.pk8
wget https://github.com/appium-boneyard/sign/raw/master/testkey.x509.pem

# link for macos: https://dl.google.com/android/repository/build-tools_r27.0.3-macosx.zip
# Link for windows: https://dl.google.com/android/repository/build-tools_r27.0.3-windows.zip
# Link for linux: https://dl.google.com/android/repository/build-tools_r27.0.3-linux.zip

wget -O build-tools.zip "https://dl.google.com/android/repository/build-tools_r27.0.3-linux.zip"
unzip build-tools.zip
cp android-*/lib/apksigner.jar ./
cp android-*/zipalign ./
rm -rf android-*
rm -f build-tools.zip