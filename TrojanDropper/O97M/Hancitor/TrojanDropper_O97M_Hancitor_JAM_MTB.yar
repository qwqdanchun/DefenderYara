
rule TrojanDropper_O97M_Hancitor_JAM_MTB{
	meta:
		description = "TrojanDropper:O97M/Hancitor.JAM!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 74 61 74 69 63 2e 64 6c 6c } //01 00  Static.dll
		$a_01_1 = {53 65 6c 65 63 74 69 6f 6e 2e 4d 6f 76 65 44 6f 77 6e 20 55 6e 69 74 3a 3d 77 64 4c 69 6e 65 2c 20 43 6f 75 6e 74 3a 3d 31 } //01 00  Selection.MoveDown Unit:=wdLine, Count:=1
		$a_01_2 = {43 61 6c 6c 20 73 74 65 74 70 74 77 77 6f } //01 00  Call stetptwwo
		$a_01_3 = {43 61 6c 6c 20 68 68 68 68 68 } //01 00  Call hhhhh
		$a_01_4 = {26 20 6a 73 64 20 26 } //01 00  & jsd &
		$a_01_5 = {44 69 6d 20 72 65 67 73 72 76 61 20 41 73 20 4e 65 77 20 53 68 65 6c 6c 33 32 2e 53 68 65 6c 6c } //01 00  Dim regsrva As New Shell32.Shell
		$a_01_6 = {43 61 6c 6c 20 72 65 67 73 72 76 61 2e 53 68 65 6c 6c 45 78 65 63 75 74 65 28 66 61 2c 20 79 79 2c 20 22 20 22 2c 20 53 57 5f 53 48 4f 57 4e 4f 52 4d 41 4c 29 } //00 00  Call regsrva.ShellExecute(fa, yy, " ", SW_SHOWNORMAL)
	condition:
		any of ($a_*)
 
}