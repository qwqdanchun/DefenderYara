
rule TrojanDownloader_O97M_Emotet_AQPD_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.AQPD!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {3a 2f 2f 77 77 77 2e 61 64 69 70 75 74 72 61 6e 74 6f 2e 63 6f 6d 2f 62 65 72 6b 61 73 2f 4e 68 65 44 39 44 33 55 4d 33 4e 63 6d 53 50 52 59 65 51 2f } //01 00  ://www.adiputranto.com/berkas/NheD9D3UM3NcmSPRYeQ/
		$a_01_1 = {3a 2f 2f 6e 22 26 22 61 74 61 22 26 22 79 61 6b 22 26 22 69 6d 2e 63 6f 6d 2f 70 22 26 22 65 72 73 22 26 22 6f 6e 22 26 22 61 6c 2f 6f 22 26 22 30 73 22 26 22 4b 49 22 26 22 7a 52 22 26 22 6a 4d 2f } //01 00  ://n"&"ata"&"yak"&"im.com/p"&"ers"&"on"&"al/o"&"0s"&"KI"&"zR"&"jM/
		$a_01_2 = {3a 2f 2f 6d 22 26 22 65 74 22 26 22 61 34 22 26 22 6d 65 22 26 22 64 69 22 26 22 61 2e 63 22 26 22 6f 22 26 22 6d 2f 70 22 26 22 6f 72 22 26 22 74 66 22 26 22 6f 6c 22 26 22 69 6f 22 26 22 32 2f 66 6c 22 26 22 62 33 22 26 22 69 75 22 26 22 67 6c 22 26 22 79 70 22 26 22 73 62 22 26 22 71 54 2f } //01 00  ://m"&"et"&"a4"&"me"&"di"&"a.c"&"o"&"m/p"&"or"&"tf"&"ol"&"io"&"2/fl"&"b3"&"iu"&"gl"&"yp"&"sb"&"qT/
		$a_01_3 = {3a 2f 2f 68 22 26 22 61 74 68 22 26 22 61 61 62 22 26 22 65 61 22 26 22 63 68 2e 63 22 26 22 6f 22 26 22 6d 2f 64 22 26 22 6f 63 75 22 26 22 6d 22 26 22 65 6e 22 26 22 74 73 2f 7a 4e 73 43 2f } //00 00  ://h"&"ath"&"aab"&"ea"&"ch.c"&"o"&"m/d"&"ocu"&"m"&"en"&"ts/zNsC/
	condition:
		any of ($a_*)
 
}