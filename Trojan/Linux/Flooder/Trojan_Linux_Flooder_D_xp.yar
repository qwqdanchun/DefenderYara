
rule Trojan_Linux_Flooder_D_xp{
	meta:
		description = "Trojan:Linux/Flooder.D!xp,SIGNATURE_TYPE_ELFHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {57 51 52 47 51 52 45 51 52 54 51 52 46 51 52 4c 51 52 4f 51 52 4f 51 52 44 } //01 00 
		$a_01_1 = {62 51 52 75 51 52 73 51 52 79 51 52 62 51 52 6f 51 52 74 51 52 6e 51 52 65 51 52 74 } //01 00 
		$a_01_2 = {4b 51 52 49 51 52 4c 51 52 4c 51 52 41 51 52 4c 51 52 4c } //01 00 
		$a_01_3 = {62 51 52 75 51 52 73 51 52 79 51 52 62 51 52 6f 51 52 78 51 52 74 51 52 65 51 52 72 51 52 72 51 52 6f 51 52 72 51 52 69 51 52 73 51 52 74 } //00 00 
	condition:
		any of ($a_*)
 
}