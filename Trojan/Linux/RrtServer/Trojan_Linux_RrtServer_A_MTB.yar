
rule Trojan_Linux_RrtServer_A_MTB{
	meta:
		description = "Trojan:Linux/RrtServer.A!MTB,SIGNATURE_TYPE_ELFHSTR_EXT,02 00 02 00 03 00 00 01 00 "
		
	strings :
		$a_00_0 = {72 72 6f 6f 74 6b 69 74 5f 63 72 79 70 74 6f 5f 72 63 34 } //01 00 
		$a_00_1 = {69 6e 76 61 6c 69 64 20 72 72 6f 6f 74 6b 69 74 20 6d 65 73 73 61 67 65 } //01 00 
		$a_00_2 = {2f 70 72 6f 63 2f 73 79 73 2f 72 72 6f 6f 74 6b 69 74 } //00 00 
	condition:
		any of ($a_*)
 
}