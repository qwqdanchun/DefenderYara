
rule Trojan_AndroidOS_Wormble_A{
	meta:
		description = "Trojan:AndroidOS/Wormble.A,SIGNATURE_TYPE_DEXHSTR_EXT,09 00 09 00 05 00 00 02 00 "
		
	strings :
		$a_00_0 = {43 52 41 50 } //02 00 
		$a_00_1 = {47 72 6f 75 70 5f 70 68 6f 6e 65 3a } //02 00 
		$a_00_2 = {69 6e 73 69 64 65 20 73 65 6e 64 52 65 70 6c 79 } //02 00 
		$a_00_3 = {6e 61 61 68 } //01 00 
		$a_00_4 = {6d 6f 62 69 6c 65 73 74 72 65 61 6d 2e 63 6c 75 62 2f 3f 6e 65 74 66 6c 69 78 } //00 00 
	condition:
		any of ($a_*)
 
}