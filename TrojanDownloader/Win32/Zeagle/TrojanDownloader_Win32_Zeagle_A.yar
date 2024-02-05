
rule TrojanDownloader_Win32_Zeagle_A{
	meta:
		description = "TrojanDownloader:Win32/Zeagle.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {37 30 35 37 37 33 34 30 37 33 34 30 37 30 36 43 36 45 45 32 43 41 31 35 31 38 43 34 35 45 33 36 31 38 41 38 } //01 00 
		$a_01_1 = {38 38 39 39 39 31 38 31 39 31 38 31 37 38 45 39 39 30 39 42 42 39 36 43 44 31 43 38 41 30 33 30 33 35 32 32 46 46 36 35 } //01 00 
		$a_01_2 = {3a 2f 2f 67 6f 6f 2e 67 6c 2f } //01 00 
		$a_03_3 = {ff 68 00 80 00 00 6a 00 8b 45 fc 50 ff 15 90 09 13 00 53 56 6a 90 01 01 8b 45 f8 e8 90 01 03 ff 50 ff d7 e8 90 00 } //00 00 
		$a_00_4 = {87 10 00 } //00 81 
	condition:
		any of ($a_*)
 
}