
rule Backdoor_Linux_Zyarinig_A_xp{
	meta:
		description = "Backdoor:Linux/Zyarinig.A!xp,SIGNATURE_TYPE_ELFHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {2f 74 6d 70 2f 2e 78 } //01 00 
		$a_00_1 = {6c 69 66 65 74 69 6d 65 3d 35 25 32 30 4d 49 4e } //01 00 
		$a_00_2 = {63 67 69 2d 62 69 6e 2f 73 75 70 65 72 76 69 73 6f 72 2f 50 77 64 47 72 70 2e 63 67 69 } //01 00 
		$a_00_3 = {61 63 74 69 6f 6e 3d 64 65 6c } //00 00 
	condition:
		any of ($a_*)
 
}