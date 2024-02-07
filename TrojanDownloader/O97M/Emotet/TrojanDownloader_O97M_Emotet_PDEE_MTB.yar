
rule TrojanDownloader_O97M_Emotet_PDEE_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.PDEE!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {3a 22 26 22 2f 22 26 22 2f 63 22 26 22 6f 6c 22 26 22 6f 72 22 26 22 64 72 22 26 22 6f 70 22 26 22 73 67 22 26 22 75 2e 63 22 26 22 6f 22 26 22 6d 2f 37 22 26 22 44 4f 22 26 22 52 22 26 22 66 69 22 26 22 64 69 22 26 22 41 75 2f 42 22 26 22 71 75 22 26 22 6f 53 22 26 22 55 2f } //01 00  :"&"/"&"/c"&"ol"&"or"&"dr"&"op"&"sg"&"u.c"&"o"&"m/7"&"DO"&"R"&"fi"&"di"&"Au/B"&"qu"&"oS"&"U/
		$a_01_1 = {3a 22 26 22 2f 22 26 22 2f 65 22 26 22 77 69 22 26 22 6e 67 22 26 22 63 6f 22 26 22 6e 73 22 26 22 75 6c 22 26 22 74 69 22 26 22 6e 67 2e 63 22 26 22 6f 22 26 22 6d 2f 62 22 26 22 75 22 26 22 79 2f 45 22 26 22 77 6a 22 26 22 37 6f 22 26 22 59 6a 22 26 22 68 59 22 26 22 51 2f } //01 00  :"&"/"&"/e"&"wi"&"ng"&"co"&"ns"&"ul"&"ti"&"ng.c"&"o"&"m/b"&"u"&"y/E"&"wj"&"7o"&"Yj"&"hY"&"Q/
		$a_01_2 = {3a 22 26 22 2f 22 26 22 2f 63 65 22 26 22 72 61 22 26 22 6d 69 22 26 22 63 61 22 26 22 6c 61 22 26 22 66 6f 22 26 22 72 74 22 26 22 61 6c 22 26 22 65 7a 22 26 22 61 2e 63 22 26 22 6f 22 26 22 6d 2f 63 22 26 22 73 22 26 22 73 2f 35 22 26 22 44 53 22 26 22 42 43 22 26 22 43 48 22 26 22 30 2f } //01 00  :"&"/"&"/ce"&"ra"&"mi"&"ca"&"la"&"fo"&"rt"&"al"&"ez"&"a.c"&"o"&"m/c"&"s"&"s/5"&"DS"&"BC"&"CH"&"0/
		$a_01_3 = {3a 22 26 22 2f 22 26 22 2f 74 68 22 26 22 75 79 22 26 22 62 61 22 26 22 6f 68 22 26 22 75 79 2e 63 22 26 22 6f 22 26 22 6d 2f 77 22 26 22 70 2d 63 22 26 22 6f 6e 22 26 22 74 65 22 26 22 6e 74 2f 56 22 26 22 78 68 22 26 22 6b 59 22 26 22 77 48 22 26 22 37 2f } //00 00  :"&"/"&"/th"&"uy"&"ba"&"oh"&"uy.c"&"o"&"m/w"&"p-c"&"on"&"te"&"nt/V"&"xh"&"kY"&"wH"&"7/
	condition:
		any of ($a_*)
 
}