
rule Backdoor_Linux_Turla_D{
	meta:
		description = "Backdoor:Linux/Turla.D,SIGNATURE_TYPE_ELFHSTR_EXT,1e 00 1e 00 03 00 00 0a 00 "
		
	strings :
		$a_01_0 = {c6 05 74 70 29 00 5f c6 05 6e 70 29 00 5f c6 05 68 70 29 00 77 } //0a 00 
		$a_01_1 = {c6 05 5f 70 29 00 65 c6 05 59 70 29 00 5f c6 05 53 70 29 00 61 c6 05 4d 70 29 00 72 c6 05 47 70 29 00 65 c6 05 41 70 29 00 5f c6 05 3b 70 29 00 68 c6 05 35 70 29 00 61 c6 05 2f 70 29 00 70 c6 05 29 70 29 00 70 c6 05 23 70 29 00 79 c6 05 1d 70 29 00 5f c6 05 17 70 29 00 5f } //0a 00 
		$a_01_2 = {8b 02 48 83 c2 04 8d 88 ff fe fe fe f7 d0 21 c1 81 e1 80 80 80 80 74 e8 } //00 00 
	condition:
		any of ($a_*)
 
}