
rule TrojanDropper_O97M_Hancitor_HAI_MTB{
	meta:
		description = "TrojanDropper:O97M/Hancitor.HAI!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {57 30 72 64 2e 64 6c 6c } //01 00  W0rd.dll
		$a_01_1 = {26 20 6a 73 64 20 26 } //01 00  & jsd &
		$a_01_2 = {26 20 22 44 6c 6c 22 20 26 20 22 55 6e 72 65 67 69 73 74 65 72 53 65 72 76 65 72 22 } //01 00  & "Dll" & "UnregisterServer"
		$a_01_3 = {44 69 6d 20 70 69 66 70 61 66 20 41 73 20 53 74 72 69 6e 67 } //01 00  Dim pifpaf As String
		$a_03_4 = {53 75 62 20 67 6f 74 6f 64 6f 77 6e 28 29 90 0c 02 00 43 61 6c 6c 20 67 6f 74 6f 74 77 6f 90 00 } //01 00 
		$a_03_5 = {2e 74 6d 70 22 20 41 73 20 66 75 90 0c 02 00 45 6e 64 20 53 75 62 90 00 } //01 00 
		$a_03_6 = {43 61 6c 6c 20 73 73 73 73 90 0c 02 00 44 69 6d 20 70 75 73 68 73 74 72 20 41 73 20 53 74 72 69 6e 67 90 00 } //01 00 
		$a_01_7 = {43 61 6c 6c 20 72 65 67 73 72 76 61 2e 53 68 65 6c 6c 45 78 65 63 75 74 65 28 66 61 2c } //00 00  Call regsrva.ShellExecute(fa,
	condition:
		any of ($a_*)
 
}