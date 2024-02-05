
rule TrojanDropper_BAT_VB_AB{
	meta:
		description = "TrojanDropper:BAT/VB.AB,SIGNATURE_TYPE_PEHSTR,09 00 09 00 07 00 00 05 00 "
		
	strings :
		$a_01_0 = {4e 00 65 00 77 00 20 00 49 00 6e 00 66 00 65 00 63 00 74 00 69 00 6f 00 6e 00 21 00 } //02 00 
		$a_01_1 = {56 00 56 00 4e 00 46 00 55 00 6c 00 78 00 54 00 62 00 32 00 5a 00 30 00 64 00 32 00 46 00 79 00 5a 00 56 00 78 00 51 00 62 00 32 00 78 00 70 00 59 00 32 00 6c 00 6c 00 63 00 31 00 78 00 4e 00 61 00 57 00 4e 00 79 00 62 00 33 00 4e 00 76 00 5a 00 6e 00 52 00 63 00 56 00 32 00 6c 00 75 00 5a 00 47 00 39 00 33 00 63 00 31 00 78 00 54 00 65 00 58 00 4e 00 30 00 5a 00 57 00 30 00 67 00 4c 00 33 00 59 00 67 00 52 00 47 00 6c 00 7a 00 59 00 57 00 4a 00 73 00 5a 00 55 00 4e 00 4e 00 52 00 43 00 41 00 76 00 64 00 43 00 42 00 53 00 52 00 55 00 64 00 66 00 52 00 46 00 64 00 50 00 55 00 6b 00 51 00 67 00 4c 00 32 00 51 00 67 00 4d 00 53 00 41 00 76 00 5a 00 67 00 3d 00 3d 00 } //02 00 
		$a_01_2 = {61 00 75 00 74 00 6f 00 6d 00 61 00 74 00 69 00 6f 00 6e 00 2e 00 77 00 68 00 61 00 74 00 69 00 73 00 6d 00 79 00 69 00 70 00 2e 00 63 00 6f 00 6d 00 } //02 00 
		$a_01_3 = {5c 00 70 00 69 00 63 00 74 00 75 00 72 00 65 00 2e 00 73 00 63 00 72 00 } //01 00 
		$a_01_4 = {73 00 63 00 20 00 73 00 74 00 6f 00 70 00 20 00 77 00 73 00 63 00 73 00 76 00 63 00 } //01 00 
		$a_01_5 = {73 00 63 00 20 00 73 00 74 00 6f 00 70 00 20 00 53 00 68 00 61 00 72 00 65 00 64 00 41 00 63 00 63 00 65 00 73 00 73 00 } //01 00 
		$a_01_6 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 54 00 61 00 73 00 6b 00 4d 00 67 00 72 00 } //00 00 
	condition:
		any of ($a_*)
 
}