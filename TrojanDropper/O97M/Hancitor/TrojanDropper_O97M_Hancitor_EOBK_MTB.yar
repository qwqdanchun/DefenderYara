
rule TrojanDropper_O97M_Hancitor_EOBK_MTB{
	meta:
		description = "TrojanDropper:O97M/Hancitor.EOBK!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 75 62 20 6e 61 6d 28 70 61 66 73 20 41 73 20 53 74 72 69 6e 67 2c 20 61 61 61 61 20 41 73 20 53 74 72 69 6e 67 29 } //01 00 
		$a_01_1 = {43 61 6c 6c 20 6f 75 73 78 28 61 61 61 61 29 } //01 00 
		$a_01_2 = {44 69 6d 20 6f 78 6c } //01 00 
		$a_01_3 = {6f 78 6c 20 3d 20 22 5c 72 65 66 6f 72 6d 22 20 26 20 22 2e 64 22 20 26 20 22 6f 63 22 } //01 00 
		$a_01_4 = {4e 61 6d 65 20 70 61 66 73 20 41 73 20 70 6c 73 20 26 20 6f 78 6c } //00 00 
	condition:
		any of ($a_*)
 
}