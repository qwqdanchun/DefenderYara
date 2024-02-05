
rule TrojanSpy_AndroidOS_Xagfin_A_MTB{
	meta:
		description = "TrojanSpy:AndroidOS/Xagfin.A!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,05 00 05 00 06 00 00 01 00 "
		
	strings :
		$a_00_0 = {4c 6d 69 6c 2f 70 6f 70 72 44 33 30 2f } //01 00 
		$a_00_1 = {4b 4f 44 5f 61 63 74 69 76 5f 50 4f 50 52 5f 44 } //01 00 
		$a_00_2 = {41 6c 6c 41 62 6f 75 74 50 68 6f 6e 65 43 6d 64 } //01 00 
		$a_00_3 = {66 65 74 63 68 43 6f 6e 74 61 63 74 73 } //01 00 
		$a_00_4 = {43 4d 44 20 31 30 31 20 73 75 63 63 65 73 73 } //01 00 
		$a_00_5 = {2a 2a 2a 53 4d 53 20 48 69 73 74 6f 72 79 2a 2a 2a } //00 00 
		$a_00_6 = {5d 04 00 00 } //2d 43 
	condition:
		any of ($a_*)
 
}