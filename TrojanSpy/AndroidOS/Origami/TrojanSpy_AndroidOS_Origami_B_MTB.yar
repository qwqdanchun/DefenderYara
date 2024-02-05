
rule TrojanSpy_AndroidOS_Origami_B_MTB{
	meta:
		description = "TrojanSpy:AndroidOS/Origami.B!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {31 79 65 45 4a 39 45 61 37 64 61 6c 68 5a 49 65 35 44 56 6e 69 77 3d 3d } //01 00 
		$a_00_1 = {66 49 4f 65 54 4e 4d 76 69 62 5a 32 39 4f 74 6f 6c 63 33 35 73 51 3d 3d } //01 00 
		$a_00_2 = {43 63 74 54 72 61 6e 73 70 6f 72 74 42 61 63 6b 65 6e 64 } //01 00 
		$a_00_3 = {4c 63 6f 6d 2f 67 65 6e 74 77 6f 2f 69 6e 66 6f 2f 69 6f 69 6f 2f 77 72 6e 67 } //01 00 
		$a_00_4 = {4c 65 2f 62 2f 61 2f 66 2f 62 2f 61 } //00 00 
		$a_00_5 = {5d 04 00 } //00 31 
	condition:
		any of ($a_*)
 
}