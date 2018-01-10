## Battery Stats


* Fixed using custom **SSDT-BATTERY.aml** made by me porting DSDT patch from RehabMan's repo to a SSDT approach. This depends in some Clover's renames in original DSDT (added in config.plist):
	
	* Rename ECOR to XCOR
	
	* Rename SMBX to XMBX
	
	* Rename SMB2 to XMB2
	
	* Rename BIFA to XIFA
	
	* Rename _BIX to XBIX 
	
	* Rename Method SMBR to XMBR but not method calls

	* Rename Method SMBW to XMBW but not method calls
	
	* Rename Method ECSB to XCSB but not method calls
	
	* Rename Method TACH to XACH but not method calls 