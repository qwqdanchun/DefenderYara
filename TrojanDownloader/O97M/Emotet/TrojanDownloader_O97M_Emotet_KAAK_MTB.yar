
rule TrojanDownloader_O97M_Emotet_KAAK_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.KAAK!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {3a 2f 2f 62 22 26 22 75 22 26 22 6c 22 26 22 6c 22 26 22 64 22 26 22 6f 22 26 22 67 22 26 22 69 22 26 22 72 22 26 22 6f 22 26 22 6e 22 26 22 77 22 26 22 6f 22 26 22 72 22 26 22 6b 22 26 22 73 22 26 22 6c 22 26 22 6c 22 26 22 63 2e 63 22 26 22 6f 22 26 22 6d 2f 74 22 26 22 65 22 26 22 6d 22 26 22 70 2f 49 22 26 22 56 22 26 22 48 22 26 22 44 22 26 22 30 22 26 22 30 22 26 22 47 22 26 22 47 2f 22 2c 22 } //01 00  ://b"&"u"&"l"&"l"&"d"&"o"&"g"&"i"&"r"&"o"&"n"&"w"&"o"&"r"&"k"&"s"&"l"&"l"&"c.c"&"o"&"m/t"&"e"&"m"&"p/I"&"V"&"H"&"D"&"0"&"0"&"G"&"G/","
		$a_01_1 = {3a 2f 2f 68 22 26 22 77 22 26 22 74 22 26 22 77 2e 63 22 26 22 6f 22 26 22 6d 2e 74 22 26 22 77 2f 62 22 26 22 61 22 26 22 63 22 26 22 6b 22 26 22 65 22 26 22 6e 22 26 22 64 2f 61 22 26 22 6c 22 26 22 65 22 26 22 72 22 26 22 74 22 26 22 69 22 26 22 66 22 26 22 79 22 26 22 6a 22 26 22 73 2f 62 22 26 22 34 22 26 22 51 22 26 22 79 22 26 22 66 22 26 22 63 22 26 22 4f 2f 22 2c 22 } //01 00  ://h"&"w"&"t"&"w.c"&"o"&"m.t"&"w/b"&"a"&"c"&"k"&"e"&"n"&"d/a"&"l"&"e"&"r"&"t"&"i"&"f"&"y"&"j"&"s/b"&"4"&"Q"&"y"&"f"&"c"&"O/","
		$a_01_2 = {3a 2f 2f 62 22 26 22 65 22 26 22 6e 22 26 22 63 22 26 22 65 22 26 22 76 22 26 22 65 22 26 22 6e 22 26 22 64 22 26 22 65 22 26 22 67 22 26 22 68 22 26 22 61 22 26 22 7a 2e 68 22 26 22 75 2f 77 22 26 22 70 2d 69 22 26 22 6e 22 26 22 63 6c 22 26 22 75 22 26 22 64 22 26 22 65 22 26 22 73 2f 49 22 26 22 73 22 26 22 44 22 26 22 33 22 26 22 34 22 26 22 69 22 26 22 6c 2f 22 2c 22 } //01 00  ://b"&"e"&"n"&"c"&"e"&"v"&"e"&"n"&"d"&"e"&"g"&"h"&"a"&"z.h"&"u/w"&"p-i"&"n"&"cl"&"u"&"d"&"e"&"s/I"&"s"&"D"&"3"&"4"&"i"&"l/","
		$a_01_3 = {3a 2f 2f 6b 22 26 22 61 22 26 22 73 22 26 22 70 22 26 22 65 22 26 22 72 22 26 22 76 22 26 22 61 22 26 22 6e 22 26 22 64 22 26 22 65 22 26 22 6e 22 26 22 62 22 26 22 65 22 26 22 72 22 26 22 67 2e 6e 22 26 22 65 22 26 22 74 2f 32 22 26 22 30 22 26 22 30 22 26 22 39 2f 62 22 26 22 6c 22 26 22 52 22 26 22 33 22 26 22 47 22 26 22 75 2f 22 2c 22 } //01 00  ://k"&"a"&"s"&"p"&"e"&"r"&"v"&"a"&"n"&"d"&"e"&"n"&"b"&"e"&"r"&"g.n"&"e"&"t/2"&"0"&"0"&"9/b"&"l"&"R"&"3"&"G"&"u/","
		$a_01_4 = {3a 2f 2f 6b 22 26 22 61 22 26 22 6d 22 26 22 65 72 22 26 22 61 22 26 22 6c 22 26 22 61 22 26 22 72 2e 61 22 26 22 7a 2f 6b 22 26 22 6f 22 26 22 68 22 26 22 6e 22 26 22 65 2f 75 22 26 22 70 22 26 22 67 22 26 22 72 22 26 22 61 22 26 22 64 22 26 22 65 2f 71 22 26 22 68 22 26 22 61 22 26 22 64 22 26 22 32 22 26 22 69 22 26 22 52 22 26 22 6c 22 26 22 4d 22 26 22 41 22 26 22 37 22 26 22 62 22 26 22 74 22 26 22 46 2f 22 2c 22 } //01 00  ://k"&"a"&"m"&"er"&"a"&"l"&"a"&"r.a"&"z/k"&"o"&"h"&"n"&"e/u"&"p"&"g"&"r"&"a"&"d"&"e/q"&"h"&"a"&"d"&"2"&"i"&"R"&"l"&"M"&"A"&"7"&"b"&"t"&"F/","
		$a_01_5 = {3a 2f 2f 6c 22 26 22 69 22 26 22 76 22 26 22 72 22 26 22 65 22 26 22 73 2e 61 22 26 22 72 22 26 22 74 2e 62 22 26 22 72 2f 65 22 26 22 72 72 22 26 22 6f 22 26 22 73 2f 67 22 26 22 66 22 26 22 79 22 26 22 45 22 26 22 77 2f 22 2c 22 } //00 00  ://l"&"i"&"v"&"r"&"e"&"s.a"&"r"&"t.b"&"r/e"&"rr"&"o"&"s/g"&"f"&"y"&"E"&"w/","
	condition:
		any of ($a_*)
 
}