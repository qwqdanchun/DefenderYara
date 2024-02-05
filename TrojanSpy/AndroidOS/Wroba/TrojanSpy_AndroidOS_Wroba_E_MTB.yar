
rule TrojanSpy_AndroidOS_Wroba_E_MTB{
	meta:
		description = "TrojanSpy:AndroidOS/Wroba.E!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {42 32 33 68 62 32 37 } //01 00 
		$a_00_1 = {2f 73 65 72 76 6c 65 74 2f 55 70 6c 6f 61 64 56 6f 69 63 65 } //01 00 
		$a_00_2 = {2f 73 65 72 76 6c 65 74 2f 43 6f 6e 74 61 63 74 73 55 70 6c 6f 61 64 } //01 00 
		$a_00_3 = {67 65 74 42 61 6e 6b 73 49 6e 66 6f } //01 00 
		$a_00_4 = {34 35 30 30 36 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanSpy_AndroidOS_Wroba_E_MTB_2{
	meta:
		description = "TrojanSpy:AndroidOS/Wroba.E!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,05 00 05 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {73 6d 73 20 4c 6f 63 6b } //01 00 
		$a_01_1 = {73 74 6f 70 20 66 6f 72 77 61 72 64 } //01 00 
		$a_01_2 = {5f 4f 74 70 5f 50 73 77 } //01 00 
		$a_01_3 = {5f 43 61 72 64 5f 50 73 77 } //01 00 
		$a_01_4 = {26 73 65 6e 64 6f 75 74 4f 72 49 6e 3d } //01 00 
		$a_01_5 = {65 78 65 63 75 74 65 20 63 6f 6d 6d 61 6e 64 } //00 00 
	condition:
		any of ($a_*)
 
}