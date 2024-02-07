
rule TrojanDropper_O97M_Hancitor_HAM_MTB{
	meta:
		description = "TrojanDropper:O97M/Hancitor.HAM!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {57 30 72 64 2e 64 6c 6c } //01 00  W0rd.dll
		$a_03_1 = {26 20 70 75 73 68 73 74 72 20 26 20 22 6c 6c 22 20 26 20 22 2c 22 20 26 20 22 44 6c 6c 22 20 26 20 90 02 10 20 26 20 22 72 65 67 69 73 74 65 72 53 65 72 76 65 72 22 90 00 } //01 00 
		$a_03_2 = {43 61 6c 6c 20 72 65 67 73 72 76 61 2e 53 68 65 6c 6c 45 78 65 63 75 74 65 28 90 02 15 2c 20 22 20 22 2c 20 53 57 5f 53 48 4f 57 4e 4f 52 4d 41 4c 29 90 00 } //01 00 
		$a_01_3 = {44 69 6d 20 72 65 67 73 72 76 61 20 41 73 20 4e 65 77 20 53 68 65 6c 6c 33 32 2e 53 68 65 6c 6c } //01 00  Dim regsrva As New Shell32.Shell
		$a_03_4 = {53 75 62 20 67 6f 74 6f 64 6f 77 6e 28 29 90 0c 02 00 43 61 6c 6c 20 67 6f 74 6f 74 77 6f 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}