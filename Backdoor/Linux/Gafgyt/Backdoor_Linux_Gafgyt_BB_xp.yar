
rule Backdoor_Linux_Gafgyt_BB_xp{
	meta:
		description = "Backdoor:Linux/Gafgyt.BB!xp,SIGNATURE_TYPE_ELFHSTR_EXT,06 00 06 00 04 00 00 02 00 "
		
	strings :
		$a_01_0 = {2f 75 73 72 2f 73 62 69 6e 2f 64 72 6f 70 62 65 61 72 } //02 00 
		$a_03_1 = {77 67 65 74 20 68 74 74 70 3a 2f 2f 90 02 20 2f 62 69 6e 73 2e 73 68 90 00 } //01 00 
		$a_01_2 = {68 6c 4c 6a 7a 74 71 5a } //01 00 
		$a_01_3 = {6e 70 78 58 6f 75 64 69 66 46 65 45 67 47 61 41 43 53 63 73 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Backdoor_Linux_Gafgyt_BB_xp_2{
	meta:
		description = "Backdoor:Linux/Gafgyt.BB!xp,SIGNATURE_TYPE_ELFHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {72 6d 20 2d 72 66 20 43 68 65 61 74 73 2a } //01 00 
		$a_00_1 = {63 64 20 2f 72 6f 6f 74 } //01 00 
		$a_01_2 = {4d 6f 6a 65 65 6b 42 6f 74 2f 32 2e 30 } //01 00 
		$a_00_3 = {2f 65 74 63 2f 72 65 73 6f 6c 76 2e 63 6f 6e 66 } //01 00 
		$a_01_4 = {6e 70 78 58 6f 75 64 69 66 46 65 45 67 47 61 41 43 53 63 73 } //00 00 
	condition:
		any of ($a_*)
 
}