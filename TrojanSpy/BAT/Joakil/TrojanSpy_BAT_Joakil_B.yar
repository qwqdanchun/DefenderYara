
rule TrojanSpy_BAT_Joakil_B{
	meta:
		description = "TrojanSpy:BAT/Joakil.B,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {6a 00 6b 00 6c 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 } //01 00 
		$a_01_1 = {73 00 63 00 72 00 65 00 65 00 6e 00 63 00 61 00 70 00 } //01 00 
		$a_01_2 = {53 00 68 00 75 00 74 00 64 00 6f 00 77 00 6e 00 28 00 47 00 6c 00 6f 00 62 00 61 00 6c 00 29 00 20 00 2d 00 } //01 00 
		$a_01_3 = {48 00 4b 00 45 00 59 00 5f 00 43 00 55 00 52 00 52 00 45 00 4e 00 54 00 5f 00 55 00 53 00 45 00 52 00 5c 00 73 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //01 00 
		$a_01_4 = {2d 00 20 00 42 00 54 00 43 00 57 00 20 00 2d 00 46 00 72 00 6f 00 6d 00 5b 00 } //01 00 
		$a_01_5 = {3c 00 62 00 72 00 3e 00 42 00 61 00 6e 00 6b 00 4c 00 61 00 62 00 65 00 6c 00 3a 00 } //00 00 
		$a_00_6 = {5d 04 00 } //00 0c 
	condition:
		any of ($a_*)
 
}