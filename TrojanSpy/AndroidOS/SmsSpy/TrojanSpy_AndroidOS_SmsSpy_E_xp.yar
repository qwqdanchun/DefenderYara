
rule TrojanSpy_AndroidOS_SmsSpy_E_xp{
	meta:
		description = "TrojanSpy:AndroidOS/SmsSpy.E!xp,SIGNATURE_TYPE_DEXHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {73 6d 73 70 61 79 } //01 00 
		$a_00_1 = {73 6d 73 5f 6c 69 6e 6b 5f 69 64 } //01 00 
		$a_00_2 = {68 74 74 70 3a 2f 2f 76 70 61 79 2e 61 70 69 2e 65 65 72 69 63 68 69 6e 61 2e 63 6f 6d 2f 61 70 69 2f 70 61 79 6d 65 6e 74 } //01 00 
		$a_00_3 = {63 6f 6d 2f 77 79 7a 66 2f 70 6c 75 67 69 6e 2f 6e 65 74 } //01 00 
		$a_00_4 = {4c 63 6f 6d 2f 2f 78 39 30 2f 78 30 32 2f 78 31 35 2f 70 6c 75 67 69 6e 2f 6d 6f 64 65 6c 2f 53 6d 73 49 6e 66 6f } //00 00 
		$a_00_5 = {5d 04 } //00 00 
	condition:
		any of ($a_*)
 
}