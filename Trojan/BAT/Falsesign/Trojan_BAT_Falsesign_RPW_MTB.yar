
rule Trojan_BAT_Falsesign_RPW_MTB{
	meta:
		description = "Trojan:BAT/Falsesign.RPW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {32 00 34 00 68 00 72 00 73 00 74 00 72 00 61 00 63 00 6b 00 2e 00 63 00 6f 00 6d 00 2f 00 6c 00 6f 00 61 00 64 00 65 00 72 00 2f 00 75 00 70 00 6c 00 6f 00 61 00 64 00 73 00 2f 00 90 02 30 2e 00 62 00 6d 00 70 00 90 00 } //01 00 
		$a_01_1 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 } //01 00 
		$a_01_2 = {2d 00 65 00 6e 00 63 00 20 00 55 00 77 00 42 00 30 00 41 00 45 00 45 00 41 00 63 00 67 00 42 00 30 00 41 00 43 00 30 00 41 00 55 00 77 00 42 00 73 00 41 00 45 00 55 00 41 00 5a 00 51 00 42 00 51 00 41 00 43 00 41 00 41 00 4c 00 51 00 42 00 7a 00 41 00 43 00 41 00 41 00 4d 00 67 00 41 00 77 00 41 00 41 00 3d 00 3d 00 } //01 00 
		$a_01_3 = {57 65 62 43 6c 69 65 6e 74 } //01 00 
		$a_01_4 = {54 6f 41 72 72 61 79 } //00 00 
	condition:
		any of ($a_*)
 
}