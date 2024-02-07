
rule TrojanDownloader_Win32_Redosdru_N_bit{
	meta:
		description = "TrojanDownloader:Win32/Redosdru.N!bit,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {8b 55 ec 80 04 11 90 01 01 8b 55 ec 80 34 11 90 01 01 41 3b c8 7c ed 90 00 } //01 00 
		$a_01_1 = {c6 44 24 27 2f c6 44 24 28 34 c6 44 24 29 2e c6 44 24 2a 30 } //01 00 
		$a_01_2 = {c6 44 24 0c 4b c6 44 24 0d 6f c6 44 24 0e 74 c6 44 24 0f 68 c6 44 24 10 65 } //01 00 
		$a_03_3 = {4b c6 44 24 90 01 01 6f c6 44 24 90 01 01 74 c6 44 24 90 01 01 68 c6 44 24 90 01 01 65 c6 44 24 90 01 01 72 c6 44 24 90 01 01 35 90 00 } //00 00 
		$a_00_4 = {5d 04 } //00 00  ѝ
	condition:
		any of ($a_*)
 
}