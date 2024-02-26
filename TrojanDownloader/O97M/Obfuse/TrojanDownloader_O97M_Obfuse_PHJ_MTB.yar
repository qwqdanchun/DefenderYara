
rule TrojanDownloader_O97M_Obfuse_PHJ_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.PHJ!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {53 6f 75 72 63 65 20 68 74 74 60 70 3a 2f 2f 31 38 2e 31 39 35 2e 31 34 33 2e 31 38 33 2f 37 2f 37 2f 49 4d 47 5f 90 02 14 2e 65 60 78 65 90 00 } //01 00 
		$a_03_1 = {2d 44 65 73 74 69 6e 61 74 69 6f 6e 20 43 3a 5c 55 73 65 72 73 5c 50 75 62 6c 69 63 5c 44 6f 63 75 6d 65 6e 74 73 5c 90 02 14 2e 65 60 78 65 90 00 } //01 00 
		$a_01_2 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 73 68 65 65 65 20 26 20 22 6c 2e 61 70 70 6c 69 63 61 74 69 6f 6e 22 29 } //01 00  = CreateObject(sheee & "l.application")
		$a_01_3 = {2e 4f 70 65 6e 28 62 65 68 61 76 69 6f 72 65 78 61 63 74 6c 79 29 } //00 00  .Open(behaviorexactly)
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_O97M_Obfuse_PHJ_MTB_2{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.PHJ!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,11 00 11 00 11 00 00 01 00 "
		
	strings :
		$a_01_0 = {3d 20 45 6e 76 69 72 6f 6e 28 22 4c 6f 63 61 6c 41 70 70 44 61 74 61 22 29 20 26 20 22 5c 74 68 69 6e 6b 2d 63 65 6c 6c 22 } //01 00  = Environ("LocalAppData") & "\think-cell"
		$a_01_1 = {26 20 22 5c 74 65 73 74 2e 64 6c 6c 22 } //01 00  & "\test.dll"
		$a_01_2 = {3d 20 22 6d 6f 6e 22 } //01 00  = "mon"
		$a_01_3 = {3d 20 22 44 6f 77 6e 22 } //01 00  = "Down"
		$a_01_4 = {3d 20 22 6f 46 69 6c 65 41 22 } //01 00  = "oFileA"
		$a_01_5 = {3d 20 22 6c 6c 33 32 22 } //01 00  = "ll32"
		$a_01_6 = {3d 20 22 6c 6c 45 78 65 22 } //01 00  = "llExe"
		$a_01_7 = {3d 20 22 72 75 6e 22 } //01 00  = "run"
		$a_01_8 = {3d 20 22 73 3a 2f 2f 22 } //01 00  = "s://"
		$a_01_9 = {3d 20 22 65 2e 22 } //01 00  = "e."
		$a_01_10 = {3d 20 22 61 72 69 22 } //01 00  = "ari"
		$a_01_11 = {3d 20 22 6f 6d 22 } //01 00  = "om"
		$a_01_12 = {3d 20 22 6f 67 73 2e 22 } //01 00  = "ogs."
		$a_01_13 = {22 4a 4a 43 43 43 4a 4a 22 22 2c 20 30 2c 20 22 22 6f 70 65 6e 22 } //01 00  "JJCCCJJ"", 0, ""open"
		$a_01_14 = {53 68 65 65 74 31 2e 41 63 74 69 76 61 74 65 } //01 00  Sheet1.Activate
		$a_01_15 = {52 75 6e 20 22 } //01 00  Run "
		$a_01_16 = {45 6e 76 69 72 6f 6e 28 22 4e 55 4d 42 45 52 5f 4f 46 5f 50 52 4f 43 45 53 53 4f 52 53 22 29 20 3c 20 34 20 54 68 65 6e } //00 00  Environ("NUMBER_OF_PROCESSORS") < 4 Then
	condition:
		any of ($a_*)
 
}