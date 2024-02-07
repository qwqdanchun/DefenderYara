
rule TrojanDownloader_Win32_Banload_BGN{
	meta:
		description = "TrojanDownloader:Win32/Banload.BGN,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {4f 00 4c 00 44 00 2e 00 42 00 41 00 4b 00 } //01 00  OLD.BAK
		$a_01_1 = {70 00 6b 00 62 00 61 00 63 00 6b 00 23 00 } //01 00  pkback#
		$a_01_2 = {64 00 72 00 64 00 72 00 65 00 65 00 } //01 00  drdree
		$a_01_3 = {5c 00 2a 00 2e 00 65 00 78 00 65 00 } //01 00  \*.exe
		$a_03_4 = {64 89 20 b2 01 a1 90 01 04 e8 90 01 04 89 45 f8 8d 4d f4 ba 90 01 04 8b 45 f8 e8 90 01 04 33 c0 5a 59 59 64 89 10 68 90 01 04 8b 45 f8 e8 90 01 04 c3 e9 90 01 04 eb f0 90 00 } //00 00 
		$a_00_5 = {5d 04 00 } //00 f1 
	condition:
		any of ($a_*)
 
}