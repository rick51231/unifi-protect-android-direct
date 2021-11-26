#!/bin/sh

APK_NAME=$1

java -jar tools/apktool.jar d -r -o out "${APK_NAME}"