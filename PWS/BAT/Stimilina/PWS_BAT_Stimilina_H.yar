
rule PWS_BAT_Stimilina_H{
	meta:
		description = "PWS:BAT/Stimilina.H,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_03_0 = {5c 00 53 00 74 00 65 00 61 00 6d 00 2e 00 65 00 78 00 65 00 90 01 02 5c 00 64 00 72 00 69 00 76 00 65 00 72 00 73 00 5c 00 65 00 74 00 63 00 5c 00 68 00 6f 00 73 00 74 00 73 00 90 00 } //01 00 
		$a_01_1 = {31 00 32 00 37 00 2e 00 30 00 2e 00 30 00 2e 00 31 00 20 00 73 00 74 00 65 00 61 00 6d 00 63 00 6f 00 6d 00 6d 00 75 00 6e 00 69 00 74 00 79 00 2e 00 63 00 6f 00 6d 00 } //01 00 
		$a_01_2 = {31 00 32 00 37 00 2e 00 30 00 2e 00 30 00 2e 00 31 00 20 00 79 00 61 00 6e 00 64 00 65 00 78 00 2e 00 72 00 75 00 } //01 00 
		$a_03_3 = {6c 00 6f 00 67 00 69 00 6e 00 73 00 90 01 02 6f 00 72 00 69 00 67 00 69 00 6e 00 5f 00 75 00 72 00 6c 00 90 02 60 75 00 73 00 65 00 72 00 6e 00 61 00 6d 00 65 00 5f 00 76 00 61 00 6c 00 75 00 65 00 90 01 02 70 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 5f 00 76 00 61 00 6c 00 75 00 65 00 90 00 } //01 00 
		$a_01_4 = {2f 00 64 00 61 00 74 00 61 00 2f 00 65 00 6e 00 74 00 72 00 79 00 2f 00 64 00 61 00 74 00 61 00 2e 00 70 00 68 00 70 00 } //01 00 
		$a_01_5 = {5c 00 4f 00 70 00 65 00 72 00 61 00 5c 00 77 00 61 00 6e 00 64 00 2e 00 64 00 61 00 74 00 } //00 00 
		$a_00_6 = {5d 04 00 } //00 c2 
	condition:
		any of ($a_*)
 
}