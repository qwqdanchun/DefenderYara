
rule TrojanDownloader_O97M_Obfuse_CY_eml{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.CY!eml,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 65 74 20 65 72 20 3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 57 53 63 72 69 70 74 2e 53 68 65 6c 6c 22 29 } //01 00  Set er = CreateObject("WScript.Shell")
		$a_01_1 = {65 72 2e 52 75 6e 20 78 2c 20 62 62 62 } //01 00  er.Run x, bbb
		$a_01_2 = {62 62 62 20 3d 20 4c 65 66 74 28 22 30 31 38 37 36 35 34 33 32 34 35 36 37 37 38 36 35 34 33 6a 68 67 66 64 64 66 67 68 6b 6a 67 66 64 73 6a 68 67 66 62 64 63 73 34 35 33 32 22 2c 20 31 29 } //01 00  bbb = Left("0187654324567786543jhgfddfghkjgfdsjhgfbdcs4532", 1)
		$a_03_3 = {78 20 3d 20 52 65 70 6c 61 63 65 28 78 2c 20 22 90 02 15 22 2c 20 22 22 29 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_O97M_Obfuse_CY_eml_2{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.CY!eml,SIGNATURE_TYPE_MACROHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 65 74 20 4c 6f 6b 65 72 64 20 3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 53 69 6b 6f 20 26 20 45 64 69 79 20 26 20 52 69 62 64 65 73 29 } //01 00  Set Lokerd = CreateObject(Siko & Ediy & Ribdes)
		$a_01_1 = {52 64 66 63 74 75 20 3d 20 50 68 49 6b 28 50 72 74 63 76 5f 37 2c 20 22 2e 74 78 74 22 2c 20 22 2e 22 20 26 20 54 72 61 62 74 72 20 26 20 42 69 6a 6e 6d 65 20 26 20 54 72 61 62 74 72 20 26 20 22 65 22 29 } //01 00  Rdfctu = PhIk(Prtcv_7, ".txt", "." & Trabtr & Bijnme & Trabtr & "e")
		$a_01_2 = {41 70 70 6c 69 63 61 74 69 6f 6e 2e 53 74 61 72 74 75 70 50 61 74 68 20 26 20 4b 6e 72 66 74 37 20 26 20 22 68 68 5f 39 2e 32 2e 31 5f 22 20 26 20 54 72 61 62 74 72 20 26 20 22 2e 74 78 74 22 } //01 00  Application.StartupPath & Knrft7 & "hh_9.2.1_" & Trabtr & ".txt"
		$a_01_3 = {3d 20 54 72 61 62 74 72 20 26 20 22 53 22 20 26 20 54 72 61 62 74 72 20 26 20 22 68 22 20 26 20 54 72 61 62 74 72 20 26 20 22 65 6c 22 20 26 20 54 72 61 62 74 72 20 26 20 22 6c 22 } //01 00  = Trabtr & "S" & Trabtr & "h" & Trabtr & "el" & Trabtr & "l"
		$a_01_4 = {3d 20 54 72 61 62 74 72 20 26 20 22 52 22 20 26 20 54 72 61 62 74 72 20 26 20 22 75 22 20 26 20 54 72 61 62 74 72 20 26 20 22 6e 22 } //01 00  = Trabtr & "R" & Trabtr & "u" & Trabtr & "n"
		$a_01_5 = {3d 20 43 61 6c 6c 42 79 4e 61 6d 65 28 4c 6f 6b 65 72 64 2c 20 50 61 72 6b 53 2c 20 56 62 4d 65 74 68 6f 64 2c 20 43 68 72 28 54 69 62 65 72 64 38 29 20 26 20 52 64 66 63 74 75 20 26 20 43 68 72 28 54 69 62 65 72 64 38 29 20 26 20 22 20 22 20 26 20 6e 75 6d 65 72 6f 2c 20 31 29 } //01 00  = CallByName(Lokerd, ParkS, VbMethod, Chr(Tiberd8) & Rdfctu & Chr(Tiberd8) & " " & numero, 1)
		$a_01_6 = {20 3d 20 52 65 70 6c 61 63 65 28 64 2c 20 69 2c 20 65 29 } //00 00   = Replace(d, i, e)
	condition:
		any of ($a_*)
 
}