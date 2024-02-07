
rule PUA_Win32_SystemHealer{
	meta:
		description = "PUA:Win32/SystemHealer,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {2f 00 69 00 6e 00 73 00 74 00 3f 00 73 00 69 00 64 00 3d 00 25 00 53 00 49 00 44 00 25 00 26 00 68 00 69 00 64 00 3d 00 25 00 48 00 49 00 44 00 25 00 26 00 6f 00 73 00 3d 00 25 00 } //01 00  /inst?sid=%SID%&hid=%HID%&os=%
		$a_01_1 = {20 00 4d 00 6f 00 6e 00 69 00 74 00 6f 00 72 00 22 00 20 00 2f 00 46 00 20 00 2f 00 52 00 4c 00 20 00 48 00 49 00 47 00 48 00 45 00 53 00 54 00 } //01 00   Monitor" /F /RL HIGHEST
		$a_01_2 = {2e 00 65 00 78 00 65 00 5c 00 22 00 20 00 2d 00 73 00 63 00 61 00 6e 00 22 00 20 00 2f 00 73 00 63 00 20 00 4f 00 4e 00 43 00 45 00 20 00 2f 00 73 00 74 00 20 00 } //01 00  .exe\" -scan" /sc ONCE /st 
		$a_01_3 = {20 00 52 00 75 00 6e 00 20 00 44 00 65 00 6c 00 61 00 79 00 22 00 20 00 2f 00 46 00 20 00 2f 00 52 00 4c 00 20 00 48 00 49 00 47 00 48 00 45 00 53 00 54 00 } //0a 00   Run Delay" /F /RL HIGHEST
		$a_01_4 = {5c 00 77 00 69 00 6e 00 69 00 6e 00 69 00 74 00 2e 00 69 00 6e 00 69 00 } //00 00  \wininit.ini
	condition:
		any of ($a_*)
 
}