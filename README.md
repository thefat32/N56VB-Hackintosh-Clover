# N56VB-Hackintosh (10.12.6)

## This Repo Contains proper kexts and other miscelaneous to run MacOS Sierra in a N56VB (Intel HM76)

### Usage:

Install provided Kexts and other miscelaneous and use provided CLOVER folder.

### Working:

* **Audio:** VoodooHDA 2.9.0d10 + AppleHDADisabler by Slice, Zenith432

* **Graphics** (HD4000): Clovers’s HD4000 config by RehabMan with GFX0 to IGPU rename

* **Trackpad:** ApplePS2SmartTouchpad 4.7 beta 5 by EMlyDinEsH and PrefPane (Scripts by Masterscript, Kexts and Daemons by Rehabman)

* **Wifi:** IO80211Family kext with patched AirPort.Atheros40 by chunnann. **NOTE: Some mixed bgn routers don’t work**

* **EthernetLAN:** AtherosE2200Ethernet kext by Mieze

* **BackLigth:** Implemented using new RehabMan guide for Sierra 10.12.4+ (**PNLF hot patch (SSDT-PNLF.aml) into Clover’s ACPI folder** + **BacklightInjector kext** + **patch for AppleBacklight in config.plist/KernelAndKextPatches/KextsToPatch**)

* **Battery Stats:** Fixed using custom **SSDT-BATTERY.aml** made by me porting DSDT patch from RehabMan's repo to a SSDT approach. This depends in some Clover's renames in original DSDT (added in config.plist):
	
	* Rename ECOR to XCOR
	
	* Rename SMBX to XMBX
	
	* Rename SMB2 to XMB2
	
	* Rename BIFA to XIFA
	
	* Rename _BIX to XBIX 
	
	* Rename Method SMBR to XMBR but not method calls

	* Rename Method SMBW to XMBW but not method calls
	
	* Rename Method ECSB to XCSB but not method calls
	
	* Rename Method TACH to XACH but not method calls 

* **USB:** 
	* **Internal 2.0 HUB (USB Webcam and USB Bluetooth)** need **USBInjectAll** Kext by RehabMan with custom **SSDT-UIAC.aml** in CLOVER/ACPI/patched and renaming EHC1 to EH01 and EHC2 to EH02 (Clover Rename Patch)
 
	* **USB 3.0 Port:** Work with native Apple drivers by renming XHC1 to XH01 and XHCI to XHC_ in DSDT (Clover Rename Patch)

* **SMBUS:** Inject the missing DVL0 device using SSDT-SMBUS.dsl hotpatch from RehabMan's repo

* **Power Managment:** Use **SSDT-PM.aml** generated with **ssdtPRGen.sh** by Piker-Alpha following RehabMan's native PM guide. Also enable **AppleIntelCPUPM=true** and **KernelLapic=true**

**NOTE: Recomended to run these to disable hibernation and prevent problems (RehabMan's reccomendation)**

```bash
sudo pmset -a hibernatemode 0
sudo rm /var/vm/sleepimage
sudo mkdir /var/vm/sleepimage
sudo pmset -a standby 0
sudo pmset -a autopoweroff 0
```

* **Internal Fan Speed:** Use **SSDT-FAN.aml** compiled from original black.dragon74's file

* **Hotpatch Config SSDT:** **SSDT-Config.aml**

* **Keyboard Fn Keys:** Use **ACPIKeyboar** kext by RehabMan's with my custom **SSDT-RMKB.aml** (and rename patches for CLover) configured to delegate keypresses to ELAN's PS/2 driver by EMlyDinEsH
	* List of Special Keys and state:
		* Fn + F1 Sleep:  EC _Q0A - Disabled because bad functioning
		* Fn + F2 Wireless:  EC _Q0B - Not in AppleKeyboard
		* Fn + F3: EC _Q0C - Undefined
		* Fn + F4: EC _Q0D - Undefined
		* Fn + F5 Brigth Down: EC _Q0E
		* Fn + F6 Brigth Up: EC _Q0F
		* Fn + F7 Screen Off/On: EC _Q10 - Not patched working properly with ELAN driver
		* Fn + F8 Video Mirror: EC _Q11
		* Fn + F9 TrackPad On/Off: EC _Q12 - Not in AppleKeyboard
		* Fn + Arrow Left(Media Previous): EC _Q6C
		* Fn + Arrow Right(Media Next): EC _Q6D
		* Fn + Arrow Up(Media Stop): EC _Q6E - Not in AppleKeyboard
		* Fn + Arrow Down(Media Pause/Play): EC _Q6F
		* Fn + Space Bar: EC _Q71 - Not in AppleKeyboard
		* Fn + C Letter: EC _Q72 - Not in AppleKeyboard
		* Fn + V Letter(Camera): EC _Q74 - Not in AppleKeyboard
		* Fn + Numpad's Intro(Calc): EC _Q77 - Not in AppleKeyboard
		* Left Assignable Button Button: EC _QEC - Assigned to MUTE



### Not Working:

* **Bluetooth:** There is no kext for our chip version (MacOS will recognize it but you will never get to use it -our chip needs certain FW download that is not implemented in kexts-)

## Miscelaneous

* **OSI Check:** use _OSI to XOSI rename in Clover with RehabMan's **SSDT-XOSI.aml** from hotpach repo 