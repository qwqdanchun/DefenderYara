
rule TrojanSpy_AndroidOS_Spynote_U{
	meta:
		description = "TrojanSpy:AndroidOS/Spynote.U,SIGNATURE_TYPE_DEXHSTR_EXT,04 00 04 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 6f 6e 6e 65 63 74 65 64 44 6f 77 6e 6c 6f 61 64 4d 61 6e 61 67 65 72 } //01 00 
		$a_01_1 = {79 67 64 79 65 67 2f 73 79 73 74 79 67 64 79 65 67 65 6d 2f 62 69 79 67 64 79 65 67 6e 2f 73 63 72 79 67 64 79 65 67 65 65 6e 63 61 79 67 64 79 65 67 70 20 2d 70 20 79 67 64 79 65 67 2f 73 64 63 61 79 67 64 79 65 67 72 64 2f 72 6f 79 67 64 79 65 67 6f 74 53 55 2e 79 67 64 79 65 67 70 6e 67 } //01 00 
		$a_01_2 = {53 74 61 72 74 53 65 72 76 69 63 65 47 4c 6f 63 61 74 69 6f 6e 28 29 } //01 00 
		$a_01_3 = {2f 63 68 79 67 64 79 65 67 2f 63 68 32 2e 79 67 64 79 65 67 70 68 70 3f 73 79 67 64 79 65 67 73 6c 3d } //02 00 
		$a_01_4 = {4c 63 6f 6d 2f 75 73 2f 6e 6f 74 65 2f 43 31 32 } //02 00 
		$a_01_5 = {4c 63 6f 6d 2f 75 73 2f 6e 6f 74 65 2f 62 } //00 00 
	condition:
		any of ($a_*)
 
}