# ASUS Smart Gesture device (ELANv4) and Keyboard

##Smart Gesture (ELANv4)

**Use ApplePS2SmartTouchpad 4.7 beta 5 kext by EMlyDinEsH**

**Installation:**

**IMPORTANT:** Remove any existing "ApplePS2Controller, VoodooPS2Controller, AppleACPIPS2Nub, ApplePS2Keyboard and old Elan Touchpad kexts if you have already installed from the HDD /L/E or S/L/E.

**PrefPane:** 

This will install a prefPane so you can manage TrackPad configs from Settings

* Unzip **“Install_Trackpad.zip”**

* The folder **"Install Trackpad"** must be on the **desktop**.

* Then drag "install.sh" to Terminal and press "Enter”.

* Restart System

**(Scripts by Masterscript, Kexts and Daemons by Rehabman)**

## Keyboard and Fn Special Keys

Use **ACPIKeyboar** kext by RehabMan's with my custom **SSDT-RMKB.aml** (and rename patches for CLover) configured to delegate keypresses to ELAN's PS/2 driver by EMlyDinEsH
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

