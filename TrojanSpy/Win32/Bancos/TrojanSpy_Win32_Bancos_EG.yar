
rule TrojanSpy_Win32_Bancos_EG{
	meta:
		description = "TrojanSpy:Win32/Bancos.EG,SIGNATURE_TYPE_PEHSTR_EXT,19 00 19 00 06 00 00 0a 00 "
		
	strings :
		$a_00_0 = {6d 73 6f 66 66 69 63 65 2e 65 78 65 00 } //0a 00 
		$a_00_1 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //02 00  URLDownloadToFileA
		$a_02_2 = {66 00 75 00 68 00 79 00 2e 00 63 00 61 00 62 00 90 02 0a 65 00 78 00 70 00 61 00 6e 00 64 00 90 00 } //02 00 
		$a_00_3 = {3a 5c 77 69 6e 64 6f 77 73 5c 72 65 63 6f 76 65 72 79 2e 65 78 65 00 } //01 00 
		$a_00_4 = {2f 50 54 54 2f 64 6f 63 73 2f 7e 2f 62 6f 62 6f 2e 62 6d 70 } //01 00  /PTT/docs/~/bobo.bmp
		$a_00_5 = {63 61 6d 69 6e 68 6f 44 65 73 74 69 6e 6f 00 } //00 00 
	condition:
		any of ($a_*)
 
}