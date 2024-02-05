
rule TrojanDownloader_Win32_Upatre_AX{
	meta:
		description = "TrojanDownloader:Win32/Upatre.AX,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {8b 06 46 3d 64 64 72 65 e0 f6 } //01 00 
		$a_01_1 = {25 73 25 73 00 25 73 5c 25 73 00 6f 70 65 6e } //01 00 
		$a_01_2 = {ad ab 33 c0 66 ad 66 ab 33 c0 ac 66 ab e2 f1 } //01 00 
		$a_01_3 = {50 b0 2d 66 ab b0 53 66 ab b0 50 66 ab 58 04 2f fe c0 66 ab } //00 00 
		$a_00_4 = {5d 04 } //00 00 
	condition:
		any of ($a_*)
 
}