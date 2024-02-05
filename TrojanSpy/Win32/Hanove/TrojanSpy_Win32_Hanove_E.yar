
rule TrojanSpy_Win32_Hanove_E{
	meta:
		description = "TrojanSpy:Win32/Hanove.E,SIGNATURE_TYPE_PEHSTR_EXT,09 00 07 00 05 00 00 02 00 "
		
	strings :
		$a_03_0 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e 90 02 10 00 55 70 6c 6f 61 64 65 72 00 90 00 } //02 00 
		$a_01_1 = {5f 53 5a 53 4f 46 54 5f 4d 55 54 45 58 00 } //02 00 
		$a_01_2 = {00 6a 75 70 74 65 72 74 6d 70 2e 74 6d 70 00 } //02 00 
		$a_03_3 = {2f 75 70 6c 6f 2e 70 68 70 00 90 0a 30 00 00 68 74 74 70 3a 2f 2f 90 00 } //01 00 
		$a_01_4 = {2e 64 6f 63 00 00 00 00 2e 64 6f 63 78 00 00 00 2e 78 6c 73 00 00 00 00 2e 78 6c 73 78 00 00 00 2e 70 64 66 } //00 00 
		$a_00_5 = {5d 04 } //00 00 
	condition:
		any of ($a_*)
 
}