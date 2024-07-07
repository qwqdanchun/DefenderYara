
rule TrojanDownloader_O97M_Emotet_EEPK_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.EEPK!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {74 22 26 22 74 22 26 22 70 3a 2f 2f 73 22 26 22 61 6c 22 26 22 6c 65 22 26 22 64 65 22 26 22 6d 6f 22 26 22 64 65 2e 63 22 26 22 6f 22 26 22 6d 2f 74 22 26 22 67 72 22 26 22 6f 75 22 26 22 70 2e 67 22 26 22 65 2f 6b 22 26 22 49 31 22 26 22 6e 78 22 26 22 6a 44 22 26 22 41 72 22 26 22 7a 67 22 26 22 6c 4f 22 26 22 4c 43 22 26 22 5a 6b 22 26 22 35 2f } //1 t"&"t"&"p://s"&"al"&"le"&"de"&"mo"&"de.c"&"o"&"m/t"&"gr"&"ou"&"p.g"&"e/k"&"I1"&"nx"&"jD"&"Ar"&"zg"&"lO"&"LC"&"Zk"&"5/
		$a_01_1 = {74 22 26 22 74 70 22 26 22 73 3a 2f 2f 62 22 26 22 6f 73 22 26 22 6e 79 2e 63 22 26 22 6f 22 26 22 6d 2f 61 22 26 22 73 70 22 26 22 6e 65 22 26 22 74 5f 63 6c 22 26 22 69 65 22 26 22 6e 74 2f 6b 22 26 22 57 58 22 26 22 4b 44 22 26 22 71 73 22 26 22 42 45 22 26 22 69 50 22 26 22 76 47 2f } //1 t"&"tp"&"s://b"&"os"&"ny.c"&"o"&"m/a"&"sp"&"ne"&"t_cl"&"ie"&"nt/k"&"WX"&"KD"&"qs"&"BE"&"iP"&"vG/
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}