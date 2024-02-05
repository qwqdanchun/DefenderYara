
rule Trojan_AndroidOS_OpFakeSms_E{
	meta:
		description = "Trojan:AndroidOS/OpFakeSms.E,SIGNATURE_TYPE_DEXHSTR_EXT,03 00 03 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {63 6f 6e 66 69 67 2e 72 65 73 } //01 00 
		$a_01_1 = {53 4d 53 63 6f 6c 3a } //01 00 
		$a_01_2 = {23 23 23 4c 4f 47 23 23 23 } //01 00 
		$a_01_3 = {6d 65 67 61 66 6f 6e } //01 00 
		$a_01_4 = {2f 73 65 74 54 61 73 6b 2e 70 68 70 } //00 00 
	condition:
		any of ($a_*)
 
}