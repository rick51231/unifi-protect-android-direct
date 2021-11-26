#!/bin/sh

ANDROID_SDK="$HOME/Library/Android/sdk"

javac Version1Packet.java
${ANDROID_SDK}/build-tools/30.0.0/dx --dex --output=Version1Packet.dex Version1Packet.class
java -jar ../tools/baksmali.jar d -o . Version1Packet.dex
rm Version1Packet*.class Version1Packet.dex
