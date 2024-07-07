
rule TrojanDownloader_O97M_Powdow_DS_MTB{
	meta:
		description = "TrojanDownloader:O97M/Powdow.DS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,0d 00 0d 00 04 00 00 "
		
	strings :
		$a_03_0 = {22 75 72 6c 6d 6f 6e 90 02 23 22 20 41 6c 69 61 73 20 22 55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 22 90 00 } //1
		$a_01_1 = {48 65 72 74 69 31 20 3d 20 45 6e 76 69 72 6f 6e 28 22 75 73 65 72 70 72 6f 66 69 6c 65 22 29 20 26 20 22 5c 22 20 26 20 52 6e 64 28 31 45 2b 31 38 29 20 26 20 22 2e 63 6f 6d 22 } //10 Herti1 = Environ("userprofile") & "\" & Rnd(1E+18) & ".com"
		$a_01_2 = {3d 20 55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 28 30 2c 20 54 68 69 73 44 6f 63 75 6d 65 6e 74 2e 44 65 66 61 75 6c 74 54 61 72 67 65 74 46 72 61 6d 65 2c 20 48 65 72 74 69 31 2c 20 30 2c 20 30 29 } //1 = URLDownloadToFile(0, ThisDocument.DefaultTargetFrame, Herti1, 0, 0)
		$a_01_3 = {3d 20 47 65 74 4f 62 6a 65 63 74 28 54 68 69 73 44 6f 63 75 6d 65 6e 74 2e 58 4d 4c 53 61 76 65 54 68 72 6f 75 67 68 58 53 4c 54 29 } //1 = GetObject(ThisDocument.XMLSaveThroughXSLT)
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*10+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=13
 
}