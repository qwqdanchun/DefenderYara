
rule TrojanDownloader_O97M_Emotet_KAAL_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.KAAL!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {3a 2f 2f 6e 22 26 22 65 22 26 22 77 6b 22 26 22 61 6e 22 26 22 6f 2e 63 22 26 22 6f 22 26 22 6d 2f 77 22 26 22 70 2d 61 64 22 26 22 6d 69 22 26 22 6e 2f 36 22 26 22 36 72 22 26 22 49 73 72 22 26 22 56 77 22 26 22 6f 50 22 26 22 4b 55 22 26 22 73 6a 22 26 22 63 41 22 26 22 73 2f 22 2c 22 59 } //01 00  ://n"&"e"&"wk"&"an"&"o.c"&"o"&"m/w"&"p-ad"&"mi"&"n/6"&"6r"&"Isr"&"Vw"&"oP"&"KU"&"sj"&"cA"&"s/","Y
		$a_01_1 = {3a 2f 2f 6f 22 26 22 63 61 22 26 22 6c 6f 67 22 26 22 75 6c 22 26 22 6c 61 72 22 26 22 69 2e 63 22 26 22 6f 22 26 22 6d 2f 69 22 26 22 6e 22 26 22 63 2f 57 22 26 22 63 6d 22 26 22 38 32 22 26 22 65 22 26 22 6e 72 22 26 22 73 38 2f 22 2c 22 5e } //01 00  ://o"&"ca"&"log"&"ul"&"lar"&"i.c"&"o"&"m/i"&"n"&"c/W"&"cm"&"82"&"e"&"nr"&"s8/","^
		$a_01_2 = {3a 2f 2f 6d 22 26 22 79 70 22 26 22 68 61 22 26 22 6d 63 22 26 22 75 61 22 26 22 74 75 22 26 22 69 2e 63 22 26 22 6f 22 26 22 6d 2f 61 22 26 22 73 73 22 26 22 65 74 22 26 22 73 2f 4f 22 26 22 50 56 22 26 22 65 56 22 26 22 53 70 22 26 22 4f 2f 22 2c 22 } //01 00  ://m"&"yp"&"ha"&"mc"&"ua"&"tu"&"i.c"&"o"&"m/a"&"ss"&"et"&"s/O"&"PV"&"eV"&"Sp"&"O/","
		$a_01_3 = {3a 2f 2f 73 22 26 22 69 65 22 26 22 75 74 22 26 22 68 69 22 26 22 70 68 22 26 22 75 74 22 26 22 75 6e 22 26 22 67 78 22 26 22 65 6e 22 26 22 61 6e 22 26 22 67 2e 63 22 26 22 6f 22 26 22 6d 2f 6f 22 26 22 6c 22 26 22 64 5f 73 22 26 22 6f 75 22 26 22 72 63 22 26 22 65 2f 39 22 26 22 62 6f 22 26 22 4a 51 22 26 22 5a 70 22 26 22 54 53 22 26 22 64 51 22 26 22 45 2f 22 2c 22 } //00 00  ://s"&"ie"&"ut"&"hi"&"ph"&"ut"&"un"&"gx"&"en"&"an"&"g.c"&"o"&"m/o"&"l"&"d_s"&"ou"&"rc"&"e/9"&"bo"&"JQ"&"Zp"&"TS"&"dQ"&"E/","
	condition:
		any of ($a_*)
 
}