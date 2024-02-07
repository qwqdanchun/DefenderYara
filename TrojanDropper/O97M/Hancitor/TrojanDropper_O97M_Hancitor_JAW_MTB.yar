
rule TrojanDropper_O97M_Hancitor_JAW_MTB{
	meta:
		description = "TrojanDropper:O97M/Hancitor.JAW!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {3d 20 22 5c 53 74 61 22 20 26 20 22 74 69 63 2e 64 } //01 00  = "\Sta" & "tic.d
		$a_01_1 = {43 61 6c 6c 20 73 74 65 74 70 74 77 77 6f } //01 00  Call stetptwwo
		$a_01_2 = {43 61 6c 6c 20 68 68 68 68 68 } //01 00  Call hhhhh
		$a_01_3 = {44 69 6d 20 70 75 73 20 41 73 20 53 74 72 69 6e 67 } //01 00  Dim pus As String
		$a_01_4 = {44 69 6d 20 70 61 66 68 20 41 73 20 53 74 72 69 6e 67 } //01 00  Dim pafh As String
		$a_01_5 = {26 20 6a 73 64 20 26 20 22 6c 22 20 26 } //01 00  & jsd & "l" &
		$a_03_6 = {76 62 4e 75 6c 6c 53 74 72 69 6e 67 2c 20 53 57 5f 53 48 4f 57 4e 4f 52 4d 41 4c 90 0c 02 00 45 6e 64 20 49 66 90 0c 02 00 45 6e 64 20 53 75 62 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}