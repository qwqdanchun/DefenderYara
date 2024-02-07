
rule TrojanDownloader_O97M_Daoyap_C{
	meta:
		description = "TrojanDownloader:O97M/Daoyap.C,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {20 2b 20 22 2e 22 20 2b 20 22 65 22 20 2b 20 22 78 22 20 2b 20 22 65 } //01 00   + "." + "e" + "x" + "e
		$a_03_1 = {68 74 74 70 52 65 71 75 65 73 74 2e 4f 70 65 6e 20 22 47 22 20 2b 20 90 02 08 20 2b 20 22 45 54 22 90 00 } //01 00 
		$a_01_2 = {74 65 6d 70 46 6f 6c 64 65 72 20 3d 20 70 72 6f 63 65 73 73 45 6e 76 28 22 54 45 4d 22 20 2b 20 22 50 22 29 } //00 00  tempFolder = processEnv("TEM" + "P")
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_O97M_Daoyap_C_2{
	meta:
		description = "TrojanDownloader:O97M/Daoyap.C,SIGNATURE_TYPE_MACROHSTR_EXT,66 00 66 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {5a 61 72 20 3d 20 41 72 72 61 79 28 34 31 32 2c 20 34 32 34 } //01 00  Zar = Array(412, 424
		$a_01_1 = {4f 70 65 6e 20 22 47 45 54 22 2c 20 52 65 64 69 73 74 72 69 62 75 74 65 28 5a 61 72 2c 20 34 34 29 } //64 00  Open "GET", Redistribute(Zar, 44)
		$a_01_2 = {74 65 6d 70 46 69 6c 65 20 3d 20 74 65 6d 70 46 6f 6c 64 65 72 20 2b 20 22 5c 65 74 73 62 61 62 6b 2e 65 78 65 } //01 00  tempFile = tempFolder + "\etsbabk.exe
		$a_01_3 = {5a 61 72 20 3d 20 41 72 72 61 79 28 34 33 33 2c 20 34 34 35 2c 20 34 34 35 2c 20 34 34 31 } //01 00  Zar = Array(433, 445, 445, 441
		$a_01_4 = {2e 4f 70 65 6e 20 22 47 45 54 22 2c 20 52 65 64 69 73 74 72 69 62 75 74 65 28 5a 61 72 2c 20 34 37 29 2c 20 46 61 6c 73 65 } //00 00  .Open "GET", Redistribute(Zar, 47), False
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_O97M_Daoyap_C_3{
	meta:
		description = "TrojanDownloader:O97M/Daoyap.C,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {3d 20 22 68 22 20 26 20 43 68 72 28 31 31 36 29 20 26 20 43 68 72 28 31 31 36 29 20 26 20 43 68 72 28 31 31 32 29 20 26 20 43 68 72 28 35 38 29 20 26 20 22 2f 22 20 26 20 43 68 72 28 34 37 29 20 26 20 43 } //01 00  = "h" & Chr(116) & Chr(116) & Chr(112) & Chr(58) & "/" & Chr(47) & C
		$a_01_1 = {3d 20 22 68 22 20 26 20 22 74 22 20 26 20 43 68 72 28 31 31 36 29 20 26 20 43 68 72 28 31 31 32 29 20 26 20 43 68 72 28 35 38 29 20 26 20 43 68 72 28 34 37 29 20 26 20 43 68 72 28 34 37 29 20 26 } //01 00  = "h" & "t" & Chr(116) & Chr(112) & Chr(58) & Chr(47) & Chr(47) &
		$a_01_2 = {26 20 22 2e 22 20 26 20 43 68 72 28 31 30 31 29 20 26 20 43 68 72 28 31 32 30 29 20 26 20 43 68 72 28 31 30 31 29 } //01 00  & "." & Chr(101) & Chr(120) & Chr(101)
		$a_01_3 = {43 68 72 28 34 36 29 20 26 20 22 65 22 20 26 20 22 78 22 20 26 20 43 68 72 28 31 30 31 29 } //01 00  Chr(46) & "e" & "x" & Chr(101)
		$a_01_4 = {28 22 54 22 20 2b 20 43 68 72 28 36 39 29 20 2b 20 22 4d 50 22 29 } //01 00  ("T" + Chr(69) + "MP")
		$a_02_5 = {2b 20 43 68 72 28 36 38 29 20 2b 20 22 90 05 10 06 61 2d 7a 30 2d 39 2e 65 78 22 20 26 20 43 68 72 28 31 30 31 29 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}