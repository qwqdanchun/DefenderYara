
rule Backdoor_Linux_Mirai_O_xp{
	meta:
		description = "Backdoor:Linux/Mirai.O!xp,SIGNATURE_TYPE_ELFHSTR_EXT,02 00 02 00 03 00 00 01 00 "
		
	strings :
		$a_00_0 = {2f 62 69 6e 2f 62 75 73 79 62 6f 78 20 77 67 65 74 20 2d 67 20 37 39 2e 31 32 34 2e 38 2e 31 33 33 20 2d 6c 20 2f 74 6d 70 2f 6d 6f 6e 6b 65 20 2d 72 20 2f 64 } //01 00 
		$a_00_1 = {2f 74 6d 70 2f 6d 6f 6e 6b 65 20 73 65 6c 66 72 65 70 2e 72 6f 75 74 65 72 } //01 00 
		$a_00_2 = {2f 78 33 38 2f 78 46 4a 2f 78 39 33 2f 78 49 44 2f 78 39 41 2f 78 33 38 2f 78 46 4a 2f 78 39 33 2f 78 49 44 2f 78 39 41 2f } //00 00 
	condition:
		any of ($a_*)
 
}