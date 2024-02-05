
rule TrojanSpy_Win32_Reklode_A{
	meta:
		description = "TrojanSpy:Win32/Reklode.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {5b 00 43 00 6f 00 6d 00 70 00 75 00 74 00 65 00 72 00 20 00 4e 00 61 00 6d 00 65 00 3a 00 } //01 00 
		$a_00_1 = {73 00 79 00 73 00 6c 00 67 00 6c 00 2e 00 6b 00 67 00 } //01 00 
		$a_00_2 = {5f 00 23 00 57 00 4d 00 77 00 61 00 72 00 65 00 56 00 69 00 72 00 74 00 75 00 61 00 6c 00 50 00 72 00 69 00 6e 00 74 00 65 00 72 00 } //01 00 
		$a_00_3 = {23 00 20 00 43 00 6c 00 65 00 72 00 6b 00 20 00 34 00 2e 00 30 00 2e 00 31 00 55 00 20 00 4c 00 6f 00 67 00 20 00 66 00 69 00 6c 00 65 00 } //01 00 
		$a_01_4 = {55 73 65 72 2d 41 67 65 6e 74 3a 20 41 70 70 6c 65 20 54 56 20 35 2e 30 } //00 00 
	condition:
		any of ($a_*)
 
}