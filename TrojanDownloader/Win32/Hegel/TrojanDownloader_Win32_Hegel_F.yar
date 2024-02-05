
rule TrojanDownloader_Win32_Hegel_F{
	meta:
		description = "TrojanDownloader:Win32/Hegel.F,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {8b 7d fc 23 c1 8a 44 30 08 30 04 1f } //01 00 
		$a_01_1 = {b8 68 58 4d 56 bb 00 00 00 00 b9 0a 00 00 00 ba 58 56 00 00 ed 81 fb 68 58 4d 56 } //01 00 
		$a_02_2 = {68 65 67 65 6c 69 61 6e 69 7a 65 2e 63 6f 6d 90 02 30 2f 74 61 6b 69 32 2e 70 68 70 90 00 } //01 00 
		$a_02_3 = {68 69 64 3d 25 73 25 73 90 02 10 66 61 6b 65 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}