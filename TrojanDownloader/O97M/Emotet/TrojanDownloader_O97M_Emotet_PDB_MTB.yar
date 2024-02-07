
rule TrojanDownloader_O97M_Emotet_PDB_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.PDB!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {22 68 22 26 22 74 74 22 26 22 70 3a 2f 22 26 22 2f 68 61 22 26 22 72 64 22 26 22 73 74 22 26 22 6f 6e 22 26 22 65 63 22 26 22 61 22 26 22 70 2e 63 22 26 22 6f 22 26 22 6d 2f 77 22 26 22 65 6c 22 26 22 6c 2d 6b 22 26 22 6e 6f 22 26 22 77 6e 2f 6c 22 26 22 57 2f 22 2c } //01 00  "h"&"tt"&"p:/"&"/ha"&"rd"&"st"&"on"&"ec"&"a"&"p.c"&"o"&"m/w"&"el"&"l-k"&"no"&"wn/l"&"W/",
		$a_01_1 = {22 68 22 26 22 74 74 22 26 22 70 3a 2f 2f 68 22 26 22 6f 61 22 26 22 6e 67 22 26 22 6c 65 22 26 22 70 68 22 26 22 61 74 2e 76 22 26 22 6e 2f 77 22 26 22 70 2d 61 22 26 22 64 6d 22 26 22 69 6e 2f 39 73 22 26 22 70 4f 22 26 22 39 70 22 26 22 70 2f 22 2c } //01 00  "h"&"tt"&"p://h"&"oa"&"ng"&"le"&"ph"&"at.v"&"n/w"&"p-a"&"dm"&"in/9s"&"pO"&"9p"&"p/",
		$a_01_2 = {22 68 22 26 22 74 74 22 26 22 70 3a 2f 2f 77 22 26 22 77 22 26 22 77 2e 61 22 26 22 6d 22 26 22 61 2e 63 22 26 22 75 2f 6a 22 26 22 70 22 26 22 72 2f 30 22 26 22 30 22 26 22 59 70 22 26 22 4b 46 22 26 22 45 5a 2f 22 2c } //01 00  "h"&"tt"&"p://w"&"w"&"w.a"&"m"&"a.c"&"u/j"&"p"&"r/0"&"0"&"Yp"&"KF"&"EZ/",
		$a_01_3 = {22 68 22 26 22 74 74 22 26 22 70 3a 2f 2f 73 63 22 26 22 68 69 22 26 22 6c 64 22 26 22 65 72 22 26 22 73 62 65 22 26 22 64 72 69 22 26 22 6a 66 64 22 26 22 73 64 65 22 26 22 76 22 26 22 6f 73 2e 6e 22 26 22 6c 2f 77 22 26 22 70 2d 63 6f 22 26 22 6e 74 22 26 22 65 6e 22 26 22 74 2f 49 74 22 26 22 6e 42 22 26 22 44 6d 22 26 22 4a 61 22 26 22 79 31 22 26 22 55 64 22 26 22 6b 2f } //01 00  "h"&"tt"&"p://sc"&"hi"&"ld"&"er"&"sbe"&"dri"&"jfd"&"sde"&"v"&"os.n"&"l/w"&"p-co"&"nt"&"en"&"t/It"&"nB"&"Dm"&"Ja"&"y1"&"Ud"&"k/
		$a_01_4 = {22 68 22 26 22 74 74 22 26 22 70 3a 2f 2f 6a 6b 22 26 22 6f 6e 22 26 22 64 65 22 26 22 72 68 22 26 22 6f 75 22 26 22 64 2e 6e 22 26 22 6c 2f 77 22 26 22 70 2d 63 22 26 22 6f 6e 22 26 22 74 65 22 26 22 6e 74 2f 36 22 26 22 6f 22 26 22 66 2f 22 2c } //00 00  "h"&"tt"&"p://jk"&"on"&"de"&"rh"&"ou"&"d.n"&"l/w"&"p-c"&"on"&"te"&"nt/6"&"o"&"f/",
	condition:
		any of ($a_*)
 
}