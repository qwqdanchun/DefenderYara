
rule TrojanDownloader_Win32_Renos_FL{
	meta:
		description = "TrojanDownloader:Win32/Renos.FL,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 08 00 00 01 00 "
		
	strings :
		$a_03_0 = {68 58 4d 56 c7 85 90 01 02 ff ff 58 56 00 00 90 00 } //01 00 
		$a_01_1 = {b8 4f 00 00 00 cd 41 66 3d 86 f3 0f 94 c0 } //01 00 
		$a_01_2 = {33 c0 50 0f 01 4c 24 fe 58 c3 } //01 00 
		$a_03_3 = {77 0a 81 7c 24 90 01 01 00 00 00 80 73 90 00 } //01 00 
		$a_03_4 = {3d 00 00 00 d0 90 02 0a 77 07 3d 00 00 00 80 73 06 90 00 } //02 00 
		$a_03_5 = {6a 0c 50 68 00 14 2d 00 ff 75 90 01 01 ff 15 90 01 02 40 00 90 00 } //02 00 
		$a_03_6 = {85 c0 75 57 83 c6 07 81 fe 90 01 02 40 00 0f 90 01 02 ff ff ff 90 00 } //02 00 
		$a_03_7 = {8a 8c 05 d0 fd ff ff 81 f1 90 01 04 88 0c 30 40 eb 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}