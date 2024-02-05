
rule Backdoor_Linux_Adore_A_xp{
	meta:
		description = "Backdoor:Linux/Adore.A!xp,SIGNATURE_TYPE_ELFHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {61 64 6f 72 65 5f 68 69 64 65 66 69 6c 65 } //01 00 
		$a_01_1 = {61 64 6f 72 65 5f 6d 61 6b 65 72 6f 6f 74 } //01 00 
		$a_01_2 = {4e 6f 20 6c 75 63 6b 2c 20 6e 6f 20 61 64 6f 72 65 } //01 00 
		$a_01_3 = {2f 70 72 6f 63 2f 68 69 64 65 2d 25 64 } //01 00 
		$a_01_4 = {61 64 6f 72 65 5f 68 69 64 65 70 72 6f 63 } //00 00 
		$a_00_5 = {5d 04 00 00 } //d8 08 
	condition:
		any of ($a_*)
 
}