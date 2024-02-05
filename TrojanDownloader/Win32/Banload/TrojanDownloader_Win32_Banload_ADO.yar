
rule TrojanDownloader_Win32_Banload_ADO{
	meta:
		description = "TrojanDownloader:Win32/Banload.ADO,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {2a 2e 2a 00 90 02 10 2e 64 62 78 00 90 02 10 2e 77 61 62 00 90 02 10 2e 6d 62 78 00 90 02 10 2e 6d 61 69 00 90 02 10 2e 65 6d 6c 00 90 02 10 2e 74 62 62 00 90 02 10 2e 6d 62 6f 78 00 90 00 } //01 00 
		$a_03_1 = {c3 00 2f 63 20 64 65 6c 02 30 00 20 3e 3e 20 4e 55 4c 90 02 04 43 6f 6d 53 70 65 63 00 90 00 } //01 00 
		$a_01_2 = {45 78 74 72 61 63 74 45 6d 61 69 6c 73 46 75 6e 63 00 } //01 00 
		$a_03_3 = {50 6c 75 67 69 6e 20 90 02 05 65 6e 63 6f 6e 74 72 61 64 6f 00 90 00 } //01 00 
		$a_02_4 = {53 56 57 55 51 89 14 24 8b f8 8b c7 e8 90 01 03 ff 8b d8 e8 90 01 03 ff 8b f0 0f b6 c3 8b 6c 87 04 eb 03 8b 6d 00 85 ed 74 05 3b 75 04 75 f4 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}