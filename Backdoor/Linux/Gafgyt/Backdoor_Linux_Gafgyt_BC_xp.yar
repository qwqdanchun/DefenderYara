
rule Backdoor_Linux_Gafgyt_BC_xp{
	meta:
		description = "Backdoor:Linux/Gafgyt.BC!xp,SIGNATURE_TYPE_ELFHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {2f 64 65 76 2f 6e 65 74 73 6c 69 6e 6b 2f } //01 00 
		$a_01_1 = {57 57 61 75 31 34 54 4a 38 49 61 70 56 58 72 72 6c 46 71 30 71 35 73 78 42 } //01 00 
		$a_01_2 = {62 75 73 79 62 6f 78 20 77 67 65 74 } //00 00 
	condition:
		any of ($a_*)
 
}