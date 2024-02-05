
rule TrojanSpy_AndroidOS_SAgnt_Q_MTB{
	meta:
		description = "TrojanSpy:AndroidOS/SAgnt.Q!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {47 65 74 41 6c 6c 43 6f 6e 74 61 63 74 73 } //01 00 
		$a_01_1 = {5f 73 6d 73 6d 65 73 73 61 67 65 73 31 } //01 00 
		$a_01_2 = {43 61 6c 6c 4c 6f 67 57 72 61 70 70 65 72 } //01 00 
		$a_01_3 = {2d 64 65 76 69 63 65 69 6e 66 6f 2e 74 78 74 } //01 00 
		$a_01_4 = {53 6d 73 57 72 61 70 70 65 72 } //01 00 
		$a_01_5 = {73 63 72 65 65 6e 72 65 63 6f 72 64 } //00 00 
	condition:
		any of ($a_*)
 
}