
rule TrojanDownloader_Win32_Banload_ZEV{
	meta:
		description = "TrojanDownloader:Win32/Banload.ZEV,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 05 00 00 0a 00 "
		
	strings :
		$a_01_0 = {0f b6 44 30 ff 33 c3 89 45 e4 3b 7d e4 7c 0f 8b 45 e4 05 ff 00 00 00 2b c7 89 45 e4 eb 03 29 7d e4 } //01 00 
		$a_01_1 = {33 36 35 34 41 32 46 33 35 32 38 42 43 38 30 30 31 31 30 46 34 38 35 38 42 38 44 38 43 39 43 42 43 42 33 33 35 30 42 31 45 41 32 41 36 45 41 46 46 45 31 35 } //01 00  3654A2F3528BC800110F4858B8D8C9CBCB3350B1EA2A6EAFFE15
		$a_01_2 = {31 35 31 36 30 31 30 31 31 35 30 31 30 31 31 36 30 31 00 } //01 00 
		$a_01_3 = {30 38 37 38 38 41 38 36 38 45 38 43 38 44 38 42 38 41 38 39 38 46 00 } //01 00 
		$a_01_4 = {23 56 45 52 53 49 4f 4e 2d 41 47 2d 32 2e 30 2e 30 2e 31 } //00 00  #VERSION-AG-2.0.0.1
	condition:
		any of ($a_*)
 
}