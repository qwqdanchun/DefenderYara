
rule TrojanSpy_Win32_ParalaxRat_STA_{
	meta:
		description = "TrojanSpy:Win32/ParalaxRat.STA!!ParalaxRat.STA,SIGNATURE_TYPE_ARHSTR_EXT,06 00 06 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {6a 00 6a 00 6a 34 6a 00 6a 00 6a 00 6a 13 6a 3a ff 75 0c ff 75 08 e8 } //01 00 
		$a_01_1 = {8b 7d fc 89 44 8f fc 2d 04 04 04 04 49 75 f1 } //01 00 
		$a_03_2 = {8a 14 0e 88 14 0f 41 83 f9 20 90 02 20 8a 14 0e 88 14 0f 41 90 00 } //01 00 
		$a_03_3 = {88 14 30 02 ca 90 02 10 8d 64 24 0c 30 0e 90 00 } //01 00 
		$a_01_4 = {8b 75 fc 8a 14 0e 02 04 1f 02 c2 8a 34 06 88 34 0e 88 14 06 5e fe c1 75 } //01 00 
		$a_03_5 = {5f 3b a2 e5 90 02 10 f7 de 22 5a 90 02 10 da 6f ad b7 90 02 10 4a cd 4a f5 90 00 } //01 00 
		$a_03_6 = {bc fa de 5c 90 02 10 a5 52 ef cd 90 02 10 ee 14 de fc 90 02 10 df 73 aa bc 90 00 } //02 00 
		$a_02_7 = {5b 00 43 00 74 00 72 00 6c 00 90 02 ff 5b 00 41 00 6c 00 74 00 90 02 ff 43 00 6c 00 69 00 70 00 62 00 6f 00 61 00 72 00 64 00 20 00 53 00 74 00 61 00 72 00 74 00 90 02 ff 43 00 6c 00 69 00 70 00 62 00 6f 00 61 00 72 00 64 00 20 00 45 00 6e 00 64 00 90 00 } //02 00 
		$a_00_8 = {44 00 65 00 6c 00 65 00 74 00 65 00 46 00 69 00 6c 00 65 00 28 00 57 00 73 00 63 00 72 00 69 00 70 00 74 00 2e 00 53 00 63 00 72 00 69 00 70 00 74 00 46 00 75 00 6c 00 6c 00 4e 00 61 00 6d 00 65 00 29 00 } //00 00 
	condition:
		any of ($a_*)
 
}