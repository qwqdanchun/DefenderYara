
rule Trojan_Win32_Zbot_AZ_MTB{
	meta:
		description = "Trojan:Win32/Zbot.AZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 04 00 00 02 00 "
		
	strings :
		$a_01_0 = {55 4c 47 47 50 71 54 44 44 00 00 00 43 41 74 55 56 6e 65 4a 44 00 00 00 73 55 53 4a 77 69 00 00 6f 66 77 46 7a 58 00 00 73 6c 73 6a 7a 47 4f 4b } //02 00 
		$a_01_1 = {6d 4a 44 78 64 59 70 43 59 00 00 00 68 77 4c 4b 79 66 00 00 55 56 63 6f 4f 67 61 58 00 00 00 00 74 5a 4a 53 45 4b 56 77 46 00 00 00 46 69 66 44 64 70 50 73 62 00 00 00 67 68 4f 4c 48 72 } //01 00 
		$a_01_2 = {44 4a 64 52 6b 5a 49 4c 55 } //01 00  DJdRkZILU
		$a_01_3 = {4f 76 64 54 62 56 45 43 56 } //00 00  OvdTbVECV
	condition:
		any of ($a_*)
 
}