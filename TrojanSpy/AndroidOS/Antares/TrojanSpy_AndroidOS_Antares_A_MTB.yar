
rule TrojanSpy_AndroidOS_Antares_A_MTB{
	meta:
		description = "TrojanSpy:AndroidOS/Antares.A!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_00_0 = {4d 53 47 5f 43 4f 4e 54 41 43 54 53 5f 4c 49 53 54 5f 52 45 41 44 59 } //01 00 
		$a_00_1 = {67 65 74 4c 69 73 74 43 6f 6e 74 61 63 74 73 } //01 00 
		$a_00_2 = {69 6e 73 65 72 74 41 64 72 65 73 73 57 69 74 68 54 79 70 65 73 } //01 00 
		$a_00_3 = {61 64 64 43 6f 6e 74 61 63 74 46 72 6f 6d 4a 53 4f 4e } //01 00 
		$a_00_4 = {69 6e 63 6f 6d 69 6e 67 5f 73 6d 73 5f 63 61 6c 6c 62 61 6b } //01 00 
		$a_00_5 = {4c 63 6f 6d 2f 61 6e 74 61 72 65 73 2f 61 6e 64 72 6f 69 64 2f 4a 53 49 6e 74 65 72 66 61 63 65 2f 4a 53 43 6f 6e 74 61 63 74 73 } //00 00 
		$a_00_6 = {5d 04 00 00 c7 } //a1 04 
	condition:
		any of ($a_*)
 
}