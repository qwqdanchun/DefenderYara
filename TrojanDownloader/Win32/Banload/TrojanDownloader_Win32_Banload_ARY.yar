
rule TrojanDownloader_Win32_Banload_ARY{
	meta:
		description = "TrojanDownloader:Win32/Banload.ARY,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 09 00 08 00 00 02 00 "
		
	strings :
		$a_01_0 = {46 eb 05 be 01 00 00 00 8b 45 e8 0f b6 44 30 ff 33 d8 8d 45 cc 50 89 5d d0 c6 45 d4 00 8d 55 d0 } //02 00 
		$a_03_1 = {64 ff 30 64 89 20 8d 55 f8 b8 1c 00 00 00 e8 90 01 04 8b 45 f8 8d 55 fc e8 90 01 04 8b 55 fc 90 00 } //02 00 
		$a_03_2 = {83 f8 03 0f 8e 58 01 00 00 33 c0 55 68 90 01 04 64 ff 30 64 89 20 8d 55 f0 33 c0 e8 90 01 04 8b 45 f0 8d 55 f4 e8 90 00 } //01 00 
		$a_01_3 = {43 4d 44 20 2f 43 20 53 74 61 72 74 20 00 00 00 53 56 81 c4 f8 fe ff ff } //01 00 
		$a_01_4 = {5c 6c 69 62 6d 79 73 71 6c 2e 64 6c 6c 00 } //01 00 
		$a_01_5 = {5c 72 65 73 6f 6c 76 65 72 2e 65 78 65 00 } //01 00 
		$a_01_6 = {5c 75 62 65 72 2e 74 78 74 00 } //01 00 
		$a_01_7 = {5c 61 72 71 75 69 76 6f 2e 74 78 74 00 } //00 00 
	condition:
		any of ($a_*)
 
}