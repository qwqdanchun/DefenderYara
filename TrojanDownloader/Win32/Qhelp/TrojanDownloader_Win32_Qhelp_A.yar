
rule TrojanDownloader_Win32_Qhelp_A{
	meta:
		description = "TrojanDownloader:Win32/Qhelp.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_00_0 = {4d 69 63 72 6f 73 6f 66 74 20 56 69 73 75 61 6c 20 43 2b 2b 20 52 75 6e 74 69 6d 65 20 4c 69 62 72 61 72 79 } //01 00 
		$a_00_1 = {70 62 71 63 2e 63 6f 6d 2f 66 32 2f 75 70 2e 64 61 74 3f } //01 00 
		$a_00_2 = {51 71 48 65 6c 70 65 72 4a 2e 64 6c 6c } //01 00 
		$a_00_3 = {53 6f 66 74 77 61 72 65 5c 41 64 6f 62 65 } //01 00 
		$a_01_4 = {49 6e 74 65 72 6e 65 74 4f 70 65 6e 55 72 6c 41 } //01 00 
		$a_00_5 = {48 74 74 70 51 75 65 72 79 49 6e 66 6f 41 } //00 00 
	condition:
		any of ($a_*)
 
}