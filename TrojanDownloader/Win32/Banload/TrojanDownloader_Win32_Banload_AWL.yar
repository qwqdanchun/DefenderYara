
rule TrojanDownloader_Win32_Banload_AWL{
	meta:
		description = "TrojanDownloader:Win32/Banload.AWL,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {64 89 20 33 c9 b2 01 a1 90 01 04 e8 90 01 04 8b d8 33 c0 55 68 90 01 04 64 ff 30 64 89 20 ba 90 01 04 8b c3 8b 08 ff 51 30 8d 45 fc b9 90 01 04 8b 15 90 00 } //01 00 
		$a_03_1 = {8b 45 f8 8d 55 fc e8 90 01 04 8b 55 fc b8 90 01 04 e8 90 01 04 b8 90 01 04 b9 90 01 04 8b 15 90 01 04 e8 90 01 04 b8 90 01 04 b9 90 01 04 8b 15 90 00 } //01 00 
		$a_03_2 = {84 c0 74 73 a1 90 01 04 e8 90 01 04 84 c0 74 05 e8 90 09 10 00 8b 15 90 01 04 b8 90 01 04 e8 90 00 } //00 00 
		$a_00_3 = {78 f9 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_Win32_Banload_AWL_2{
	meta:
		description = "TrojanDownloader:Win32/Banload.AWL,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 09 00 00 02 00 "
		
	strings :
		$a_02_0 = {76 61 69 6f 73 2a 00 90 02 20 2e 7a 69 70 90 00 } //02 00 
		$a_02_1 = {6d 65 6c 68 6f 72 2a 00 90 02 20 2e 7a 69 70 90 00 } //02 00 
		$a_02_2 = {00 31 32 33 34 35 36 37 38 39 00 90 02 10 5c 90 02 10 2e 7a 69 70 90 00 } //02 00 
		$a_02_3 = {76 61 69 6f 31 30 31 30 90 02 20 2e 7a 69 70 90 00 } //02 00 
		$a_02_4 = {64 6f 73 38 35 36 34 37 90 02 20 2e 7a 69 70 90 00 } //02 00 
		$a_02_5 = {5c 6c 69 62 6d 79 73 71 6c 2e 64 6c 6c 90 0a 20 00 2e 90 03 03 03 65 78 65 63 70 6c 90 00 } //02 00 
		$a_02_6 = {5c 6c 65 74 73 6f 77 90 02 05 2e 65 78 65 00 90 00 } //01 00 
		$a_00_7 = {43 4d 44 20 2f 43 20 53 74 61 72 74 } //02 00  CMD /C Start
		$a_03_8 = {64 89 20 33 c9 b2 01 a1 90 01 04 e8 90 01 04 8b d8 33 c0 55 68 90 01 04 64 ff 30 64 89 20 ba 90 01 04 8b c3 8b 08 ff 51 30 8d 45 fc b9 90 01 04 8b 15 90 00 } //00 00 
		$a_00_9 = {80 10 00 } //00 2a 
	condition:
		any of ($a_*)
 
}