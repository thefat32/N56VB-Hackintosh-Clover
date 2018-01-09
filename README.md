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

* **Battery Stats:** Fixed by patching DSDT with **battery_ASUS-N55SL.txt** from RehabMan's Laptop-DSDT-Patch repo

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

### Not Working:

* **Bluetooth:** There is no kext for our chip version (MacOS will recognize it but you will never get to use it -our chip needs certain FW download that is not implemented in kexts-)