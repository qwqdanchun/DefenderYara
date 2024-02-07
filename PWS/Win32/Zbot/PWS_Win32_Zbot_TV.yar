
rule PWS_Win32_Zbot_TV{
	meta:
		description = "PWS:Win32/Zbot.TV,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {8b 04 88 66 83 38 2d 0f 85 90 01 04 8d 78 02 6a 3a 57 ff 15 90 01 04 80 7d 14 00 90 00 } //01 00 
		$a_03_1 = {6a 05 58 6a 04 66 89 45 90 01 01 58 53 66 89 45 90 01 01 6a 05 8d 45 90 01 01 50 57 c6 45 90 01 01 02 ff d6 83 f8 05 90 00 } //01 00 
		$a_01_2 = {42 00 61 00 63 00 6b 00 63 00 6f 00 6e 00 6e 00 65 00 63 00 74 00 20 00 53 00 65 00 72 00 76 00 65 00 72 00 } //00 00  Backconnect Server
	condition:
		any of ($a_*)
 
}