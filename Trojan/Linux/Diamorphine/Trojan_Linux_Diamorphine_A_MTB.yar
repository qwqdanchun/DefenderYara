
rule Trojan_Linux_Diamorphine_A_MTB{
	meta:
		description = "Trojan:Linux/Diamorphine.A!MTB,SIGNATURE_TYPE_ELFHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {68 61 63 6b 65 64 5f 6b 69 6c 6c } //01 00  hacked_kill
		$a_00_1 = {64 69 61 6d 6f 72 70 68 69 6e 65 5f 63 6c 65 61 6e 75 70 } //01 00  diamorphine_cleanup
		$a_00_2 = {68 61 63 6b 65 64 5f 67 65 74 64 65 6e 74 73 } //01 00  hacked_getdents
		$a_00_3 = {6d 30 6e 61 64 } //01 00  m0nad
		$a_00_4 = {4c 4b 4d 20 72 6f 6f 74 6b 69 74 } //00 00  LKM rootkit
	condition:
		any of ($a_*)
 
}