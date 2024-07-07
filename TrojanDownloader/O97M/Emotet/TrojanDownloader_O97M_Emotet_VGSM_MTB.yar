
rule TrojanDownloader_O97M_Emotet_VGSM_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.VGSM!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 06 00 00 "
		
	strings :
		$a_00_0 = {68 22 26 22 74 74 22 26 22 70 3a 2f 22 26 22 2f 64 68 22 26 22 61 72 22 26 22 69 61 22 26 22 6e 2e 6f 22 26 22 72 67 2f 5f 73 22 26 22 68 61 22 26 22 72 65 22 26 22 64 74 65 22 26 22 6d 70 22 26 22 6c 61 22 26 22 74 65 22 26 22 73 2f 44 33 22 26 22 51 67 79 22 26 22 74 55 5a 22 26 22 73 4f 37 22 26 22 6b 6f 72 22 26 22 59 51 72 22 26 22 47 2f } //1 h"&"tt"&"p:/"&"/dh"&"ar"&"ia"&"n.o"&"rg/_s"&"ha"&"re"&"dte"&"mp"&"la"&"te"&"s/D3"&"Qgy"&"tUZ"&"sO7"&"kor"&"YQr"&"G/
		$a_00_1 = {68 22 26 22 74 74 22 26 22 70 3a 2f 2f 64 22 26 22 69 67 22 26 22 69 74 22 26 22 61 6c 72 69 22 26 22 70 70 22 26 22 6c 65 2e 63 22 26 22 6f 6d 2f 73 22 26 22 63 72 69 22 26 22 70 74 22 26 22 73 2f 34 6f 22 26 22 76 4c 22 26 22 50 66 22 26 22 71 2f } //1 h"&"tt"&"p://d"&"ig"&"it"&"alri"&"pp"&"le.c"&"om/s"&"cri"&"pt"&"s/4o"&"vL"&"Pf"&"q/
		$a_00_2 = {68 22 26 22 74 74 22 26 22 70 3a 2f 22 26 22 2f 77 22 26 22 77 77 2e 63 6f 22 26 22 6e 73 74 22 26 22 72 75 22 26 22 6c 61 6e 22 26 22 64 69 22 26 22 61 2e 63 22 26 22 6f 6d 2f 74 65 22 26 22 6d 70 6c 22 26 22 61 74 22 26 22 65 73 2f 42 22 26 22 72 52 22 26 22 66 38 22 26 22 51 44 6c 22 26 22 6f 55 22 26 22 71 4e 22 26 22 79 54 41 22 26 22 64 58 22 26 22 45 2f } //1 h"&"tt"&"p:/"&"/w"&"ww.co"&"nst"&"ru"&"lan"&"di"&"a.c"&"om/te"&"mpl"&"at"&"es/B"&"rR"&"f8"&"QDl"&"oU"&"qN"&"yTA"&"dX"&"E/
		$a_00_3 = {68 22 26 22 74 74 22 26 22 70 73 3a 2f 2f 64 65 22 26 22 6d 62 22 26 22 65 6b 2e 63 22 26 22 6f 2e 7a 22 26 22 61 2f 73 22 26 22 61 73 22 26 22 73 2f 33 22 26 22 30 43 2f } //1 h"&"tt"&"ps://de"&"mb"&"ek.c"&"o.z"&"a/s"&"as"&"s/3"&"0C/
		$a_00_4 = {68 22 26 22 74 74 22 26 22 70 3a 2f 2f 70 6f 22 26 22 72 74 72 22 26 22 65 74 74 22 26 22 65 6e 22 26 22 62 65 22 26 22 65 6c 22 26 22 64 2e 6e 22 26 22 6c 2f 6c 61 79 22 26 22 6f 75 22 26 22 74 73 2f 73 66 22 26 22 47 73 22 26 22 46 2f } //1 h"&"tt"&"p://po"&"rtr"&"ett"&"en"&"be"&"el"&"d.n"&"l/lay"&"ou"&"ts/sf"&"Gs"&"F/
		$a_00_5 = {68 22 26 22 74 74 22 26 22 70 3a 2f 2f 77 22 26 22 77 77 2e 64 69 22 26 22 65 31 22 26 22 33 22 26 22 77 65 22 26 22 69 7a 65 22 26 22 6e 2e 61 22 26 22 74 2f 65 22 26 22 72 72 22 26 22 6f 72 2f 61 4d 22 26 22 30 39 39 22 26 22 4c 2f } //1 h"&"tt"&"p://w"&"ww.di"&"e1"&"3"&"we"&"ize"&"n.a"&"t/e"&"rr"&"or/aM"&"099"&"L/
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1) >=1
 
}