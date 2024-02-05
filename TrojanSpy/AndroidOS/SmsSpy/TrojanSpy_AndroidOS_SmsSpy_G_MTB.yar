
rule TrojanSpy_AndroidOS_SmsSpy_G_MTB{
	meta:
		description = "TrojanSpy:AndroidOS/SmsSpy.G!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_00_0 = {4c 63 6f 6d 2f 70 68 6f 6e 65 32 2f 73 74 6f 70 2f 61 63 74 69 76 69 74 79 2f 44 65 6c 65 74 65 41 63 74 69 76 69 74 79 } //01 00 
		$a_00_1 = {4c 63 6f 6d 2f 70 68 6f 6e 65 2f 73 74 6f 70 36 2f 73 65 72 76 69 63 65 2f 53 6d 73 53 65 72 76 69 63 65 } //01 00 
		$a_00_2 = {63 6f 6e 74 65 6e 74 3a 2f 2f 73 6d 73 2f 63 6f 6e 76 65 72 73 61 74 69 6f 6e 73 2f } //01 00 
		$a_00_3 = {68 61 73 5f 73 65 6e 64 5f 70 68 6f 6e 65 5f 69 6e 66 6f } //01 00 
		$a_00_4 = {68 61 73 5f 73 65 6e 64 5f 63 6f 6e 74 61 63 74 73 } //01 00 
		$a_00_5 = {68 61 73 5f 73 65 74 5f 73 65 6e 64 5f 65 6d 61 69 6c 5f 70 77 64 } //00 00 
	condition:
		any of ($a_*)
 
}