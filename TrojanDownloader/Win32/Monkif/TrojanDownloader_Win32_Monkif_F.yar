
rule TrojanDownloader_Win32_Monkif_F{
	meta:
		description = "TrojanDownloader:Win32/Monkif.F,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 07 00 00 02 00 "
		
	strings :
		$a_03_0 = {bc 00 00 00 75 90 01 01 c7 05 90 01 04 78 1c 00 00 eb 90 00 } //02 00 
		$a_03_1 = {00 02 00 00 74 de 81 3d 90 01 04 01 02 00 00 74 d2 90 00 } //02 00 
		$a_01_2 = {c6 45 f4 4c c6 45 f5 6f c6 45 f6 63 c6 45 f7 61 c6 45 f8 6c c6 45 f9 5c c6 45 fa 55 c6 45 fb 49 c6 45 fc 45 c6 45 fd 49 } //01 00 
		$a_01_3 = {ff 45 fc 8b 45 fc 6b c0 60 8d 34 18 33 ff 39 3e 75 cd } //01 00 
		$a_00_4 = {25 73 25 73 2e 70 68 70 3f 25 73 3d 25 73 00 } //01 00 
		$a_01_5 = {25 75 7c 25 75 7c 25 75 7c 25 75 7c 25 75 7c 25 75 00 } //01 00 
		$a_01_6 = {2f 62 61 62 79 6c 6f 6e 2f 00 } //00 00 
	condition:
		any of ($a_*)
 
}