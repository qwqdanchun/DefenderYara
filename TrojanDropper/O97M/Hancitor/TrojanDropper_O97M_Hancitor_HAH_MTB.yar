
rule TrojanDropper_O97M_Hancitor_HAH_MTB{
	meta:
		description = "TrojanDropper:O97M/Hancitor.HAH!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {49 66 20 44 69 72 28 6e 6f 74 68 69 6e 67 73 20 26 20 22 5c 22 20 26 20 22 57 30 72 64 2e 64 6c 6c 22 29 20 3d 20 22 22 20 54 68 65 6e } //01 00 
		$a_03_1 = {4e 61 6d 65 20 73 66 20 26 20 22 5c 90 02 08 2e 74 6d 70 22 20 41 73 20 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 41 74 74 61 63 68 65 64 54 65 6d 70 6c 61 74 65 2e 50 61 74 68 20 26 20 22 5c 22 20 26 20 22 57 30 72 64 2e 64 6c 6c 22 90 00 } //01 00 
		$a_01_2 = {79 79 20 3d 20 67 6c 6f 70 73 20 26 20 79 79 20 26 20 70 75 73 68 73 74 72 20 26 20 22 6c 6c 22 20 26 20 22 2c 22 20 26 20 22 44 6c 6c 22 20 26 20 22 55 6e 72 65 67 69 73 74 65 72 53 65 72 76 65 72 22 } //01 00 
		$a_01_3 = {66 61 20 3d 20 66 70 73 20 26 20 22 75 22 20 26 20 6a 73 64 20 26 20 22 6c 6c 22 20 26 20 68 68 } //00 00 
	condition:
		any of ($a_*)
 
}