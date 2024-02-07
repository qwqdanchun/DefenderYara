
rule Worm_Win32_Dorkbot_AZ{
	meta:
		description = "Worm:Win32/Dorkbot.AZ,SIGNATURE_TYPE_PEHSTR_EXT,08 00 05 00 06 00 00 03 00 "
		
	strings :
		$a_03_0 = {8b 06 89 18 47 8b c7 6b c0 14 39 98 90 01 04 75 90 00 } //03 00 
		$a_03_1 = {8a 1c 06 32 da 32 1d 90 01 04 fe c2 88 18 40 3a d1 72 ec 90 00 } //01 00 
		$a_01_2 = {28 00 66 00 61 00 63 00 65 00 70 00 61 00 6c 00 6d 00 29 00 } //01 00  (facepalm)
		$a_00_3 = {6c 00 61 00 72 00 61 00 77 00 61 00 6e 00 67 00 20 00 69 00 74 00 6f 00 } //01 00  larawang ito
		$a_00_4 = {64 00 65 00 74 00 74 00 61 00 20 00 66 00 6f 00 74 00 6f 00 } //01 00  detta foto
		$a_00_5 = {74 00 68 00 69 00 73 00 20 00 70 00 68 00 6f 00 74 00 6f 00 } //00 00  this photo
	condition:
		any of ($a_*)
 
}