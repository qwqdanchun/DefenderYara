
rule Trojan_Linux_Moobot_D{
	meta:
		description = "Trojan:Linux/Moobot.D,SIGNATURE_TYPE_ELFHSTR_EXT,08 00 08 00 04 00 00 02 00 "
		
	strings :
		$a_00_0 = {2f 62 69 6e 2f 62 75 73 79 62 6f 78 20 44 4e 58 58 58 46 46 } //02 00 
		$a_00_1 = {76 65 72 69 66 79 3a 4f 4b } //02 00 
		$a_00_2 = {72 61 6e 64 4e 75 6d 3a } //02 00 
		$a_00_3 = {71 45 36 4d 47 41 62 49 } //00 00 
	condition:
		any of ($a_*)
 
}