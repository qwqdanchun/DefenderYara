
rule Trojan_AndroidOS_SpyAgent_F{
	meta:
		description = "Trojan:AndroidOS/SpyAgent.F,SIGNATURE_TYPE_DEXHSTR_EXT,08 00 08 00 04 00 00 02 00 "
		
	strings :
		$a_01_0 = {47 65 63 6b 6f 43 6f 6e 74 61 63 74 73 } //02 00 
		$a_01_1 = {44 41 54 41 42 41 53 45 5f 50 41 54 48 5f 45 41 53 59 5f 4c 4f 41 44 5f 4e 55 4d 42 45 52 } //02 00 
		$a_01_2 = {44 41 54 41 42 41 53 45 5f 50 41 54 48 5f 41 57 5f 53 4d 53 } //02 00 
		$a_01_3 = {57 41 5f 4d 45 53 53 41 47 45 53 5f 55 53 2f } //00 00 
	condition:
		any of ($a_*)
 
}