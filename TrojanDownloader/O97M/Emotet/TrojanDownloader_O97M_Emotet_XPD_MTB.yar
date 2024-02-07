
rule TrojanDownloader_O97M_Emotet_XPD_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.XPD!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {3a 2f 2f 69 22 26 22 6e 64 22 26 22 69 61 62 22 26 22 69 6f 2e 69 22 26 22 6e 2f 77 22 26 22 65 22 26 22 62 2f 69 22 26 22 74 5f 66 22 26 22 6f 72 22 26 22 6d 22 26 22 73 2f 6a 22 26 22 76 4f 22 26 22 48 75 22 26 22 74 76 22 26 22 44 54 22 26 22 33 70 22 26 22 64 2f } //01 00  ://i"&"nd"&"iab"&"io.i"&"n/w"&"e"&"b/i"&"t_f"&"or"&"m"&"s/j"&"vO"&"Hu"&"tv"&"DT"&"3p"&"d/
		$a_01_1 = {3a 2f 2f 77 22 26 22 77 22 26 22 77 2e 69 6e 22 26 22 64 75 22 26 22 73 74 72 22 26 22 69 61 22 26 22 73 67 22 26 22 75 69 22 26 22 64 22 26 22 69 2e 63 22 26 22 6f 22 26 22 6d 2e 61 22 26 22 72 2f 77 22 26 22 70 2d 69 22 26 22 6e 63 22 26 22 6c 75 64 22 26 22 65 22 26 22 73 2f 78 39 22 26 22 31 38 22 26 22 50 47 22 26 22 46 55 2f } //01 00  ://w"&"w"&"w.in"&"du"&"str"&"ia"&"sg"&"ui"&"d"&"i.c"&"o"&"m.a"&"r/w"&"p-i"&"nc"&"lud"&"e"&"s/x9"&"18"&"PG"&"FU/
		$a_01_2 = {3a 2f 2f 69 6e 22 26 22 67 65 22 26 22 6e 69 22 26 22 6f 75 22 26 22 73 2e 63 22 26 22 6c 2f 63 22 26 22 67 22 26 22 69 2d 62 22 26 22 69 22 26 22 6e 2f 50 22 26 22 4c 43 22 26 22 78 6a 22 26 22 67 4b 22 26 22 39 43 22 26 22 72 4d 22 26 22 41 48 22 26 22 44 32 22 26 22 52 69 2f } //00 00  ://in"&"ge"&"ni"&"ou"&"s.c"&"l/c"&"g"&"i-b"&"i"&"n/P"&"LC"&"xj"&"gK"&"9C"&"rM"&"AH"&"D2"&"Ri/
	condition:
		any of ($a_*)
 
}