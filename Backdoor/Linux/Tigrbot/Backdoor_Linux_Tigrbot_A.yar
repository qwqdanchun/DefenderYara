
rule Backdoor_Linux_Tigrbot_A{
	meta:
		description = "Backdoor:Linux/Tigrbot.A,SIGNATURE_TYPE_ELFHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_00_0 = {63 6f 6d 2f 61 6e 64 72 6f 69 64 6b 65 72 6e 65 6c 2f 66 6c 61 73 68 2f 68 65 6c 70 65 72 2f 54 69 67 65 72 00 } //01 00 
		$a_01_1 = {26 4e 48 56 47 4b 5e 31 37 54 28 25 47 4e 4a 45 5e 4e 47 36 00 } //01 00 
		$a_00_2 = {2b 38 36 31 35 30 35 33 35 39 33 34 38 30 00 00 44 45 34 36 42 35 35 45 44 46 43 38 46 42 39 35 46 45 31 32 33 32 42 39 36 41 36 31 31 46 42 36 00 } //00 00 
	condition:
		any of ($a_*)
 
}