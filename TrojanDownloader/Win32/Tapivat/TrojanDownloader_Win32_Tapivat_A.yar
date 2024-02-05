
rule TrojanDownloader_Win32_Tapivat_A{
	meta:
		description = "TrojanDownloader:Win32/Tapivat.A,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0a 00 07 00 00 06 00 "
		
	strings :
		$a_03_0 = {68 b3 15 00 00 68 90 01 02 00 10 68 90 01 02 00 10 ff 15 90 01 04 8b 90 03 03 03 d8 81 fb f0 81 fe b3 15 00 00 90 03 05 02 89 75 fc 75 16 75 17 68 90 00 } //03 00 
		$a_01_1 = {c6 45 fc 00 64 a1 18 00 00 00 8b 40 30 80 78 02 00 75 02 eb 04 c6 45 fc 01 8a 45 fc } //03 00 
		$a_01_2 = {b8 68 58 4d 56 bb 00 00 00 00 b9 0a 00 00 00 ba 58 56 00 00 ed 81 fb 68 58 4d 56 0f 94 45 } //01 00 
		$a_00_3 = {53 68 69 65 6c 64 54 68 72 65 61 64 } //01 00 
		$a_00_4 = {41 6e 74 69 52 65 62 6f 6f 74 44 65 6c } //01 00 
		$a_00_5 = {52 65 61 64 4f 6c 64 49 6e 69 46 69 6c 65 } //01 00 
		$a_00_6 = {42 65 67 69 6e 57 6f 72 6b } //00 00 
	condition:
		any of ($a_*)
 
}