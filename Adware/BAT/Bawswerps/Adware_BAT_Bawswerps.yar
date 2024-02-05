
rule Adware_BAT_Bawswerps{
	meta:
		description = "Adware:BAT/Bawswerps,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {24 61 34 61 33 61 64 33 39 2d 38 34 66 30 2d 34 33 39 38 2d 38 30 62 62 2d 30 32 61 63 32 65 61 36 32 36 65 65 } //01 00 
		$a_01_1 = {42 72 6f 77 73 65 72 50 6c 61 79 65 72 2e 42 72 6f 77 73 65 72 2e 72 65 73 6f 75 72 63 65 73 } //01 00 
		$a_01_2 = {42 72 6f 77 73 65 72 50 6c 61 79 65 72 2e 4d 61 69 6e 43 6c 61 73 73 2e 72 65 73 6f 75 72 63 65 73 } //01 00 
		$a_01_3 = {42 72 6f 77 73 65 72 50 6c 61 79 65 72 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //01 00 
		$a_01_4 = {42 72 6f 77 73 65 72 57 65 62 } //00 00 
		$a_00_5 = {60 11 00 } //00 26 
	condition:
		any of ($a_*)
 
}