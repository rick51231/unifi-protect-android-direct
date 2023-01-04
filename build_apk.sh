#!/bin/sh

java -jar tools/apktool.jar b -o protect-patched-unsigned.apk out
zipalign -p 4 protect-patched-unsigned.apk protect-patched-unsigned-aligned.apk
apksigner sign --key tools/testkey.pk8 --cert tools/testkey.x509.pem protect-patched-unsigned-aligned.apk
rm protect-patched-unsigned.apk
mv protect-patched-unsigned-aligned.apk protect-patched.apk
