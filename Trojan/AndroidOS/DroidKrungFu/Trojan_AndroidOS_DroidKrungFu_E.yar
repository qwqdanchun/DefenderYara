
rule Trojan_AndroidOS_DroidKrungFu_E{
	meta:
		description = "Trojan:AndroidOS/DroidKrungFu.E,SIGNATURE_TYPE_DEXHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {61 64 2e 67 6f 6e 67 66 75 2d 61 6e 64 72 6f 69 64 2e 63 6f 6d 3a 37 35 30 30 2f 61 64 2f 6e 77 65 62 2e 70 68 70 3f } //01 00 
		$a_01_1 = {63 6f 6d 2e 6e 6f 73 68 75 66 6f 75 2e 61 6e 64 72 6f 69 64 2e 73 75 } //01 00 
		$a_03_2 = {6e 61 64 70 2e 70 68 70 3f 76 3d 90 02 03 26 69 64 3d 61 6c 6c 90 00 } //01 00 
		$a_00_3 = {61 74 6f 6f 6c 73 2f 62 61 74 74 65 72 79 } //00 00 
	condition:
		any of ($a_*)
 
}