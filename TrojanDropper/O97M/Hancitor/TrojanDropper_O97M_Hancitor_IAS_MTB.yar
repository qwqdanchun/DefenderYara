
rule TrojanDropper_O97M_Hancitor_IAS_MTB{
	meta:
		description = "TrojanDropper:O97M/Hancitor.IAS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {57 30 22 20 26 20 22 72 22 20 26 20 22 64 2e 64 22 20 26 20 22 6c 22 20 26 20 22 6c } //01 00  W0" & "r" & "d.d" & "l" & "l
		$a_01_1 = {53 75 62 20 68 68 68 68 68 28 29 } //01 00  Sub hhhhh()
		$a_01_2 = {44 69 6d 20 70 6f 73 6c 20 41 73 20 53 74 72 69 6e 67 } //01 00  Dim posl As String
		$a_01_3 = {43 61 6c 6c 20 66 6b 65 } //01 00  Call fke
		$a_01_4 = {6a 6f 73 20 3d 20 70 6f 73 6c } //01 00  jos = posl
		$a_01_5 = {43 61 6c 6c 20 47 65 74 6d 65 28 4c 65 66 74 28 6b 6c 61 73 2c 20 6e 74 67 73 29 20 26 20 79 65 72 29 } //01 00  Call Getme(Left(klas, ntgs) & yer)
		$a_01_6 = {44 69 6d 20 6a 6f 73 20 41 73 20 53 74 72 69 6e 67 } //00 00  Dim jos As String
	condition:
		any of ($a_*)
 
}