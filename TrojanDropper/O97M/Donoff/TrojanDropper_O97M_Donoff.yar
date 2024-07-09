
rule TrojanDropper_O97M_Donoff{
	meta:
		description = "TrojanDropper:O97M/Donoff,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 57 6f 72 22 20 26 20 22 64 2e 22 20 26 20 22 41 70 70 6c 69 63 61 74 69 6f 22 } //1 CreateObject("Wor" & "d." & "Applicatio"
		$a_01_1 = {26 20 22 2e 72 22 20 26 20 22 74 66 22 } //1 & ".r" & "tf"
		$a_01_2 = {3d 20 22 54 22 20 26 20 22 45 4d 22 } //1 = "T" & "EM"
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}
rule TrojanDropper_O97M_Donoff_2{
	meta:
		description = "TrojanDropper:O97M/Donoff,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {3d 20 41 72 72 61 79 28 22 43 4d 22 2c 20 22 44 2e 22 2c 20 22 45 78 22 2c 20 22 65 20 22 2c 20 22 2f 63 22 2c 20 22 20 22 22 22 2c 20 22 70 4f 22 2c 20 22 77 } //1 = Array("CM", "D.", "Ex", "e ", "/c", " """, "pO", "w
		$a_01_1 = {22 72 65 22 2c 20 22 61 64 22 2c 20 22 2e 70 22 2c 20 22 68 70 } //1 "re", "ad", ".p", "hp
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}
rule TrojanDropper_O97M_Donoff_3{
	meta:
		description = "TrojanDropper:O97M/Donoff,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_01_0 = {50 61 34 52 36 52 4f 2f 33 43 73 6d 4d 62 4d 4f 38 59 4e 4c 3a } //1 Pa4R6RO/3CsmMbMO8YNL:
		$a_01_1 = {57 4b 49 41 52 62 45 57 53 4b 48 72 41 6a 52 59 } //1 WKIARbEWSKHrAjRY
		$a_01_2 = {56 55 4a 4c 49 41 62 4c 52 4c 41 50 54 44 69 73 } //1 VUJLIAbLRLAPTDis
		$a_01_3 = {56 6c 4d 67 57 32 41 6f 52 43 45 39 39 61 } //1 VlMgW2AoRCE99a
		$a_01_4 = {58 64 51 45 55 46 4e 55 6e 46 6e 6e 69 65 32 65 35 63 } //1 XdQEUFNUnFnnie2e5c
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=4
 
}
rule TrojanDropper_O97M_Donoff_4{
	meta:
		description = "TrojanDropper:O97M/Donoff,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_02_0 = {2c 20 2c 20 43 42 79 74 65 28 22 26 22 20 2b 20 43 68 72 28 90 10 03 00 20 2d 20 90 10 03 00 29 20 26 } //1
		$a_02_1 = {53 74 72 52 65 76 65 72 73 65 28 22 61 70 78 45 22 29 20 2b 20 4d 69 64 28 22 [0-10] 6e 64 45 6e 76 69 72 [0-10] 22 2c 20 90 10 02 00 2c 20 37 29 20 2b 20 22 6f 6e 6d 65 6e 74 53 74 72 69 6e 67 73 22 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1) >=2
 
}
rule TrojanDropper_O97M_Donoff_5{
	meta:
		description = "TrojanDropper:O97M/Donoff,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {52 75 6e 20 90 1d 10 00 2c 20 28 28 90 10 10 00 20 90 04 01 04 2b 2f 2a 2d 20 90 10 10 00 29 20 90 04 01 04 2b 2f 2a 2d 20 28 90 10 10 00 20 90 04 01 04 2b 2f 2a 2d 20 90 10 10 00 29 29 2c 20 28 28 90 10 10 00 20 90 04 01 04 2b 2f 2a 2d 20 90 10 10 00 29 20 90 04 01 04 2b 2f 2a 2d 20 28 2d 90 10 10 00 20 90 04 01 04 2b 2f 2a 2d 20 90 10 10 00 29 29 } //1
		$a_03_1 = {29 20 2b 20 31 29 29 29 29 2c 20 28 28 90 10 10 00 20 90 04 01 04 2b 2f 2a 2d 20 90 10 10 00 29 29 29 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}
rule TrojanDropper_O97M_Donoff_6{
	meta:
		description = "TrojanDropper:O97M/Donoff,SIGNATURE_TYPE_MACROHSTR_EXT,07 00 07 00 05 00 00 "
		
	strings :
		$a_03_0 = {52 65 44 69 6d 20 [0-20] 28 28 28 28 55 42 6f 75 6e 64 28 [0-20] 29 20 2b 20 31 29 20 5c 20 90 05 09 04 61 2d 7a 34 29 20 2a 20 33 29 20 2d 20 31 29 } //3
		$a_03_1 = {3d 20 43 61 6c 6c 42 79 4e 61 6d 65 28 [0-20] 2c 20 22 47 65 74 53 70 65 63 69 61 6c 46 6f 6c 64 65 72 22 2c 20 } //1
		$a_03_2 = {26 20 22 5c [0-20] 2e 65 78 65 22 } //2
		$a_03_3 = {2b 20 22 5c 22 20 2b 20 [0-36] 2e 65 (58|78) (|) 45 65 22 } //2
		$a_03_4 = {53 65 74 20 [0-20] 20 3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 57 53 63 72 69 70 74 2e 53 68 65 6c 6c 22 29 } //1
	condition:
		((#a_03_0  & 1)*3+(#a_03_1  & 1)*1+(#a_03_2  & 1)*2+(#a_03_3  & 1)*2+(#a_03_4  & 1)*1) >=7
 
}
rule TrojanDropper_O97M_Donoff_7{
	meta:
		description = "TrojanDropper:O97M/Donoff,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {52 75 6e 20 90 1d 10 00 2c 20 28 28 90 05 01 01 2d 90 0f 03 00 90 10 10 00 20 90 04 01 04 2b 2f 2a 2d 20 90 0f 03 00 90 10 10 00 29 20 90 04 01 04 2b 2a 2f 2d 20 28 90 05 01 01 2d 90 0f 03 00 90 10 10 00 20 90 04 01 04 2b 2a 2f 2d 20 90 0f 03 00 90 10 10 00 29 29 2c 20 28 28 90 05 01 01 2d 90 0f 03 00 90 10 10 00 20 90 04 01 04 2b 2a 2f 2d 20 90 0f 03 00 90 10 10 00 29 20 90 04 01 04 2b 2a 2f 2d 20 28 90 05 01 01 2d 90 0f 03 00 90 10 10 00 20 90 04 01 04 2b 2a 2f 2d 20 90 0f 03 00 90 10 10 00 29 29 } //1
		$a_03_1 = {29 20 2b 20 31 29 29 29 29 2c 20 28 28 90 05 01 01 2d 90 0f 03 00 90 10 10 00 20 90 04 01 04 2b 2f 2a 2d 20 90 0f 03 00 90 10 08 00 29 29 29 90 0c 03 00 90 1d 10 00 20 3d 20 90 1d 10 00 28 90 1d 10 00 29 [0-30] 90 0c 03 00 90 1b 08 28 90 1b 09 29 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}
rule TrojanDropper_O97M_Donoff_8{
	meta:
		description = "TrojanDropper:O97M/Donoff,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {29 29 29 29 29 29 0d 0a 4e 65 78 74 20 90 1c 02 00 90 1d 10 00 90 0a 80 00 20 3d 20 90 1c 02 00 90 1d 10 00 28 90 1c 02 00 90 1d 10 00 28 90 1b 00 90 1d 10 00 29 2c 20 28 90 1c 02 00 90 1d 10 00 28 90 1c 02 00 90 1d 10 00 28 28 90 1b 09 90 1d 10 00 28 90 1c 02 00 90 1d 10 00 29 20 2b 20 90 1b 09 90 1d 10 00 28 90 1c 02 00 90 1d 10 00 29 29 2c 20 28 28 90 05 01 04 2b 2a 2f 2d 90 0f 03 00 90 10 10 00 20 90 04 01 04 2b 2a 2f 2d 20 90 0f 03 00 90 10 10 00 29 } //1
		$a_03_1 = {45 6e 64 20 53 65 6c 65 63 74 0d 0a (45 6e 64 20 49 66 0d 0a|) 49 66 20 90 1c 03 00 90 1d 10 00 20 2b 20 90 1c 03 00 90 1d 10 00 20 3e 20 90 1c 03 00 90 1d 10 00 20 54 68 65 6e 20 90 1b 03 90 1d 10 00 20 3d 20 90 1b 05 90 1d 10 00 20 2d 20 90 1b 01 90 1d 10 00 } //1
		$a_03_2 = {29 20 2b 20 31 29 29 29 29 2c 20 28 28 90 05 01 04 2b 2a 2f 2d 90 0f 03 00 90 10 10 00 20 90 04 01 04 2b 2a 2f 2d 20 90 0f 03 00 90 10 10 00 29 29 29 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}