
rule VirTool_O97M_McPak_F_MTB{
	meta:
		description = "VirTool:O97M/McPak.F!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_02_0 = {2c 20 22 37 37 90 02 05 39 30 90 02 05 31 34 34 90 00 } //1
		$a_00_1 = {45 6e 76 69 72 6f 6e 28 22 41 70 70 44 61 74 61 22 29 } //1 Environ("AppData")
		$a_02_2 = {50 72 69 76 61 74 65 20 44 65 63 6c 61 72 65 90 02 10 53 75 62 90 02 20 2e 61 73 64 90 00 } //1
		$a_00_3 = {53 63 72 69 70 74 69 6e 67 2e 46 69 6c 65 53 79 73 74 65 6d 4f 62 6a 65 63 74 } //1 Scripting.FileSystemObject
	condition:
		((#a_02_0  & 1)*1+(#a_00_1  & 1)*1+(#a_02_2  & 1)*1+(#a_00_3  & 1)*1) >=4
 
}
rule VirTool_O97M_McPak_F_MTB_2{
	meta:
		description = "VirTool:O97M/McPak.F!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_02_0 = {45 6e 76 69 72 6f 6e 28 22 41 70 70 44 61 74 61 22 29 90 02 10 26 90 00 } //1
		$a_02_1 = {4f 70 65 6e 54 65 78 74 46 69 6c 65 28 90 02 10 2c 20 32 2c 20 54 72 75 65 90 00 } //1
		$a_02_2 = {50 72 69 76 61 74 65 20 44 65 63 6c 61 72 65 90 02 20 53 75 62 90 02 20 4c 69 62 90 00 } //1
		$a_02_3 = {43 68 72 24 28 56 61 6c 28 22 26 48 22 20 26 20 4d 69 64 24 28 90 02 20 2c 20 90 02 20 2c 20 32 90 00 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_02_3  & 1)*1) >=4
 
}