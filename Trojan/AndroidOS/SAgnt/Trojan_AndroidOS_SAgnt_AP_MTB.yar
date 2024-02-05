
rule Trojan_AndroidOS_SAgnt_AP_MTB{
	meta:
		description = "Trojan:AndroidOS/SAgnt.AP!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {65 74 5f 63 61 72 64 5f 6e 75 6d 62 65 72 } //01 00 
		$a_01_1 = {2f 75 75 69 64 5f 63 75 73 74 6f 6d 2e 74 78 74 } //01 00 
		$a_01_2 = {68 63 76 34 75 72 2e 64 65 76 73 2e 74 65 61 74 72 } //01 00 
		$a_01_3 = {41 63 74 69 76 69 74 79 43 61 72 64 } //01 00 
		$a_01_4 = {6d 61 6e 64 61 74 6f 72 79 4e 6f 74 69 66 69 63 61 74 69 6f 6e 73 } //00 00 
	condition:
		any of ($a_*)
 
}