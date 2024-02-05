
rule TrojanSpy_AndroidOS_Faketoken_C_MTB{
	meta:
		description = "TrojanSpy:AndroidOS/Faketoken.C!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {61 70 70 2f 73 65 76 65 6e 2f 4d 61 69 6e 41 63 74 69 76 69 74 79 } //01 00 
		$a_01_1 = {74 65 78 74 54 6f 43 6f 6d 6d 61 6e 64 } //01 00 
		$a_01_2 = {67 65 74 49 6d 73 69 } //01 00 
		$a_01_3 = {77 65 62 61 70 69 2e 6f 70 65 6e 55 72 6c } //01 00 
		$a_01_4 = {73 65 6e 64 54 65 78 74 4d 65 73 73 61 67 65 } //00 00 
	condition:
		any of ($a_*)
 
}