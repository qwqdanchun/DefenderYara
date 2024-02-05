
rule VirTool_O97M_Empire_A{
	meta:
		description = "VirTool:O97M/Empire.A,SIGNATURE_TYPE_MACROHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_00_0 = {53 79 73 54 65 4d 2e 58 4d 4c 2e 58 6d 4c 44 4f 63 55 4d 45 6e 74 } //01 00 
		$a_00_1 = {2e 4c 4f 41 44 28 27 68 74 74 70 } //01 00 
		$a_00_2 = {3a 3a 55 54 46 38 2e 67 65 54 42 79 54 45 73 28 } //01 00 
		$a_00_3 = {3a 3a 46 52 4f 4d 42 61 73 65 36 34 53 74 72 69 6e 47 28 } //01 00 
		$a_00_4 = {53 65 63 55 52 69 74 79 2e 43 52 59 70 74 4f 47 52 41 70 48 79 2e 41 45 73 4d 61 6e 61 67 65 44 } //01 00 
		$a_00_5 = {28 29 2e 54 52 41 4e 53 46 6f 52 4d 46 49 4e 61 4c 42 4c 6f 43 6b 28 } //01 00 
		$a_00_6 = {7c 69 45 58 } //00 00 
		$a_00_7 = {96 34 00 00 00 } //00 30 
	condition:
		any of ($a_*)
 
}