
rule Trojan_Win32_Cinmus_I{
	meta:
		description = "Trojan:Win32/Cinmus.I,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 04 00 00 05 00 "
		
	strings :
		$a_03_0 = {8b 45 fc 40 89 45 fc 8b 45 fc 3b 45 0c 73 90 03 01 01 19 1b 8b 45 fc 8b 4d 08 0f b7 04 41 90 03 05 04 83 f0 90 01 01 35 90 01 04 8b 4d fc 8b 55 10 66 89 04 4a eb 90 03 01 01 d8 d6 90 00 } //05 00 
		$a_03_1 = {66 8b 1c 08 66 81 f3 90 01 02 66 89 19 41 41 4f 75 ef 5b 66 83 24 72 00 90 00 } //01 00 
		$a_01_2 = {81 7d e4 00 00 00 83 74 } //01 00 
		$a_00_3 = {61 63 70 69 64 69 73 6b 2e 70 64 62 00 } //00 00 
	condition:
		any of ($a_*)
 
}