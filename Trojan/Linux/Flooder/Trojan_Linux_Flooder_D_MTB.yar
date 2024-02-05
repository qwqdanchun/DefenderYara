
rule Trojan_Linux_Flooder_D_MTB{
	meta:
		description = "Trojan:Linux/Flooder.D!MTB,SIGNATURE_TYPE_ELFHSTR_EXT,05 00 05 00 06 00 00 01 00 "
		
	strings :
		$a_00_0 = {74 65 6c 6e 65 74 61 74 74 61 63 6b } //01 00 
		$a_00_1 = {73 65 6e 74 69 6e 65 6c 73 63 61 6e 6e 65 72 } //01 00 
		$a_00_2 = {64 64 6f 73 } //01 00 
		$a_00_3 = {63 68 61 72 67 65 6e 73 63 61 6e 6e 65 72 } //01 00 
		$a_00_4 = {63 65 72 62 65 72 75 73 } //01 00 
		$a_00_5 = {6a 6f 6f 6d 6c 61 73 63 61 6e } //00 00 
	condition:
		any of ($a_*)
 
}