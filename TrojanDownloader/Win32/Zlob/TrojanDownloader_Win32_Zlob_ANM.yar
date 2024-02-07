
rule TrojanDownloader_Win32_Zlob_ANM{
	meta:
		description = "TrojanDownloader:Win32/Zlob.ANM,SIGNATURE_TYPE_PEHSTR_EXT,04 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {80 c3 64 8d 50 01 8d 49 00 8a 08 40 84 c9 75 f9 2b c2 48 78 18 81 ee 90 01 02 40 00 8a 8c 06 90 01 02 40 00 32 cb 48 88 88 90 01 02 40 00 79 ee 90 00 } //01 00 
		$a_03_1 = {43 72 65 00 4f eb 90 09 0c 00 c7 44 24 90 01 01 44 00 00 00 c7 44 24 90 00 } //01 00 
		$a_01_2 = {00 73 74 65 72 65 6f 00 } //01 00  猀整敲o
		$a_01_3 = {78 00 65 00 00 00 00 00 2e 00 25 00 73 00 25 00 73 00 00 00 25 00 64 00 00 00 00 00 25 00 73 00 5c 00 25 00 73 00 } //00 00 
	condition:
		any of ($a_*)
 
}