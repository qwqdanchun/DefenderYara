
rule Trojan_WinNT_Octopus_A_MTB{
	meta:
		description = "Trojan:WinNT/Octopus.A!MTB,SIGNATURE_TYPE_JAVAHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_00_0 = {65 63 63 2e 66 72 65 65 64 64 6e 73 2e 6f 72 67 2f 6f 63 73 2e 74 78 74 } //01 00 
		$a_00_1 = {43 61 63 68 65 31 33 34 2e 64 61 74 } //01 00 
		$a_00_2 = {6f 63 74 6f 70 75 73 73 65 74 75 70 2e 4f 63 74 6f 70 75 73 53 65 74 75 70 } //00 00 
	condition:
		any of ($a_*)
 
}