
rule TrojanDropper_O97M_Credoor_A{
	meta:
		description = "TrojanDropper:O97M/Credoor.A,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_03_0 = {45 73 66 69 6c 65 20 3d 20 45 6e 76 69 72 6f 6e 28 22 54 45 4d 50 22 29 20 26 20 22 5c 90 1c 02 00 90 1d 05 00 22 20 26 20 4d 69 6e 75 74 65 28 4e 6f 77 29 20 26 20 53 65 63 6f 6e 64 28 4e 6f 77 29 20 26 20 22 90 1c 02 00 90 1d 05 00 2e 90 03 03 02 68 74 61 6a 73 22 90 00 } //1
		$a_03_1 = {44 66 69 6c 65 20 3d 20 54 68 69 73 57 6f 72 6b 62 6f 6f 6b 2e 50 61 74 68 20 26 20 22 5c 90 01 10 90 02 70 2e 78 6c 73 22 90 00 } //1
		$a_03_2 = {44 66 69 6c 65 20 3d 20 45 6e 76 69 72 6f 6e 28 22 54 45 4d 50 22 29 20 26 20 22 5c 90 01 10 90 02 70 2e 78 6c 73 22 90 00 } //1
		$a_01_3 = {53 68 65 6c 6c 20 22 63 73 63 72 69 70 74 20 2f 45 3a 76 62 73 63 72 69 70 74 20 22 22 22 20 26 20 4a 73 66 69 6c 65 20 26 20 22 22 22 22 2c 20 76 62 48 69 64 65 } //1 Shell "cscript /E:vbscript """ & Jsfile & """", vbHide
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1) >=3
 
}