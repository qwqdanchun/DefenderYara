
rule Backdoor_Linux_Gafgyt_AP_xp{
	meta:
		description = "Backdoor:Linux/Gafgyt.AP!xp,SIGNATURE_TYPE_ELFHSTR_EXT,04 00 04 00 04 00 00 02 00 "
		
	strings :
		$a_01_0 = {6b 51 52 69 51 52 6c 51 52 6c 51 52 20 51 52 2d 51 52 39 51 52 20 51 52 25 51 52 64 51 52 } //01 00 
		$a_01_1 = {43 51 52 48 51 52 45 51 52 43 51 52 4b 51 52 53 51 52 55 51 52 4d } //01 00 
		$a_01_2 = {4b 51 52 49 51 52 4c 51 52 4c 51 52 41 51 52 4c 51 52 4c } //01 00 
		$a_01_3 = {47 51 52 45 51 52 54 51 52 53 51 52 50 51 52 4f 51 52 4f 51 52 46 51 52 53 } //00 00 
	condition:
		any of ($a_*)
 
}