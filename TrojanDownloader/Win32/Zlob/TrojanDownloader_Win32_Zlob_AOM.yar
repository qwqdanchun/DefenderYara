
rule TrojanDownloader_Win32_Zlob_AOM{
	meta:
		description = "TrojanDownloader:Win32/Zlob.AOM,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 05 00 00 04 00 "
		
	strings :
		$a_03_0 = {5f c6 44 24 90 01 01 52 c6 44 24 90 01 01 45 c6 44 24 90 01 01 44 c6 44 24 90 01 01 44 c6 44 24 90 01 01 5f 90 00 } //03 00 
		$a_03_1 = {47 c6 84 24 90 01 01 01 00 00 54 90 09 07 00 c6 84 24 90 01 01 01 00 00 90 00 } //03 00 
		$a_03_2 = {45 88 9c 24 90 01 01 01 00 00 ff d5 90 09 07 00 c6 84 24 90 01 01 01 00 00 90 00 } //02 00 
		$a_01_3 = {2e 64 6c 6c 00 67 65 6f 67 72 61 70 68 79 00 67 6f 74 6f 73 63 68 6f 6f 6c 00 } //01 00  搮汬最潥牧灡票最瑯獯档潯l
		$a_01_4 = {53 65 61 72 63 68 53 63 6f 70 65 73 } //00 00  SearchScopes
	condition:
		any of ($a_*)
 
}