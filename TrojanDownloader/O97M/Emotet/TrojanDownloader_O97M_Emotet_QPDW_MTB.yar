
rule TrojanDownloader_O97M_Emotet_QPDW_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.QPDW!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {3a 2f 22 26 22 2f 66 22 26 22 63 22 26 22 63 22 26 22 61 22 26 22 74 22 26 22 69 22 26 22 6e 22 26 22 73 22 26 22 61 22 26 22 61 22 26 22 74 2e 63 22 26 22 6f 22 26 22 6d 2f 77 22 26 22 70 2d 63 22 26 22 6f 22 26 22 6e 22 26 22 74 22 26 22 65 22 26 22 6e 22 26 22 74 2f 43 22 26 22 77 22 26 22 33 22 26 22 61 22 26 22 52 22 26 22 36 37 22 26 22 39 32 22 26 22 66 2f } //01 00  :/"&"/f"&"c"&"c"&"a"&"t"&"i"&"n"&"s"&"a"&"a"&"t.c"&"o"&"m/w"&"p-c"&"o"&"n"&"t"&"e"&"n"&"t/C"&"w"&"3"&"a"&"R"&"67"&"92"&"f/
		$a_01_1 = {3a 2f 22 26 22 2f 66 22 26 22 61 22 26 22 62 22 26 22 75 22 26 22 6c 22 26 22 6f 22 26 22 75 22 26 22 73 22 26 22 77 22 26 22 65 22 26 22 62 22 26 22 64 22 26 22 65 22 26 22 73 22 26 22 69 22 26 22 67 22 26 22 6e 2e 6e 22 26 22 65 22 26 22 74 2f 69 22 26 22 6e 22 26 22 76 22 26 22 6f 22 26 22 69 22 26 22 63 22 26 22 65 2f 22 26 22 6d 2f } //01 00  :/"&"/f"&"a"&"b"&"u"&"l"&"o"&"u"&"s"&"w"&"e"&"b"&"d"&"e"&"s"&"i"&"g"&"n.n"&"e"&"t/i"&"n"&"v"&"o"&"i"&"c"&"e/"&"m/
		$a_01_2 = {3a 2f 22 26 22 2f 66 22 26 22 72 22 26 22 65 22 26 22 65 22 26 22 6d 22 26 22 61 22 26 22 6e 22 26 22 79 22 26 22 6c 22 26 22 61 22 26 22 6c 22 26 22 75 22 26 22 7a 2e 63 22 26 22 6f 22 26 22 6d 2f 64 22 26 22 6f 22 26 22 77 22 26 22 6e 22 26 22 6c 22 26 22 6f 22 26 22 61 22 26 22 64 22 26 22 73 2f 38 22 26 22 64 22 26 22 52 39 22 26 22 70 22 26 22 67 22 26 22 4e 22 26 22 42 22 26 22 46 22 26 22 74 22 26 22 7a 2f } //01 00  :/"&"/f"&"r"&"e"&"e"&"m"&"a"&"n"&"y"&"l"&"a"&"l"&"u"&"z.c"&"o"&"m/d"&"o"&"w"&"n"&"l"&"o"&"a"&"d"&"s/8"&"d"&"R9"&"p"&"g"&"N"&"B"&"F"&"t"&"z/
		$a_01_3 = {3a 2f 22 26 22 2f 66 72 22 26 22 65 22 26 22 65 22 26 22 77 22 26 22 65 22 26 22 62 73 22 26 22 69 74 22 26 22 65 22 26 22 64 22 26 22 69 72 22 26 22 65 22 26 22 63 74 22 26 22 6f 22 26 22 72 22 26 22 79 2e 63 22 26 22 6f 22 26 22 6d 2f 77 22 26 22 70 2d 69 6e 22 26 22 63 6c 75 22 26 22 64 65 22 26 22 73 2f 76 22 26 22 32 22 26 22 71 22 26 22 46 22 26 22 41 22 26 22 6c 22 26 22 4d 22 26 22 5a 22 26 22 45 22 26 22 4c 22 26 22 52 22 26 22 6b 22 26 22 78 62 22 26 22 7a 2f } //01 00  :/"&"/fr"&"e"&"e"&"w"&"e"&"bs"&"it"&"e"&"d"&"ir"&"e"&"ct"&"o"&"r"&"y.c"&"o"&"m/w"&"p-in"&"clu"&"de"&"s/v"&"2"&"q"&"F"&"A"&"l"&"M"&"Z"&"E"&"L"&"R"&"k"&"xb"&"z/
		$a_01_4 = {3a 2f 22 26 22 2f 66 22 26 22 75 22 26 22 74 22 26 22 61 22 26 22 62 22 26 22 61 2e 79 22 26 22 6f 22 26 22 75 22 26 22 63 22 26 22 68 22 26 22 69 22 26 22 65 22 26 22 6e 2e 6e 22 26 22 65 22 26 22 74 2f 77 22 26 22 70 2d 63 22 26 22 6f 22 26 22 6e 22 26 22 74 22 26 22 65 22 26 22 6e 22 26 22 74 2f 73 22 26 22 53 22 26 22 4a 22 26 22 71 22 26 22 4a 2f } //01 00  :/"&"/f"&"u"&"t"&"a"&"b"&"a.y"&"o"&"u"&"c"&"h"&"i"&"e"&"n.n"&"e"&"t/w"&"p-c"&"o"&"n"&"t"&"e"&"n"&"t/s"&"S"&"J"&"q"&"J/
		$a_01_5 = {3a 2f 22 26 22 2f 64 22 26 22 6f 22 26 22 6d 22 26 22 69 22 26 22 6e 22 26 22 69 22 26 22 6f 22 26 22 6e 22 26 22 61 22 26 22 69 2e 6f 22 26 22 72 22 26 22 67 2f 77 22 26 22 70 2d 69 22 26 22 6e 22 26 22 63 6c 22 26 22 75 22 26 22 64 22 26 22 65 22 26 22 73 2f 54 22 26 22 35 22 26 22 71 22 26 22 58 22 26 22 41 22 26 22 52 22 26 22 38 22 26 22 70 22 26 22 35 2f } //00 00  :/"&"/d"&"o"&"m"&"i"&"n"&"i"&"o"&"n"&"a"&"i.o"&"r"&"g/w"&"p-i"&"n"&"cl"&"u"&"d"&"e"&"s/T"&"5"&"q"&"X"&"A"&"R"&"8"&"p"&"5/
	condition:
		any of ($a_*)
 
}