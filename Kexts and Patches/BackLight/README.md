## Backlight Control

**Implemented using new RehabMan guide for Sierra 10.12.4+ (PLFN hot patch into Clover’s ACPI folder + BacklightInjector kext)**

### Install:

* **BacklightInjector** kext by RehabMan

* **SSDT-PNLF.aml** in CLOVER/ACPI/patched

* **Patch “backlight_patch.plist”** for AppleBacklight in CLOVER’s config.plist/KernelAndKextPatches/KextsToPatch by RehabMan

NOTE: Provided CLOVERS’s folder in this repo already has SSDT-PNLF.aml in CLOVER/ACPI/patched and “backlight_patch.plist” for AppleBacklight applied in config.plist
