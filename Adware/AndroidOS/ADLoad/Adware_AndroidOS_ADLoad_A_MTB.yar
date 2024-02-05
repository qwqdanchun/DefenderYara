
rule Adware_AndroidOS_ADLoad_A_MTB{
	meta:
		description = "Adware:AndroidOS/ADLoad.A!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {46 75 6c 6c 53 63 72 65 65 6e 41 64 41 63 74 69 76 69 74 79 } //01 00 
		$a_01_1 = {73 68 6f 75 6c 64 4f 76 65 72 72 69 64 65 55 72 6c 4c 6f 61 64 69 6e 67 } //01 00 
		$a_01_2 = {72 65 71 75 65 73 74 41 64 73 } //01 00 
		$a_01_3 = {64 6f 77 6e 6c 6f 61 64 41 64 } //01 00 
		$a_01_4 = {70 6c 61 79 46 75 6c 6c 73 63 72 65 65 6e 41 64 } //00 00 
	condition:
		any of ($a_*)
 
}