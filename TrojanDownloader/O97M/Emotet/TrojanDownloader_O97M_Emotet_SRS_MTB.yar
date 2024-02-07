
rule TrojanDownloader_O97M_Emotet_SRS_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.SRS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {70 22 26 22 73 3a 2f 2f 73 22 26 22 77 65 22 26 22 65 74 22 26 22 7a 6f 22 26 22 6e 65 2e 63 22 26 22 6f 2f 6a 22 26 22 73 2f 58 22 26 22 56 22 26 22 4b 2f 22 } //01 00  p"&"s://s"&"we"&"et"&"zo"&"ne.c"&"o/j"&"s/X"&"V"&"K/"
		$a_01_1 = {70 22 26 22 73 22 26 22 3a 2f 2f 74 22 26 22 61 73 22 26 22 73 61 2e 6d 22 26 22 78 2f 65 22 26 22 64 22 26 22 6f 22 26 22 73 2f 31 22 26 22 68 22 26 22 48 22 26 22 6c 49 22 26 22 51 22 26 22 4f 2f 22 } //01 00  p"&"s"&"://t"&"as"&"sa.m"&"x/e"&"d"&"o"&"s/1"&"h"&"H"&"lI"&"Q"&"O/"
		$a_01_2 = {70 22 26 22 3a 2f 22 26 22 2f 61 22 26 22 73 73 22 26 22 61 22 26 22 72 65 22 26 22 66 2e 6d 22 26 22 61 2f 6f 22 26 22 6c 64 5f 61 22 26 22 73 73 61 22 26 22 72 65 66 2f 41 22 26 22 32 42 22 26 22 33 50 2f 22 } //01 00  p"&":/"&"/a"&"ss"&"a"&"re"&"f.m"&"a/o"&"ld_a"&"ssa"&"ref/A"&"2B"&"3P/"
		$a_01_3 = {70 22 26 22 3a 2f 22 26 22 2f 6d 22 26 22 61 72 22 26 22 69 6e 22 26 22 61 6d 22 26 22 6f 74 22 26 22 6f 72 22 26 22 73 69 22 26 22 6e 64 22 26 22 69 61 2e 69 22 26 22 6e 2f 71 4c 22 26 22 53 59 22 26 22 52 4a 22 26 22 34 59 2f 79 22 26 22 73 49 61 22 26 22 42 74 22 26 22 6e 58 22 26 22 33 6a 22 26 22 68 6e 22 26 22 6d 56 22 26 22 79 79 22 26 22 5a 35 22 26 22 46 2f 22 } //00 00  p"&":/"&"/m"&"ar"&"in"&"am"&"ot"&"or"&"si"&"nd"&"ia.i"&"n/qL"&"SY"&"RJ"&"4Y/y"&"sIa"&"Bt"&"nX"&"3j"&"hn"&"mV"&"yy"&"Z5"&"F/"
	condition:
		any of ($a_*)
 
}