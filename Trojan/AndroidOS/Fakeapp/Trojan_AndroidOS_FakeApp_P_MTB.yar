
rule Trojan_AndroidOS_FakeApp_P_MTB{
	meta:
		description = "Trojan:AndroidOS/FakeApp.P!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {2f 76 6e 69 66 6f 6f 64 2e 63 6f 6d } //01 00 
		$a_01_1 = {66 62 6f 6b 2f 73 75 62 74 68 2f 4d 61 69 6e 41 63 74 69 76 69 74 79 } //01 00 
		$a_01_2 = {68 75 79 6e 71 61 73 73 73 73 } //01 00 
		$a_01_3 = {61 6e 6f 74 68 65 72 5f 67 69 72 6c 5f 69 6e 5f 74 68 65 5f 77 61 6c 6c 5f 66 62 } //01 00 
		$a_01_4 = {73 65 6e 73 6d 73 } //00 00 
	condition:
		any of ($a_*)
 
}