
rule PWS_BAT_Stimilina_N{
	meta:
		description = "PWS:BAT/Stimilina.N,SIGNATURE_TYPE_PEHSTR_EXT,04 00 03 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 74 65 61 6d 46 61 6b 65 43 6c 69 65 6e 74 } //01 00 
		$a_00_1 = {7b 00 33 00 7d 00 4c 00 69 00 6e 00 6b 00 3a 00 20 00 7b 00 32 00 7d 00 7b 00 33 00 7d 00 55 00 73 00 65 00 72 00 6e 00 61 00 6d 00 65 00 3a 00 20 00 7b 00 30 00 7d 00 7b 00 33 00 7d 00 50 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 3a 00 20 00 7b 00 31 00 7d 00 7b 00 33 00 7d 00 } //01 00 
		$a_00_2 = {53 00 74 00 65 00 61 00 6c 00 43 00 6f 00 6e 00 66 00 69 00 67 00 73 00 53 00 73 00 66 00 6e 00 42 00 50 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 73 00 } //01 00 
		$a_00_3 = {53 00 65 00 6e 00 64 00 42 00 72 00 6f 00 77 00 73 00 65 00 72 00 50 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 73 00 } //01 00 
		$a_00_4 = {4f 00 6e 00 20 00 43 00 6f 00 70 00 69 00 65 00 20 00 4d 00 75 00 6c 00 74 00 69 00 50 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 73 00 } //01 00 
		$a_00_5 = {3a 00 20 00 66 00 6f 00 72 00 6d 00 2d 00 64 00 61 00 74 00 61 00 3b 00 20 00 6e 00 61 00 6d 00 65 00 3d 00 22 00 7b 00 31 00 7d 00 22 00 3b 00 20 00 66 00 69 00 6c 00 65 00 6e 00 61 00 6d 00 65 00 3d 00 22 00 7b 00 32 00 7d 00 22 00 3b 00 } //00 00 
	condition:
		any of ($a_*)
 
}