
rule Trojan_AndroidOS_SAgnt_AO_MTB{
	meta:
		description = "Trojan:AndroidOS/SAgnt.AO!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,05 00 05 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 6d 73 54 72 61 6e 73 61 63 74 69 6f 6e } //01 00 
		$a_01_1 = {67 65 74 43 6f 6e 74 61 63 74 43 6f 75 6e 74 } //01 00 
		$a_01_2 = {73 65 74 74 65 78 74 74 72 61 63 6b 69 6e 67 } //01 00 
		$a_01_3 = {73 65 74 44 65 6c 69 76 65 72 79 52 65 63 65 69 76 65 72 53 4d 53 } //01 00 
		$a_01_4 = {67 65 74 57 69 66 69 54 72 69 67 67 65 72 } //01 00 
		$a_01_5 = {74 65 73 74 6d 73 67 32 2e 70 68 70 } //00 00 
	condition:
		any of ($a_*)
 
}