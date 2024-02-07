
rule Backdoor_Linux_Gafgyt_AP_MTB{
	meta:
		description = "Backdoor:Linux/Gafgyt.AP!MTB,SIGNATURE_TYPE_ELFHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_02_0 = {63 64 20 2f 74 6d 70 20 7c 7c 20 63 64 20 2f 76 61 72 2f 72 75 6e 20 7c 7c 20 63 64 20 2f 6d 6e 74 20 7c 7c 20 63 64 20 2f 72 6f 6f 74 20 7c 7c 20 63 64 20 2f 3b 20 77 67 65 74 20 68 74 74 70 3a 2f 2f 90 02 15 2f 90 02 10 3b 20 63 68 6d 6f 64 20 37 37 37 20 90 02 10 3b 20 73 68 20 90 02 10 3b 20 74 66 74 70 20 90 02 15 20 2d 63 20 67 65 74 90 00 } //01 00 
		$a_02_1 = {63 68 6d 6f 64 20 37 37 37 20 90 02 10 3b 20 73 68 20 90 02 10 3b 20 72 6d 20 2d 72 66 20 90 02 10 20 90 02 10 20 90 02 10 3b 20 72 6d 20 2d 72 66 20 2a 90 00 } //01 00 
		$a_01_2 = {53 54 4f 4c 45 4e 42 4f 54 53 } //01 00  STOLENBOTS
		$a_01_3 = {68 75 6e 74 35 37 35 39 } //01 00  hunt5759
		$a_03_4 = {48 54 54 50 90 02 05 46 6c 6f 6f 64 69 6e 67 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}