# UniFi Protect Android patched
This repository contains several patches that allow you to connect to your setup externally (e.g. VPN or VLAN) without using the unifi cloud.
In releases you can find apk versions with "IP Validation fix" and "Wifi fix" patches.

## Requerments
* java (tested on 1.8.0_24)
* wget/patch (should come with linux/macos)
* zipalign (via package manager `apt-get install zipalign` for Debian/Ubuntu or use [Android BuildTools](https://androidsdkmanager.azurewebsites.net/Buildtools))

## Supported versions
* 1.4.7
* 1.10.1

## Usage
* Download UniFi Protect apk (any supported version)
* Unpack apk: `./unpack_apk.sh <apk name>`
* Apply patches (see below)
* Build apk: `./build_apk.sh` 
* Install *protect-patched.apk* on device or via adb: `adb install protect-patched.apk`

## Patches
Patches for different versions are stored in [patches](patches) folder. 

### IP Validation fix
Forces protect to use ip from discovery packet, required to work with [Unifi Proxy](https://github.com/bahamas10/unifi-proxy). By default, protect uses source ip of discovery packet. The iOS version does require this fix.

##### Run
`patch out/smali_classes*/com/ubnt/common/service/discovery/DiscoveryService.smali ip_validation.patch`



### Wifi fix
Disables wifi connectivity check and allows you to connect via VPN over cellular connection. Don't use it without VPN, because app uses unencrypted connection by default.
##### Run
`patch out/smali_classes*/com/ubnt/util/NetworkUtils.smali wifi.patch`

### Direct connection fix
Adds you protect local ip to discovered devices list. For now, i don't know which params (except IP) are requried. In folder *packet* you can find sources which were used to create smali code.

Edit *direct_connection.patch*:
* Change *192.168.1.2* to IP
* Change *001122334455* to your protect MAC
* Change *UCK-G2-PLUS* to your console model (see list below)

##### Run
`patch out/smali_classes*/com/ubnt/common/service/discovery/DeviceDiscoveryService.smali direct_connection.patch`

Models list:
* Boston
* MAC-OS
* UAS-XG
* UCK-G2-PLUS
* UDM-PRO
* UDM-PRO-SE
* UDR
* UDW
* UDWPRO
* UFP
* UNKNOWN
* UNVR4
* UNVR-PRO
* UVC-NVR


## Links
* [Decompile/compile multidex apk](https://vk.com/@1abcpublic-vzlamyvaem-platnoe-prilozhenie-na-android) (Russian version)
* [Apktool](https://ibotpeaches.github.io/Apktool/)
* [baksmali](https://github.com/JesusFreke/smali)
* [Apk Sign](https://github.com/appium-boneyard/sign)
