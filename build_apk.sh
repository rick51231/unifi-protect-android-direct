#!/bin/sh

java -jar tools/apktool.jar b -o protect-patched-unsigned.apk out
java -jar tools/sign.jar protect-patched-unsigned.apk
rm protect-patched-unsigned.apk
mv protect-patched-unsigned.s.apk protect-patched.apk
