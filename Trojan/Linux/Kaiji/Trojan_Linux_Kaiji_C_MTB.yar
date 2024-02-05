
rule Trojan_Linux_Kaiji_C_MTB{
	meta:
		description = "Trojan:Linux/Kaiji.C!MTB,SIGNATURE_TYPE_ELFHSTR_EXT,17 00 17 00 06 00 00 0a 00 "
		
	strings :
		$a_00_0 = {6d 61 69 6e 2e 43 56 45 } //0a 00 
		$a_00_1 = {70 6f 6c 6c 2e 73 70 6c 69 63 65 70 69 70 65 } //01 00 
		$a_00_2 = {73 79 73 63 61 6c 6c 2e 73 6f 63 6b 65 74 } //01 00 
		$a_00_3 = {73 79 73 63 61 6c 6c 2e 61 63 63 65 70 74 } //01 00 
		$a_00_4 = {73 79 73 63 61 6c 6c 2e 63 6f 6e 6e 65 63 74 } //01 00 
		$a_00_5 = {73 79 73 63 61 6c 6c 2e 73 65 6e 64 66 69 6c 65 } //00 00 
	condition:
		any of ($a_*)
 
}