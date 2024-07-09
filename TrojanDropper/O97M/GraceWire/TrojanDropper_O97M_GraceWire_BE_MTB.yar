
rule TrojanDropper_O97M_GraceWire_BE_MTB{
	meta:
		description = "TrojanDropper:O97M/GraceWire.BE!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {49 66 20 72 65 73 75 6c 74 20 3d 20 52 43 50 4e 44 5f 46 4d 4f 44 5f 4f 4b 20 54 68 65 6e } //1 If result = RCPND_FMOD_OK Then
		$a_03_1 = {46 6f 72 20 69 69 20 3d 20 30 20 54 6f 20 55 42 6f 75 6e 64 28 73 54 29 20 2d 20 32 [0-15] 74 74 20 3d 20 74 74 20 26 20 73 54 28 69 69 29 20 26 20 22 5c 22 [0-08] 4e 65 78 74 20 69 69 } //1
		$a_01_2 = {63 20 3d 20 4d 69 2e 64 24 28 43 6f 6d 6d 61 2e 6e 64 24 2c 20 69 2c 20 31 29 } //1 c = Mi.d$(Comma.nd$, i, 1)
		$a_03_3 = {45 78 65 63 75 74 65 45 78 63 65 6c 34 4d 61 63 72 6f 20 6f 66 62 6c 20 2b 20 22 22 22 2c 22 22 [0-07] 22 22 2c 22 22 4a 22 22 29 22 } //1
		$a_03_4 = {4b 69 6c 6c 20 4b 65 79 [0-08] 4e 65 78 74 20 4b 65 79 [0-08] 4f 6e 20 45 72 72 6f 72 20 47 6f 54 6f 20 30 90 0c 02 00 45 6e 64 20 53 75 62 } //1
		$a_01_5 = {26 20 55 73 65 72 46 6f 72 6d 36 2e 4c 61 62 65 6c 31 2e 54 61 67 2c 20 6f 66 62 6c 2c } //1 & UserForm6.Label1.Tag, ofbl,
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}