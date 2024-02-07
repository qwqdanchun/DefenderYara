
rule TrojanDownloader_O97M_EncDoc_ASD_MTB{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.ASD!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 0c 00 00 01 00 "
		
	strings :
		$a_01_0 = {68 22 26 22 74 74 70 22 26 22 73 3a 2f 2f 67 69 22 26 22 76 22 26 22 65 72 22 26 22 73 68 22 26 22 65 72 22 26 22 62 61 22 26 22 6c 70 72 22 26 22 6f 64 22 26 22 75 63 74 22 26 22 73 2e 63 22 26 22 6f 22 26 22 6d 2f 41 22 26 22 64 22 26 22 34 22 26 22 37 22 26 22 58 22 26 22 52 22 26 22 53 22 26 22 48 22 26 22 2f 66 6f 6b 2e 68 22 26 22 74 22 26 22 6d 22 26 22 6c } //01 00  h"&"ttp"&"s://gi"&"v"&"er"&"sh"&"er"&"ba"&"lpr"&"od"&"uct"&"s.c"&"o"&"m/A"&"d"&"4"&"7"&"X"&"R"&"S"&"H"&"/fok.h"&"t"&"m"&"l
		$a_01_1 = {68 22 26 22 74 74 70 22 26 22 73 3a 2f 2f 73 22 26 22 70 65 22 26 22 63 22 26 22 69 61 22 26 22 6c 69 22 26 22 73 74 22 26 22 65 22 26 22 64 75 2e 63 6f 6d 2e 68 6b 2f 34 22 26 22 39 22 26 22 35 69 22 26 22 76 4f 34 22 26 22 50 22 26 22 51 54 22 26 22 52 6b 2f 66 6f 6b 2e 68 22 26 22 74 22 26 22 6d 22 26 22 6c } //01 00  h"&"ttp"&"s://s"&"pe"&"c"&"ia"&"li"&"st"&"e"&"du.com.hk/4"&"9"&"5i"&"vO4"&"P"&"QT"&"Rk/fok.h"&"t"&"m"&"l
		$a_01_2 = {68 22 26 22 74 74 22 26 22 70 22 26 22 73 3a 2f 2f 64 22 26 22 65 22 26 22 6e 22 26 22 6b 79 22 26 22 69 72 22 26 22 61 6d 22 26 22 61 6e 2e 63 6f 2e 75 6b 2f 68 22 26 22 71 7a 22 26 22 71 78 22 26 22 50 4e 22 26 22 68 61 2f 66 6f 6b 2e 68 22 26 22 74 22 26 22 6d 22 26 22 6c } //01 00  h"&"tt"&"p"&"s://d"&"e"&"n"&"ky"&"ir"&"am"&"an.co.uk/h"&"qz"&"qx"&"PN"&"ha/fok.h"&"t"&"m"&"l
		$a_01_3 = {68 22 26 22 74 22 26 22 74 22 26 22 70 22 26 22 73 3a 2f 2f 67 65 22 26 22 6f 64 22 26 22 72 69 6c 6c 69 22 26 22 6e 67 22 26 22 63 68 69 6c 65 2e 63 6c 2f 48 39 22 26 22 6e 72 76 22 26 22 47 43 22 26 22 4e 56 2f 62 2e 68 22 26 22 74 22 26 22 6d 22 26 22 6c } //01 00  h"&"t"&"t"&"p"&"s://ge"&"od"&"rilli"&"ng"&"chile.cl/H9"&"nrv"&"GC"&"NV/b.h"&"t"&"m"&"l
		$a_01_4 = {68 22 26 22 74 22 26 22 74 22 26 22 70 22 26 22 73 3a 2f 2f 63 61 73 61 22 26 22 76 69 76 22 26 22 61 2e 63 6f 6d 2e 70 65 2f 54 62 34 41 22 26 22 6a 76 7a 22 26 22 7a 72 22 26 22 69 77 50 2f 62 2e 68 22 26 22 74 22 26 22 6d 22 26 22 6c } //01 00  h"&"t"&"t"&"p"&"s://casa"&"viv"&"a.com.pe/Tb4A"&"jvz"&"zr"&"iwP/b.h"&"t"&"m"&"l
		$a_01_5 = {68 22 26 22 74 22 26 22 74 22 26 22 70 3a 2f 2f 61 22 26 22 67 72 6f 22 26 22 73 61 22 26 22 6e 75 73 2e 63 6f 6d 2e 74 72 2f 4c 64 22 26 22 52 36 22 26 22 35 76 22 26 22 42 4a 22 26 22 4a 62 2f 62 2e 68 22 26 22 74 22 26 22 6d 22 26 22 6c } //01 00  h"&"t"&"t"&"p://a"&"gro"&"sa"&"nus.com.tr/Ld"&"R6"&"5v"&"BJ"&"Jb/b.h"&"t"&"m"&"l
		$a_01_6 = {68 22 26 22 74 22 26 22 74 22 26 22 70 22 26 22 73 3a 2f 2f 64 65 63 22 26 22 69 6e 66 6f 22 26 22 72 6d 22 26 22 61 74 69 22 26 22 63 61 2e 63 6f 6d 2f 41 22 26 22 73 71 22 26 22 70 51 22 26 22 54 36 61 32 66 6c 2f 74 2e 68 22 26 22 74 22 26 22 6d 22 26 22 6c } //01 00  h"&"t"&"t"&"p"&"s://dec"&"info"&"rm"&"ati"&"ca.com/A"&"sq"&"pQ"&"T6a2fl/t.h"&"t"&"m"&"l
		$a_01_7 = {68 22 26 22 74 22 26 22 74 22 26 22 70 22 26 22 73 3a 2f 2f 6e 6f 22 26 22 76 61 22 26 22 6d 22 26 22 69 72 6f 6e 2e 63 6f 6d 2e 61 72 2f 53 70 22 26 22 56 30 32 22 26 22 39 4e 22 26 22 6e 63 22 26 22 45 6f 48 2f 74 2e 68 22 26 22 74 22 26 22 6d 22 26 22 6c } //01 00  h"&"t"&"t"&"p"&"s://no"&"va"&"m"&"iron.com.ar/Sp"&"V02"&"9N"&"nc"&"EoH/t.h"&"t"&"m"&"l
		$a_01_8 = {68 22 26 22 74 22 26 22 74 22 26 22 70 22 26 22 73 3a 2f 2f 6d 22 26 22 6f 6f 22 26 22 63 61 2e 69 6d 70 22 26 22 72 69 6d 22 26 22 65 22 26 22 6a 61 2e 63 6f 6d 2e 62 72 2f 75 71 22 26 22 4a 65 79 43 22 22 78 4f 22 26 22 39 2f 74 2e 68 22 26 22 74 22 26 22 6d 22 26 22 6c } //01 00  h"&"t"&"t"&"p"&"s://m"&"oo"&"ca.imp"&"rim"&"e"&"ja.com.br/uq"&"JeyC""xO"&"9/t.h"&"t"&"m"&"l
		$a_01_9 = {68 22 26 22 74 22 26 22 74 22 26 22 70 22 26 22 73 3a 2f 2f 64 65 22 26 22 63 69 6e 22 26 22 66 22 26 22 6f 2e 63 6f 22 26 22 6d 2e 62 72 2f 73 34 68 22 26 22 66 5a 79 76 22 26 22 37 4e 46 45 4d 2f 79 39 2e 68 22 26 22 74 22 26 22 6d 22 26 22 6c } //01 00  h"&"t"&"t"&"p"&"s://de"&"cin"&"f"&"o.co"&"m.br/s4h"&"fZyv"&"7NFEM/y9.h"&"t"&"m"&"l
		$a_01_10 = {68 22 26 22 74 22 26 22 74 22 26 22 70 22 26 22 73 3a 2f 2f 69 6d 22 26 22 70 72 69 22 26 22 6d 69 22 26 22 6a 61 2e 63 6f 22 26 22 6d 2e 62 72 2f 42 22 26 22 49 74 32 5a 22 26 22 6c 6d 22 26 22 33 2f 79 35 2e 68 22 26 22 74 22 26 22 6d 22 26 22 6c } //01 00  h"&"t"&"t"&"p"&"s://im"&"pri"&"mi"&"ja.co"&"m.br/B"&"It2Z"&"lm"&"3/y5.h"&"t"&"m"&"l
		$a_01_11 = {68 22 26 22 74 22 26 22 74 22 26 22 70 22 26 22 73 3a 2f 2f 73 74 22 26 22 75 6e 6e 22 26 22 69 6e 22 26 22 67 6d 61 22 26 22 78 2e 63 6f 6d 2f 4a 22 26 22 52 33 22 26 22 78 4e 22 26 22 73 37 57 22 26 22 37 57 22 26 22 6d 31 2f 79 31 2e 68 22 26 22 74 22 26 22 6d 22 26 22 6c } //00 00  h"&"t"&"t"&"p"&"s://st"&"unn"&"in"&"gma"&"x.com/J"&"R3"&"xN"&"s7W"&"7W"&"m1/y1.h"&"t"&"m"&"l
	condition:
		any of ($a_*)
 
}