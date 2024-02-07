
rule TrojanDownloader_O97M_Emotet_ARH_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.ARH!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {66 22 26 22 6c 61 22 26 22 72 65 22 26 22 63 6f 2e 6e 22 26 22 65 22 26 22 74 2f 61 73 22 26 22 73 65 22 26 22 74 73 2f 62 22 26 22 65 73 22 26 22 74 2d 67 22 26 22 61 6d 22 26 22 65 2e 6a 22 26 22 70 22 26 22 67 2f 4c 4c 22 26 22 36 47 22 26 22 78 53 22 26 22 32 59 22 26 22 63 46 22 26 22 73 37 22 26 22 74 70 22 26 22 50 4c 2f 6a } //01 00  f"&"la"&"re"&"co.n"&"e"&"t/as"&"se"&"ts/b"&"es"&"t-g"&"am"&"e.j"&"p"&"g/LL"&"6G"&"xS"&"2Y"&"cF"&"s7"&"tp"&"PL/j
		$a_01_1 = {65 72 22 26 22 6b 61 22 26 22 72 61 22 26 22 64 79 22 26 22 61 74 22 26 22 6f 72 2e 63 22 26 22 6f 6d 2e 74 22 26 22 72 2f 41 22 26 22 72 65 22 26 22 61 73 2f 77 22 26 22 69 6c 22 26 22 63 43 22 26 22 71 53 22 26 22 45 73 22 26 22 36 63 22 26 22 45 4d 22 26 22 33 44 2f 77 } //01 00  er"&"ka"&"ra"&"dy"&"at"&"or.c"&"om.t"&"r/A"&"re"&"as/w"&"il"&"cC"&"qS"&"Es"&"6c"&"EM"&"3D/w
		$a_01_2 = {65 74 73 22 26 22 76 65 22 26 22 72 73 22 26 22 61 69 22 26 22 6c 6c 22 26 22 65 73 2e 6e 22 26 22 65 22 26 22 74 2f 77 22 26 22 65 62 22 26 22 72 6f 22 26 22 6f 74 2f 5a 22 26 22 45 75 22 26 22 72 42 22 26 22 73 43 22 26 22 32 48 22 26 22 33 73 22 26 22 6f 65 22 26 22 69 46 22 26 22 62 79 22 26 22 65 51 } //01 00  ets"&"ve"&"rs"&"ai"&"ll"&"es.n"&"e"&"t/w"&"eb"&"ro"&"ot/Z"&"Eu"&"rB"&"sC"&"2H"&"3s"&"oe"&"iF"&"by"&"eQ
		$a_01_3 = {74 65 22 26 22 61 6d 22 26 22 64 72 22 26 22 69 76 22 26 22 65 72 22 26 22 73 6f 22 26 22 6e 6c 22 26 22 79 2e 63 22 26 22 6f 22 26 22 6d 2f 77 22 26 22 70 2d 61 64 22 26 22 6d 69 22 26 22 6e 2f 65 22 26 22 46 37 22 26 22 41 4a 2f 6b } //01 00  te"&"am"&"dr"&"iv"&"er"&"so"&"nl"&"y.c"&"o"&"m/w"&"p-ad"&"mi"&"n/e"&"F7"&"AJ/k
		$a_01_4 = {68 22 26 22 72 2e 64 22 26 22 65 76 22 26 22 73 72 22 26 22 6d 2e 63 22 26 22 6f 22 26 22 6d 2f 77 22 26 22 70 2d 63 22 26 22 6f 6e 22 26 22 74 65 22 26 22 6e 74 2f 4a 22 26 22 6b 36 22 26 22 67 4f 22 26 22 63 51 22 26 22 4f 70 22 26 22 52 57 22 26 22 47 77 22 26 22 4c 2f } //01 00  h"&"r.d"&"ev"&"sr"&"m.c"&"o"&"m/w"&"p-c"&"on"&"te"&"nt/J"&"k6"&"gO"&"cQ"&"Op"&"RW"&"Gw"&"L/
		$a_01_5 = {67 6c 22 26 22 6f 62 22 26 22 6f 61 22 26 22 67 72 22 26 22 6f 6e 22 26 22 65 67 22 26 22 6f 63 22 26 22 69 6f 22 26 22 73 2e 63 22 26 22 6f 22 26 22 6d 2e 62 22 26 22 72 2f 73 22 26 22 74 79 22 26 22 6c 65 2f 4b 22 26 22 45 4a 22 26 22 51 57 22 26 22 58 66 22 26 22 32 62 22 26 22 39 74 22 26 22 68 73 22 26 22 6b 63 22 26 22 35 63 22 26 22 56 2f } //00 00  gl"&"ob"&"oa"&"gr"&"on"&"eg"&"oc"&"io"&"s.c"&"o"&"m.b"&"r/s"&"ty"&"le/K"&"EJ"&"QW"&"Xf"&"2b"&"9t"&"hs"&"kc"&"5c"&"V/
	condition:
		any of ($a_*)
 
}