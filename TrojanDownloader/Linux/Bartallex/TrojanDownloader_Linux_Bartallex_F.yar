
rule TrojanDownloader_Linux_Bartallex_F{
	meta:
		description = "TrojanDownloader:Linux/Bartallex.F,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 07 00 00 "
		
	strings :
		$a_01_0 = {3d 20 22 73 22 20 2b 20 22 61 76 65 70 22 20 2b 20 22 69 63 22 20 26 20 43 68 72 28 34 36 29 20 26 20 22 73 22 20 26 20 22 75 22 20 2b 20 } //1 = "s" + "avep" + "ic" & Chr(46) & "s" & "u" + 
		$a_01_1 = {3d 20 43 68 72 28 36 30 20 2b 20 32 34 29 20 26 20 22 65 6d 70 22 } //1 = Chr(60 + 24) & "emp"
		$a_01_2 = {3d 20 22 22 20 2b 20 22 55 53 45 22 20 26 20 22 52 50 52 4f 46 49 4c 45 22 } //1 = "" + "USE" & "RPROFILE"
		$a_01_3 = {22 22 20 26 20 22 6f 22 20 26 20 22 62 6a 65 63 74 22 } //1 "" & "o" & "bject"
		$a_01_4 = {3d 20 22 2e 22 20 2b 20 22 74 78 22 20 2b 20 22 74 22 } //1 = "." + "tx" + "t"
		$a_01_5 = {22 63 22 20 2b 20 22 75 72 72 65 6e 74 46 69 6c 65 20 3d 20 22 20 2b 20 43 68 72 28 33 34 29 20 2b } //1 "c" + "urrentFile = " + Chr(34) +
		$a_01_6 = {3d 20 22 2e 6a 22 20 26 20 22 70 67 22 } //1 = ".j" & "pg"
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=5
 
}