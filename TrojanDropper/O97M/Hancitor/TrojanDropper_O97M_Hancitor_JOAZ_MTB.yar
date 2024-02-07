
rule TrojanDropper_O97M_Hancitor_JOAZ_MTB{
	meta:
		description = "TrojanDropper:O97M/Hancitor.JOAZ!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {43 61 6c 6c 20 6f 6f 61 73 70 70 90 0c 02 00 45 6e 64 20 53 75 62 90 00 } //01 00 
		$a_03_1 = {43 61 6c 6c 20 6f 69 31 90 0c 02 00 43 61 6c 6c 20 6f 69 63 90 0c 02 00 43 61 6c 6c 20 6b 62 76 63 90 00 } //01 00 
		$a_03_2 = {44 6f 63 75 6d 65 6e 74 73 2e 4f 70 65 6e 20 66 69 6c 65 4e 61 6d 65 3a 3d 76 78 63 20 26 20 22 90 02 08 2e 64 22 20 26 20 22 6f 63 22 2c 20 50 61 73 73 77 6f 72 64 44 6f 63 75 6d 65 6e 74 3a 3d 22 64 6f 6e 74 74 6f 75 63 68 6d 65 90 00 } //01 00 
		$a_01_3 = {76 78 63 20 3d 20 76 78 63 20 26 20 22 68 74 74 } //01 00  vxc = vxc & "htt
		$a_01_4 = {53 75 62 20 6b 62 76 63 28 29 } //00 00  Sub kbvc()
	condition:
		any of ($a_*)
 
}