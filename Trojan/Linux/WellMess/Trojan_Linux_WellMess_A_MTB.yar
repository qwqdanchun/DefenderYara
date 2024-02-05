
rule Trojan_Linux_WellMess_A_MTB{
	meta:
		description = "Trojan:Linux/WellMess.A!MTB,SIGNATURE_TYPE_ELFHSTR_EXT,03 00 03 00 03 00 00 02 00 "
		
	strings :
		$a_03_0 = {43 3a 2f 53 65 72 76 65 72 2f 42 6f 74 55 49 2f 41 70 70 5f 44 61 74 61 2f 54 65 6d 70 2f 90 02 20 2f 73 72 63 2f 90 02 20 2e 67 6f 00 00 90 00 } //01 00 
		$a_00_1 = {72 75 6e 74 69 6d 65 2e 69 6e 6a 65 63 74 67 6c 69 73 74 } //01 00 
		$a_00_2 = {2e 68 69 6a 61 63 6b 65 64 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Linux_WellMess_A_MTB_2{
	meta:
		description = "Trojan:Linux/WellMess.A!MTB,SIGNATURE_TYPE_ELFHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {2f 68 6f 6d 65 2f 75 62 75 6e 74 75 2f 47 6f 50 72 6f 6a 65 63 74 2f 73 72 63 2f 62 6f 74 2f 62 6f 74 6c 69 62 2e 77 65 6c 6c 4d 65 73 73 } //01 00 
		$a_00_1 = {6d 61 69 6e 2e 67 65 74 49 50 } //01 00 
		$a_00_2 = {62 6f 74 6c 69 62 2e 47 65 74 52 61 6e 64 6f 6d 42 79 74 65 73 } //01 00 
		$a_00_3 = {2f 62 6f 74 2f 62 6f 74 6c 69 62 2e 53 65 6e 64 4d 65 73 73 61 67 65 } //00 00 
		$a_00_4 = {5d 04 00 } //00 de 
	condition:
		any of ($a_*)
 
}