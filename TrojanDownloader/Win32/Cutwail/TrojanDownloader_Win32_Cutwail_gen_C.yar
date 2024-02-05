
rule TrojanDownloader_Win32_Cutwail_gen_C{
	meta:
		description = "TrojanDownloader:Win32/Cutwail.gen!C,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {8b 45 08 64 8b 78 01 33 c0 83 e8 02 c9 c2 04 00 } //01 00 
		$a_03_1 = {c1 eb 02 8d b7 90 01 04 8b 14 1e 81 ea 90 01 04 2b fa c2 04 00 cc cc cc cc 90 00 } //01 00 
		$a_01_2 = {c3 8d 47 30 8b 04 08 8b 40 0c 8b 40 1c 8b 00 8b 40 08 c3 } //01 00 
		$a_03_3 = {c1 e2 02 8d 88 90 01 04 8b 1c 11 03 ca 83 eb 28 8d 95 90 01 04 03 55 e4 89 1a 83 e9 04 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_Win32_Cutwail_gen_C_2{
	meta:
		description = "TrojanDownloader:Win32/Cutwail.gen!C,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 0b 00 00 02 00 "
		
	strings :
		$a_01_0 = {31 03 83 e9 04 7e 14 8d 3c 32 03 c7 03 45 fc } //01 00 
		$a_01_1 = {5e ff d0 56 c3 } //02 00 
		$a_01_2 = {8b 84 0f 3c f4 ff ff 8b 40 0c 8b 40 1c 8b 00 } //01 00 
		$a_00_3 = {6c 64 72 74 79 70 65 00 } //01 00 
		$a_00_4 = {6c 64 72 76 65 72 00 } //01 00 
		$a_00_5 = {62 6f 74 73 74 61 74 75 73 00 } //01 00 
		$a_01_6 = {81 3a 43 6d 64 4c 75 14 8b 45 f4 81 78 04 69 6e 65 3a } //01 00 
		$a_01_7 = {81 7d f8 45 4e 44 2e 74 14 } //01 00 
		$a_01_8 = {88 51 03 8b 45 08 03 45 fc 0f b6 48 01 83 f1 } //01 00 
		$a_01_9 = {0f be 51 01 83 fa 6e 75 } //01 00 
		$a_03_10 = {8b 48 50 51 8b 55 90 01 01 8b 42 34 50 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}