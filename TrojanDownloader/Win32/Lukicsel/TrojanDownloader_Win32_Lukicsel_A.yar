
rule TrojanDownloader_Win32_Lukicsel_A{
	meta:
		description = "TrojanDownloader:Win32/Lukicsel.A,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {8b 4d 0c 8b 09 8b 75 08 8b 36 4e a0 90 01 04 30 04 31 e2 fb 90 00 } //01 00 
		$a_01_1 = {83 c0 07 50 8b f0 b4 2f ac 3c 00 74 04 38 e0 75 f7 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_Win32_Lukicsel_A_2{
	meta:
		description = "TrojanDownloader:Win32/Lukicsel.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {42 48 75 f1 e8 90 09 05 00 80 74 11 ff 90 00 } //01 00 
		$a_03_1 = {8a 54 3a ff 80 f2 90 01 01 e8 90 01 04 8b 55 f8 8b c6 90 00 } //01 00 
		$a_01_2 = {66 b9 50 00 8b 55 fc } //00 00 
	condition:
		any of ($a_*)
 
}