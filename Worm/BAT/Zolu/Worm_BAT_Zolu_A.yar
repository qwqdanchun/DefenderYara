
rule Worm_BAT_Zolu_A{
	meta:
		description = "Worm:BAT/Zolu.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {75 6c 6f 7a 20 62 6f 74 6e 65 74 2e 65 78 65 } //01 00 
		$a_03_1 = {2f 00 67 00 65 00 74 00 2e 00 70 00 68 00 70 00 3f 00 68 00 77 00 69 00 64 00 3d 00 90 02 20 6c 00 6f 00 61 00 64 00 2e 00 65 00 78 00 65 00 90 02 04 2f 00 6e 00 61 00 6d 00 65 00 2e 00 70 00 68 00 70 00 90 00 } //01 00 
		$a_03_2 = {2f 00 62 00 6f 00 74 00 90 02 04 5c 00 53 00 68 00 72 00 6f 00 6f 00 6d 00 4f 00 66 00 44 00 6f 00 6f 00 6d 00 90 00 } //01 00 
		$a_03_3 = {2f 00 75 00 70 00 6c 00 6f 00 61 00 64 00 90 02 04 57 00 69 00 6e 00 33 00 32 00 5f 00 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 6f 00 72 00 90 02 04 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 6f 00 72 00 49 00 64 00 90 00 } //00 00 
		$a_00_4 = {5d 04 } //00 00 
	condition:
		any of ($a_*)
 
}