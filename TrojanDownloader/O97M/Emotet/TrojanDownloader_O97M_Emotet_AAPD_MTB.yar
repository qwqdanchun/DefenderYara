
rule TrojanDownloader_O97M_Emotet_AAPD_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.AAPD!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {3a 2f 22 26 22 2f 77 22 26 22 77 22 26 22 77 2e 6a 75 22 26 22 6e 22 26 22 69 22 26 22 70 65 22 26 22 72 6e 2e 63 22 26 22 6f 22 26 22 6d 2f 63 22 26 22 67 22 26 22 69 2d 62 22 26 22 69 6e 2f 75 22 26 22 47 2f } //01 00  :/"&"/w"&"w"&"w.ju"&"n"&"i"&"pe"&"rn.c"&"o"&"m/c"&"g"&"i-b"&"in/u"&"G/
		$a_01_1 = {3a 2f 2f 77 22 26 22 77 22 26 22 77 2e 6d 22 26 22 65 22 26 22 67 22 26 22 61 6b 22 26 22 6f 22 26 22 6e 22 26 22 66 65 22 26 22 72 61 22 26 22 6e 73 2e 63 22 26 22 6f 22 26 22 6d 2f 77 22 26 22 70 2d 61 22 26 22 64 22 26 22 6d 22 26 22 69 6e 2f 5a 22 26 22 31 22 26 22 6d 22 26 22 6f 38 22 26 22 64 45 22 26 22 69 30 31 2f } //01 00  ://w"&"w"&"w.m"&"e"&"g"&"ak"&"o"&"n"&"fe"&"ra"&"ns.c"&"o"&"m/w"&"p-a"&"d"&"m"&"in/Z"&"1"&"m"&"o8"&"dE"&"i01/
		$a_01_2 = {3a 2f 2f 77 22 26 22 77 22 26 22 77 2e 6d 22 26 22 69 76 22 26 22 61 72 22 26 22 69 61 2e 63 22 26 22 6f 22 26 22 6d 2f 6f 22 26 22 77 22 26 22 6c 2d 63 22 26 22 61 72 22 26 22 6f 22 26 22 75 22 26 22 73 22 26 22 65 22 26 22 6c 2f 70 22 26 22 51 22 26 22 4e 22 26 22 30 6c 22 26 22 35 22 26 22 30 22 26 22 45 22 26 22 32 22 26 22 77 22 26 22 54 22 26 22 6a 51 22 26 22 45 34 22 26 22 30 71 22 26 22 67 63 22 26 22 49 2f } //01 00  ://w"&"w"&"w.m"&"iv"&"ar"&"ia.c"&"o"&"m/o"&"w"&"l-c"&"ar"&"o"&"u"&"s"&"e"&"l/p"&"Q"&"N"&"0l"&"5"&"0"&"E"&"2"&"w"&"T"&"jQ"&"E4"&"0q"&"gc"&"I/
		$a_01_3 = {3a 2f 2f 77 22 26 22 77 22 26 22 77 2e 6d 22 26 22 6a 68 22 26 22 6c 2e 63 22 26 22 6f 22 26 22 6d 2e 6d 22 26 22 78 2f 66 22 26 22 6f 22 26 22 6e 22 26 22 74 73 2f 73 22 26 22 47 2f } //01 00  ://w"&"w"&"w.m"&"jh"&"l.c"&"o"&"m.m"&"x/f"&"o"&"n"&"ts/s"&"G/
		$a_01_4 = {3a 2f 2f 6d 22 26 22 61 22 26 22 70 22 26 22 6c 69 22 26 22 6e 2e 68 22 26 22 75 2f 66 69 22 26 22 6c 22 26 22 6c 22 26 22 65 22 26 22 72 2f 36 22 26 22 48 22 26 22 56 22 26 22 30 22 26 22 39 4e 22 26 22 78 22 26 22 6d 22 26 22 73 22 26 22 34 22 26 22 4a 22 26 22 56 22 26 22 67 22 26 22 75 22 26 22 48 22 26 22 57 22 26 22 58 22 26 22 78 2f } //01 00  ://m"&"a"&"p"&"li"&"n.h"&"u/fi"&"l"&"l"&"e"&"r/6"&"H"&"V"&"0"&"9N"&"x"&"m"&"s"&"4"&"J"&"V"&"g"&"u"&"H"&"W"&"X"&"x/
		$a_01_5 = {3a 2f 2f 6d 22 26 22 61 22 26 22 6e 22 26 22 61 22 26 22 67 22 26 22 65 22 26 22 70 6c 22 26 22 75 22 26 22 73 2e 6e 22 26 22 6c 2f 61 22 26 22 70 22 26 22 69 2f 59 22 26 22 66 33 22 26 22 38 22 26 22 76 22 26 22 65 22 26 22 70 22 26 22 41 22 26 22 6f 22 26 22 68 22 26 22 66 22 26 22 53 22 26 22 6b 6b 22 26 22 4d 70 22 26 22 6b 79 2f } //00 00  ://m"&"a"&"n"&"a"&"g"&"e"&"pl"&"u"&"s.n"&"l/a"&"p"&"i/Y"&"f3"&"8"&"v"&"e"&"p"&"A"&"o"&"h"&"f"&"S"&"kk"&"Mp"&"ky/
	condition:
		any of ($a_*)
 
}