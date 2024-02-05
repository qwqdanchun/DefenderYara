
rule TrojanDownloader_Win32_Cefunlor_A{
	meta:
		description = "TrojanDownloader:Win32/Cefunlor.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {8b 47 1c ba 00 00 01 00 e8 90 01 04 c7 47 10 90 90 5f 01 00 8d 47 08 ba 90 01 04 e8 90 00 } //01 00 
		$a_03_1 = {69 6e 66 5f 66 61 63 65 5f 63 75 90 01 01 2e 6a 70 67 90 00 } //01 00 
		$a_01_2 = {7a 61 79 62 78 6a 6b 71 72 63 6c 6d 77 6e 6f 70 64 74 75 73 74 65 66 67 68 69 75 76 } //00 00 
	condition:
		any of ($a_*)
 
}