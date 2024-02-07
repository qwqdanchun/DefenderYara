
rule TrojanDropper_O97M_Hancitor_IAB_MTB{
	meta:
		description = "TrojanDropper:O97M/Hancitor.IAB!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {57 30 72 64 2e 64 6c 6c } //01 00  W0rd.dll
		$a_01_1 = {43 61 6c 6c 20 72 65 67 73 72 76 61 2e 53 68 65 6c 6c 45 78 65 63 75 74 65 28 66 61 2c 20 79 79 2c 20 22 20 22 2c 20 53 57 5f 53 48 4f 57 4e 4f 52 4d 41 4c 29 } //01 00  Call regsrva.ShellExecute(fa, yy, " ", SW_SHOWNORMAL)
		$a_01_2 = {44 69 6d 20 72 65 67 73 72 76 61 20 41 73 20 4e 65 77 20 53 68 65 6c 6c 33 32 2e 53 68 65 6c 6c } //01 00  Dim regsrva As New Shell32.Shell
		$a_01_3 = {43 61 6c 6c 20 68 68 68 68 68 } //01 00  Call hhhhh
		$a_01_4 = {44 69 6d 20 70 75 73 68 73 74 72 20 41 73 20 53 74 72 69 6e 67 } //01 00  Dim pushstr As String
		$a_01_5 = {43 61 6c 6c 20 73 74 65 74 70 74 77 77 6f } //01 00  Call stetptwwo
		$a_01_6 = {66 61 20 3d 20 66 70 73 20 26 20 22 75 22 20 26 20 6a 73 64 20 26 20 22 6c 6c 22 20 26 20 68 68 } //00 00  fa = fps & "u" & jsd & "ll" & hh
	condition:
		any of ($a_*)
 
}