DefinitionBlock("", "SSDT", 2, "hack", "RMKB", 0)
{
    Device (RMKB)
    {
        Name(_HID, "RMKB0000")
    }
    
    External(_SB.PCI0.LPCB.EC0, DeviceObj)
    
    Scope(_SB.PCI0.LPCB.EC0)
    {        
        Method (_Q0A, 0, NotSerialized)  // _Qxx: EC Query Fn + F1 Sleep (Not working Properly - Disabled)
        {
            // Sleep (Not working Properly - Disabled)
        }

/*      
        Method (_Q0B, 0, NotSerialized)  // _Qxx: EC Query Fn + F2 Wireless Toggle (Not in AppleKeyboard)
        {
            // Wireless Toggle (Not in AppleKeyboard)
        }
*/        
        
/*        
        Method (_Q0C, 0, NotSerialized)  // _Qxx: EC Query Fn + F3 Undefined
        {
            // Undefined
        }
*/        
        
/*        
        Method (_Q0D, 0, NotSerialized)  // _Qxx: EC Query Fn + F4 Undefined
        {
            // Undefined
        }
*/        
        
        Method (_Q0E, 0, NotSerialized)  // _Qxx: EC Query Fn + F5  Brightness Down
        {
            // Brightness Down
            Notify(\RMKB, 0x114f)
            Notify(\RMKB, 0x124f)
        }
        
        Method (_Q0F, 0, NotSerialized)  // _Qxx: EC Query Fn + F6  Brightness Up
        {
            // Brightness Down
            Notify(\RMKB, 0x114d)
            Notify(\RMKB, 0x124d)
        }
        
/*        
         Method (_Q10, 0, NotSerialized)  // _Qxx: EC Query Fn + F7  Screen On/Off Works with ELAN PS2 Driver
        {
            // Screen On/Off Works with ELAN PS2 Driver
        }
*/

        Method (_Q11, 0, NotSerialized)  // _Qxx: EC Query Fn + F8 Vid Mirror
        {
            // Vid Mirror
            Notify(\RMKB, 0x1150)
            Notify(\RMKB, 0x1250)
        }
        
/*        
        Method (_Q12, 0, NotSerialized)  // _Qxx: EC Query Fn + F9 TrackPad On/Off (Not implemented in ACPI Keyboard Kext)
        {
            // TrackPad On/Off (Not implemented in ACPI Keyboard Kext)
        }
*/      
        
        Method (_Q6C, 0, NotSerialized)  // _Qxx: EC Query Fn + Arrow Left Media Previous
        {
            // Media Previous
            Notify(\RMKB, 0x1146)
            Notify(\RMKB, 0x1246)
        }
        
        Method (_Q6D, 0, NotSerialized)  // _Qxx: EC Query Fn + Arrow Right Media Next
        {
            // Media Next
            Notify(\RMKB, 0x1144)
            Notify(\RMKB, 0x1244)
        }
        
/*
        Method (_Q6E, 0, NotSerialized)  // _Qxx: EC Query Fn + Arrow Up Media Stop (No Media Stop on AppleKeyboard)
        {
            // Media Stop (No Media Stop on AppleKeyboard)
        }
*/
        
        Method (_Q6F, 0, NotSerialized)  // _Qxx: EC Query Fn + Arrow Down Media Play/Pause
        {
            // Media Media Play/Pause
            Notify(\RMKB, 0x1142)
            Notify(\RMKB, 0x1242)
        }
        
/*
        Method (_Q71, 0, NotSerialized)  // _Qxx: EC Query Fn + Space Bar (Nothing in AppleKeyboard)
        {
            // Fn + Space Bar (Nothing in AppleKeyboard)
        }
*/

/*
        Method (_Q72, 0, NotSerialized)  // _Qxx: EC Query Fn + C (Nothing in AppleKeyboard)
        {
            // Fn + C (Nothing in AppleKeyboard)
        }
*/

/*
        Method (_Q74, 0, NotSerialized)  // _Qxx: EC Query Fn + V (Nothing in AppleKeyboard)
        {
            // Fn + V (Nothing in AppleKeyboard)
        }
*/

/*
        Method (_Q77, 0, NotSerialized)  // _Qxx: EC Query Fn + Keypad's Intro (Nothing in AppleKeyboard - Calculator on ASUS KB)
        {
            // Fn + Keypad's Intro (Nothing in AppleKeyboard - Calculator on ASUS KB)        
        }
*/

        Method (_QEC, 0, NotSerialized)  // _Qxx: EC Query Left Assignable Button (Nothing in AppleKeyboard)
        {
            // Left Assignable Button (Nothing in AppleKeyboard)
            // Use it for MUTE
            Notify(\RMKB, 0x114a)
            Notify(\RMKB, 0x124a)
        }
    }
}