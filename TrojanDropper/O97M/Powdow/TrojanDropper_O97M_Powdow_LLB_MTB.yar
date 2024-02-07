
rule TrojanDropper_O97M_Powdow_LLB_MTB{
	meta:
		description = "TrojanDropper:O97M/Powdow.LLB!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {22 6a 73 22 } //01 00  "js"
		$a_01_1 = {26 20 22 65 22 29 } //01 00  & "e")
		$a_03_2 = {44 65 62 75 67 2e 50 72 69 6e 74 20 43 61 6c 6c 42 79 4e 61 6d 65 28 90 02 15 2c 20 90 02 15 2c 20 56 62 4d 65 74 68 6f 64 2c 20 90 02 15 20 26 20 43 68 72 28 90 02 10 29 20 26 20 90 02 15 20 26 20 90 02 15 20 26 20 43 68 72 28 90 02 10 29 20 26 20 22 20 22 20 26 90 00 } //01 00 
		$a_01_3 = {54 68 69 73 57 6f 72 6b 62 6f 6f 6b 2e 53 68 65 65 74 73 2e 41 64 64 } //01 00  ThisWorkbook.Sheets.Add
		$a_01_4 = {2e 56 61 6c 75 65 20 3d 20 56 42 41 2e 41 72 72 61 79 28 22 23 22 2c 20 22 53 68 65 65 74 22 29 } //00 00  .Value = VBA.Array("#", "Sheet")
	condition:
		any of ($a_*)
 
}