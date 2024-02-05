
rule HackTool_PowerShell_PsCredinject_A_{
	meta:
		description = "HackTool:PowerShell/PsCredinject.A!!PsCredinject.A,SIGNATURE_TYPE_ARHSTR_EXT,05 00 05 00 07 00 00 01 00 "
		
	strings :
		$a_00_0 = {49 00 6e 00 76 00 6f 00 6b 00 65 00 2d 00 43 00 72 00 65 00 64 00 65 00 6e 00 74 00 69 00 61 00 6c 00 49 00 6e 00 6a 00 65 00 63 00 74 00 69 00 6f 00 6e 00 } //01 00 
		$a_00_1 = {23 00 53 00 74 00 61 00 72 00 74 00 20 00 77 00 69 00 6e 00 6c 00 6f 00 67 00 6f 00 6e 00 2e 00 65 00 78 00 65 00 20 00 61 00 73 00 20 00 53 00 59 00 53 00 54 00 45 00 4d 00 } //01 00 
		$a_00_2 = {24 00 57 00 69 00 6e 00 4c 00 6f 00 67 00 6f 00 6e 00 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 49 00 64 00 20 00 3d 00 20 00 43 00 72 00 65 00 61 00 74 00 65 00 2d 00 57 00 69 00 6e 00 4c 00 6f 00 67 00 6f 00 6e 00 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 } //01 00 
		$a_00_3 = {24 00 4c 00 6f 00 67 00 6f 00 6e 00 90 00 02 00 04 00 42 00 69 00 74 00 5f 00 42 00 61 00 73 00 65 00 36 00 34 00 20 00 3d 00 20 00 22 00 54 00 56 00 71 00 } //01 00 
		$a_00_4 = {24 00 57 00 69 00 6e 00 4c 00 6f 00 67 00 6f 00 6e 00 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 49 00 64 00 20 00 3d 00 20 00 28 00 47 00 65 00 74 00 2d 00 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 20 00 2d 00 4e 00 61 00 6d 00 65 00 20 00 22 00 77 00 69 00 6e 00 6c 00 6f 00 67 00 6f 00 6e 00 22 00 29 00 5b 00 30 00 5d 00 2e 00 49 00 64 00 } //01 00 
		$a_00_5 = {49 00 6e 00 76 00 6f 00 6b 00 65 00 2d 00 52 00 65 00 66 00 6c 00 65 00 63 00 74 00 69 00 76 00 65 00 50 00 45 00 49 00 6e 00 6a 00 65 00 63 00 74 00 69 00 6f 00 6e 00 } //01 00 
		$a_00_6 = {24 00 50 00 69 00 70 00 65 00 2e 00 57 00 61 00 69 00 74 00 46 00 6f 00 72 00 43 00 6f 00 6e 00 6e 00 65 00 63 00 74 00 69 00 6f 00 6e 00 28 00 29 00 } //00 00 
	condition:
		any of ($a_*)
 
}