
rule TrojanSpy_AndroidOS_DroidDream_A{
	meta:
		description = "TrojanSpy:AndroidOS/DroidDream.A,SIGNATURE_TYPE_DEXHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {44 6f 77 6e 6c 6f 61 64 50 72 6f 76 69 64 65 72 73 4d 61 6e 61 67 65 72 2e 61 70 6b } //01 00 
		$a_01_1 = {73 71 6c 69 74 65 2e 64 62 } //01 00 
		$a_01_2 = {2f 72 6f 6f 74 2f 41 6c 61 72 6d 52 65 63 65 69 76 65 72 } //01 00 
		$a_01_3 = {67 6f 34 72 6f 6f 74 } //01 00 
		$a_01_4 = {72 61 67 65 61 67 61 69 6e 73 74 74 68 65 63 61 67 65 } //00 00 
	condition:
		any of ($a_*)
 
}