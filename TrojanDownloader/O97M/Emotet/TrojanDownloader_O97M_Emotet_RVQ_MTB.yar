
rule TrojanDownloader_O97M_Emotet_RVQ_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.RVQ!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {2f 2f 77 22 26 22 77 22 26 22 77 2e 7a 61 22 26 22 63 68 22 26 22 62 6f 22 26 22 79 6c 22 26 22 65 2e 63 22 26 22 6f 22 26 22 6d 2f 77 22 26 22 70 2d 61 22 26 22 64 6d 22 26 22 69 6e 2f 35 22 26 22 73 52 22 26 22 41 35 22 26 22 59 49 22 26 22 77 4d 22 26 22 66 77 22 26 22 34 63 22 26 22 67 4c 2f 22 2c 22 } //01 00  //w"&"w"&"w.za"&"ch"&"bo"&"yl"&"e.c"&"o"&"m/w"&"p-a"&"dm"&"in/5"&"sR"&"A5"&"YI"&"wM"&"fw"&"4c"&"gL/","
		$a_01_1 = {2f 22 26 22 2f 66 22 26 22 74 22 26 22 70 2e 79 22 26 22 75 65 22 26 22 63 22 26 22 6d 22 26 22 72 2e 6f 22 26 22 72 22 26 22 67 2f 77 22 26 22 70 2d 63 22 26 22 6f 6e 22 26 22 74 65 22 26 22 6e 74 2f 41 22 26 22 42 45 22 26 22 6d 58 22 26 22 6a 70 22 26 22 32 79 22 26 22 65 78 22 26 22 69 2f 22 2c 22 } //01 00  /"&"/f"&"t"&"p.y"&"ue"&"c"&"m"&"r.o"&"r"&"g/w"&"p-c"&"on"&"te"&"nt/A"&"BE"&"mX"&"jp"&"2y"&"ex"&"i/","
		$a_01_2 = {2f 22 26 22 2f 6c 22 26 22 6f 70 22 26 22 65 73 22 26 22 70 22 26 22 75 22 26 22 62 22 26 22 6c 22 26 22 69 22 26 22 63 22 26 22 69 64 22 26 22 61 64 22 26 22 65 2e 63 22 26 22 6f 22 26 22 6d 2f 63 22 26 22 67 22 26 22 69 2d 62 22 26 22 69 22 26 22 6e 2f 69 22 26 22 43 4b 22 26 22 44 50 22 26 22 49 63 22 26 22 39 4d 22 26 22 50 66 22 26 22 50 35 22 26 22 4d 47 22 26 22 54 2f 22 2c 22 } //00 00  /"&"/l"&"op"&"es"&"p"&"u"&"b"&"l"&"i"&"c"&"id"&"ad"&"e.c"&"o"&"m/c"&"g"&"i-b"&"i"&"n/i"&"CK"&"DP"&"Ic"&"9M"&"Pf"&"P5"&"MG"&"T/","
	condition:
		any of ($a_*)
 
}