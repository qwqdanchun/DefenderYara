
rule TrojanDownloader_Win32_Dalexis_A{
	meta:
		description = "TrojanDownloader:Win32/Dalexis.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 02 00 "
		
	strings :
		$a_00_0 = {47 00 45 00 54 00 00 00 25 00 73 00 75 00 70 00 64 00 61 00 74 00 65 00 5f 00 25 00 64 00 2e 00 65 00 78 00 65 00 } //02 00 
		$a_00_1 = {25 00 73 00 74 00 65 00 6d 00 70 00 5f 00 63 00 61 00 62 00 5f 00 25 00 64 00 2e 00 63 00 61 00 62 00 } //01 00  %stemp_cab_%d.cab
		$a_03_2 = {6a 01 68 00 00 00 40 8d 85 90 01 04 50 89 90 01 02 ff 15 90 01 04 8b 90 01 01 83 90 01 01 ff 75 0a 68 ea 03 00 00 90 00 } //01 00 
		$a_03_3 = {6a 01 68 00 00 00 40 8d 85 90 01 04 50 89 5d 90 01 01 ff 15 90 01 04 89 45 90 01 01 83 f8 ff 75 0a 68 ea 03 00 00 e9 90 01 04 53 90 00 } //00 00 
		$a_00_4 = {7e 15 00 } //00 0f 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_Win32_Dalexis_A_2{
	meta:
		description = "TrojanDownloader:Win32/Dalexis.A,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {00 00 47 00 45 00 54 00 00 00 25 00 73 00 75 00 70 00 64 00 61 00 74 00 65 00 5f 00 25 00 64 00 2e 00 } //01 00 
		$a_01_1 = {25 00 73 00 74 00 65 00 6d 00 70 00 5f 00 63 00 61 00 62 00 5f 00 25 00 64 00 2e 00 63 00 61 00 62 00 00 00 } //01 00 
		$a_01_2 = {83 c4 14 57 68 80 00 00 00 6a 02 57 6a 01 68 00 00 00 40 } //00 00 
		$a_01_3 = {00 67 } //16 00  最
	condition:
		any of ($a_*)
 
}