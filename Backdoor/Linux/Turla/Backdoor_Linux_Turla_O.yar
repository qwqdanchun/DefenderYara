
rule Backdoor_Linux_Turla_O{
	meta:
		description = "Backdoor:Linux/Turla.O,SIGNATURE_TYPE_ELFHSTR_EXT,02 00 02 00 08 00 00 01 00 "
		
	strings :
		$a_00_0 = {8d 41 05 32 06 48 ff c6 88 81 e0 80 69 00 } //01 00 
		$a_00_1 = {48 ff c1 48 83 f9 49 75 e9 } //01 00 
		$a_00_2 = {c7 05 9b 7d 29 00 1d 00 00 00 c7 05 2d 7b 29 00 65 74 68 30 c6 05 2a 7b 29 00 00 e8 } //01 00 
		$a_00_3 = {bf ff ff ff ff e8 96 9d 0a 00 90 90 90 90 90 90 90 90 90 90 89 f0 } //01 00 
		$a_00_4 = {88 d3 80 c3 05 32 9a c1 d6 0c 08 88 9a 60 a1 0f 08 42 83 fa 08 76 e9 } //01 00 
		$a_00_5 = {8b 8d 50 df ff ff b8 09 00 00 00 89 44 24 04 89 0c 24 e8 dd e5 02 00 } //01 00 
		$a_00_6 = {8d 5a 05 32 9a 60 26 0c 08 88 9a 20 f4 0e 08 42 83 fa 48 76 eb } //01 00 
		$a_00_7 = {8d 4a 05 32 8a 25 26 0c 08 88 8a 20 f4 0e 08 42 83 fa 08 76 eb } //00 00 
	condition:
		any of ($a_*)
 
}