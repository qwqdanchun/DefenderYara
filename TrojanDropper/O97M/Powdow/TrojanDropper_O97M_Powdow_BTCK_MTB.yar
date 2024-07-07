
rule TrojanDropper_O97M_Powdow_BTCK_MTB{
	meta:
		description = "TrojanDropper:O97M/Powdow.BTCK!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {6b 61 72 6f 6c 69 6e 65 28 90 02 20 29 90 02 20 20 3d 20 54 68 69 73 44 6f 63 75 6d 65 6e 74 2e 90 02 20 57 69 74 68 20 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 90 0c 02 00 2e 53 61 76 65 41 73 32 20 46 69 6c 65 4e 61 6d 65 90 00 } //1
		$a_03_1 = {3d 20 2e 42 75 69 6c 74 49 6e 44 6f 63 75 6d 65 6e 74 50 72 6f 70 65 72 74 69 65 73 28 22 6b 65 79 77 6f 72 64 73 22 29 2e 56 61 6c 75 65 90 0c 02 00 45 6e 64 20 57 69 74 68 90 0c 02 00 6b 65 79 77 6f 72 64 73 20 3d 20 53 74 72 52 65 76 65 72 73 65 28 90 02 20 29 90 0c 02 00 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 43 6f 6e 74 65 6e 74 2e 46 69 6e 64 2e 45 78 65 63 75 74 65 20 46 69 6e 64 54 65 78 74 3a 3d 22 24 31 22 2c 20 52 65 70 6c 61 63 65 57 69 74 68 3a 3d 90 02 20 2c 20 52 65 70 6c 61 63 65 3a 3d 77 64 52 65 70 6c 61 63 65 41 6c 6c 90 0c 02 00 45 6e 64 20 46 75 6e 63 74 69 6f 6e 90 00 } //1
		$a_03_2 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 77 73 63 72 69 70 74 2e 73 68 65 6c 6c 22 29 90 02 20 2e 65 78 65 63 20 22 63 3a 5c 77 69 6e 64 6f 77 73 5c 65 78 70 6c 6f 72 65 72 20 22 20 26 20 90 02 20 45 6e 64 20 46 75 6e 63 74 69 6f 6e 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}