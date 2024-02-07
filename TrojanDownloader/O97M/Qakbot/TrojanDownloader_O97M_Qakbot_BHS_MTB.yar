
rule TrojanDownloader_O97M_Qakbot_BHS_MTB{
	meta:
		description = "TrojanDownloader:O97M/Qakbot.BHS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {3a 2f 2f 6d 79 22 26 22 70 72 69 22 26 22 6e 74 73 6f 6e 22 26 22 61 6c 69 74 79 2e 63 22 26 22 6f 22 26 22 6d 2f 68 6a 70 22 26 22 6c 52 67 31 22 26 22 51 31 56 22 26 22 68 41 2f 46 6e 22 26 22 68 22 26 22 62 6e 2e 70 22 26 22 6e 67 } //01 00  ://my"&"pri"&"ntson"&"ality.c"&"o"&"m/hjp"&"lRg1"&"Q1V"&"hA/Fn"&"h"&"bn.p"&"ng
		$a_01_1 = {3a 2f 2f 62 6c 22 26 22 75 61 22 26 22 73 70 65 22 26 22 63 74 2e 63 22 26 22 6f 22 26 22 6d 2f 53 38 22 26 22 79 75 32 31 22 26 22 46 6a 74 72 2f 46 6e 22 26 22 68 62 22 26 22 6e 2e 70 22 26 22 6e 67 } //01 00  ://bl"&"ua"&"spe"&"ct.c"&"o"&"m/S8"&"yu21"&"Fjtr/Fn"&"hb"&"n.p"&"ng
		$a_01_2 = {3a 2f 2f 6e 22 26 22 65 77 22 26 22 64 6f 22 26 22 6f 72 2d 76 65 22 26 22 6e 74 75 72 65 22 26 22 73 2e 63 22 26 22 6f 6d 2f 63 44 22 26 22 38 34 61 22 26 22 61 35 45 2f 46 22 26 22 6e 68 22 26 22 62 6e 2e 70 22 26 22 6e 67 } //00 00  ://n"&"ew"&"do"&"or-ve"&"nture"&"s.c"&"om/cD"&"84a"&"a5E/F"&"nh"&"bn.p"&"ng
	condition:
		any of ($a_*)
 
}