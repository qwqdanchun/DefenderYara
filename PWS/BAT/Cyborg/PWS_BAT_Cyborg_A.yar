
rule PWS_BAT_Cyborg_A{
	meta:
		description = "PWS:BAT/Cyborg.A,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {50 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 73 00 20 00 72 00 65 00 63 00 6f 00 76 00 65 00 72 00 65 00 64 00 20 00 66 00 72 00 6f 00 6d 00 20 00 43 00 79 00 62 00 6f 00 72 00 67 00 20 00 76 00 } //01 00 
		$a_01_1 = {3a 00 2d 00 3a 00 2d 00 3a 00 20 00 4c 00 6f 00 67 00 20 00 66 00 72 00 6f 00 6d 00 } //01 00 
		$a_01_2 = {3a 00 2d 00 3a 00 2d 00 3a 00 20 00 43 00 6c 00 69 00 70 00 62 00 6f 00 61 00 72 00 64 00 20 00 54 00 65 00 78 00 74 00 20 00 48 00 69 00 73 00 74 00 6f 00 72 00 79 00 20 00 66 00 72 00 6f 00 6d 00 } //00 00 
		$a_01_3 = {00 67 } //16 00 
	condition:
		any of ($a_*)
 
}