
rule TrojanSpy_AndroidOS_SMSSpy_M{
	meta:
		description = "TrojanSpy:AndroidOS/SMSSpy.M,SIGNATURE_TYPE_DEXHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {74 63 61 6d 2f 42 4d 65 73 73 } //01 00 
		$a_01_1 = {74 63 61 6d 2f 42 53 65 72 } //01 00 
		$a_01_2 = {2f 63 6c 69 63 6b 5f 32 2f 69 6e 64 65 78 2e 70 68 70 } //01 00 
		$a_01_3 = {74 63 61 6d 2f 4c 6f 61 64 41 63 74 69 76 } //01 00 
		$a_01_4 = {74 63 61 6d 2f 52 41 63 74 69 76 } //00 00 
	condition:
		any of ($a_*)
 
}