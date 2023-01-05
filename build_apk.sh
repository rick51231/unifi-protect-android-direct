#!/bin/sh


java -jar tools/apktool.jar b -o protect-patched-unsigned.apk out
chmod +x tools/zipalign
zipalign -p 4 protect-patched-unsigned.apk protect-patched-unsigned-aligned.apk
java -Xmx1024M -jar tools/apksigner.jar sign --key tools/testkey.pk8 --cert tools/testkey.x509.pem protect-patched-unsigned-aligned.apk
rm protect-patched-unsigned.apk
mv protect-patched-unsigned-aligned.apk protect-patched.apk
