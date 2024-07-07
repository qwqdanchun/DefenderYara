
rule TrojanDownloader_O97M_Emotet_EIPK_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.EIPK!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 06 00 00 "
		
	strings :
		$a_01_0 = {3a 2f 22 26 22 2f 62 22 26 22 61 22 26 22 65 22 26 22 74 22 26 22 72 22 26 22 61 22 26 22 64 22 26 22 65 2e 63 22 26 22 6f 22 26 22 6d 22 26 22 2f 34 22 26 22 35 22 26 22 73 22 26 22 2f 57 22 26 22 73 54 22 26 22 33 22 26 22 43 22 26 22 76 50 22 26 22 63 22 26 22 62 22 26 22 33 22 26 22 35 22 26 22 63 22 26 22 63 2f } //1 :/"&"/b"&"a"&"e"&"t"&"r"&"a"&"d"&"e.c"&"o"&"m"&"/4"&"5"&"s"&"/W"&"sT"&"3"&"C"&"vP"&"c"&"b"&"3"&"5"&"c"&"c/
		$a_01_1 = {3a 2f 2f 6d 65 63 61 70 72 6f 67 2e 63 6f 6d 2f 6d 65 6e 75 73 79 73 74 65 6d 6d 6f 64 65 6c 30 30 35 2f 7a 49 34 56 64 76 38 39 34 6d 72 2f } //1 ://mecaprog.com/menusystemmodel005/zI4Vdv894mr/
		$a_01_2 = {3a 2f 22 26 22 2f 6b 22 26 22 66 22 26 22 66 22 26 22 61 22 26 22 72 22 26 22 73 2e 22 26 22 69 22 26 22 72 2f 69 22 26 22 6e 22 26 22 63 22 26 22 6c 22 26 22 75 22 26 22 64 22 26 22 65 22 26 22 73 2f 50 22 26 22 72 2f } //1 :/"&"/k"&"f"&"f"&"a"&"r"&"s."&"i"&"r/i"&"n"&"c"&"l"&"u"&"d"&"e"&"s/P"&"r/
		$a_01_3 = {3a 2f 22 26 22 2f 62 22 26 22 6f 22 26 22 6c 22 26 22 65 22 26 22 6f 2e 6e 22 26 22 6c 22 26 22 2f 22 26 22 61 22 26 22 73 22 26 22 73 22 26 22 65 22 26 22 74 22 26 22 73 2f 4e 22 26 22 4d 22 26 22 52 22 26 22 41 22 26 22 34 22 26 22 6e 22 26 22 47 22 26 22 65 22 26 22 39 22 26 22 32 22 26 22 41 22 26 22 5a 22 26 22 76 2f } //1 :/"&"/b"&"o"&"l"&"e"&"o.n"&"l"&"/"&"a"&"s"&"s"&"e"&"t"&"s/N"&"M"&"R"&"A"&"4"&"n"&"G"&"e"&"9"&"2"&"A"&"Z"&"v/
		$a_01_4 = {3a 2f 22 26 22 2f 6c 79 22 26 22 73 22 26 22 61 22 26 22 72 22 26 22 62 22 26 22 6f 22 26 22 70 22 26 22 61 22 26 22 79 22 26 22 73 22 26 22 61 22 26 22 67 22 26 22 65 2e 66 22 26 22 72 2f 68 22 26 22 65 22 26 22 61 22 26 22 64 22 26 22 65 22 26 22 72 22 26 22 73 2f 5a 22 26 22 5a 22 26 22 72 22 26 22 42 22 26 22 57 22 26 22 61 22 26 22 48 22 26 22 6f 22 26 22 54 22 26 22 30 22 26 22 6b 2f } //1 :/"&"/ly"&"s"&"a"&"r"&"b"&"o"&"p"&"a"&"y"&"s"&"a"&"g"&"e.f"&"r/h"&"e"&"a"&"d"&"e"&"r"&"s/Z"&"Z"&"r"&"B"&"W"&"a"&"H"&"o"&"T"&"0"&"k/
		$a_01_5 = {3a 2f 22 26 22 2f 6b 22 26 22 61 22 26 22 74 22 26 22 65 22 26 22 61 22 26 22 6e 22 26 22 64 22 26 22 6a 22 26 22 6f 22 26 22 68 22 26 22 6e 2e 63 22 26 22 6f 2e 75 22 26 22 6b 2f 48 22 26 22 6f 22 26 22 6c 22 26 22 69 22 26 22 64 22 26 22 61 22 26 22 79 22 26 22 73 2f 41 22 26 22 51 2f } //1 :/"&"/k"&"a"&"t"&"e"&"a"&"n"&"d"&"j"&"o"&"h"&"n.c"&"o.u"&"k/H"&"o"&"l"&"i"&"d"&"a"&"y"&"s/A"&"Q/
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=1
 
}