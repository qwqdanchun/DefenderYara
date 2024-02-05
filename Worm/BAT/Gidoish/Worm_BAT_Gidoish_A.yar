
rule Worm_BAT_Gidoish_A{
	meta:
		description = "Worm:BAT/Gidoish.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {55 00 32 00 39 00 6d 00 64 00 48 00 64 00 68 00 63 00 6d 00 56 00 63 00 54 00 57 00 6c 00 6a 00 63 00 6d 00 39 00 7a 00 62 00 32 00 5a 00 30 00 58 00 46 00 64 00 70 00 62 00 6d 00 52 00 76 00 64 00 33 00 4e 00 63 00 51 00 33 00 56 00 79 00 63 00 6d 00 56 00 75 00 64 00 46 00 5a 00 6c 00 63 00 6e 00 4e 00 70 00 62 00 32 00 35 00 63 00 55 00 6e 00 56 00 75 00 } //01 00 
		$a_01_1 = {5a 00 32 00 39 00 73 00 5a 00 47 00 5a 00 70 00 63 00 32 00 67 00 67 00 59 00 6d 00 39 00 33 00 62 00 41 00 3d 00 3d 00 } //01 00 
		$a_01_2 = {5a 00 47 00 6c 00 68 00 62 00 57 00 39 00 75 00 5a 00 43 00 42 00 79 00 61 00 57 00 35 00 6e 00 } //01 00 
		$a_01_3 = {7c 00 23 00 4e 00 65 00 74 00 77 00 6f 00 72 00 6b 00 7c 00 40 00 } //01 00 
		$a_01_4 = {42 6f 61 74 4b 69 6c 6c 65 72 } //01 00 
		$a_01_5 = {42 6f 74 4b 69 6c 6c } //01 00 
		$a_01_6 = {44 4c 45 78 65 63 00 } //01 00 
		$a_01_7 = {53 74 61 72 74 41 6e 74 69 00 } //00 00 
		$a_00_8 = {5d 04 00 00 } //14 12 
	condition:
		any of ($a_*)
 
}