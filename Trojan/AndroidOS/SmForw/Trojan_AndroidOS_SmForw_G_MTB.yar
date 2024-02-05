
rule Trojan_AndroidOS_SmForw_G_MTB{
	meta:
		description = "Trojan:AndroidOS/SmForw.G!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,05 00 05 00 06 00 00 01 00 "
		
	strings :
		$a_00_0 = {63 6f 6d 2e 79 66 6d 2e 73 65 6e 64 } //01 00 
		$a_00_1 = {69 73 4d 6f 62 69 6c 65 4e 4f } //01 00 
		$a_00_2 = {53 6d 53 73 65 72 76 65 72 } //01 00 
		$a_00_3 = {66 72 6f 6d 70 68 6f 6e 65 } //01 00 
		$a_00_4 = {53 65 6e 64 53 6d 73 } //01 00 
		$a_00_5 = {67 65 74 4f 72 69 67 69 6e 61 74 69 6e 67 41 64 64 72 65 73 73 } //00 00 
	condition:
		any of ($a_*)
 
}