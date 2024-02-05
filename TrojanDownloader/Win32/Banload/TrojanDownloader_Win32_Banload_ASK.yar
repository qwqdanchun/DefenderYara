
rule TrojanDownloader_Win32_Banload_ASK{
	meta:
		description = "TrojanDownloader:Win32/Banload.ASK,SIGNATURE_TYPE_PEHSTR_EXT,13 00 13 00 09 00 00 05 00 "
		
	strings :
		$a_03_0 = {c7 85 64 ff ff ff 08 40 00 00 e8 90 01 4e eb 6d 66 8b c8 66 2b 4d 90 01 12 3b cb 7d 3b b9 ff 00 00 00 6a 1e 66 2b 4d 90 00 } //05 00 
		$a_03_1 = {68 34 08 00 00 e8 90 01 12 68 4c 04 00 00 e8 90 01 12 68 b8 0b 00 00 e8 90 01 16 66 83 7d fc 00 75 05 90 00 } //05 00 
		$a_03_2 = {c7 45 fc 03 00 00 00 8b 45 08 83 78 34 00 75 1f 8b 45 08 83 c0 34 50 68 90 01 09 8b 45 08 83 c0 34 89 85 7c ff ff ff eb 0c 8b 45 08 83 c0 34 90 00 } //01 00 
		$a_01_3 = {52 00 45 00 47 00 5f 00 44 00 57 00 4f 00 52 00 44 00 00 00 52 00 65 00 67 00 57 00 72 00 69 00 74 00 65 00 00 00 } //01 00 
		$a_01_4 = {46 00 69 00 65 00 6c 00 64 00 73 00 00 00 00 00 56 00 61 00 6c 00 75 00 65 00 00 00 57 00 72 00 69 00 74 00 65 00 } //01 00 
		$a_01_5 = {43 00 6f 00 6e 00 6e 00 65 00 63 00 74 00 69 00 6f 00 6e 00 53 00 74 00 72 00 69 00 6e 00 67 00 00 00 00 00 4f 00 70 00 65 00 6e 00 00 00 } //01 00 
		$a_01_6 = {53 00 61 00 76 00 65 00 54 00 6f 00 46 00 69 00 6c 00 65 00 } //01 00 
		$a_01_7 = {45 00 78 00 65 00 63 00 75 00 74 00 65 00 00 00 } //01 00 
		$a_01_8 = {53 00 74 00 61 00 74 00 65 00 00 00 43 00 6c 00 6f 00 73 00 65 00 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}