
rule TrojanDownloader_O97M_Emotet_RP_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.RP!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_81_0 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //1 URLDownloadToFileA
		$a_03_1 = {5c 64 78 67 78 65 90 02 02 2e 6f 63 78 90 00 } //1
	condition:
		((#a_81_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}
rule TrojanDownloader_O97M_Emotet_RP_MTB_2{
	meta:
		description = "TrojanDownloader:O97M/Emotet.RP!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_03_0 = {2e 43 72 65 61 74 65 90 02 01 28 90 02 40 2c 20 90 02 20 2c 20 90 02 20 2c 20 90 02 20 29 90 00 } //1
		$a_03_1 = {52 65 70 6c 61 63 65 90 02 08 54 72 69 6d 28 90 02 16 29 20 2b 90 00 } //1
		$a_03_2 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 90 02 20 28 90 02 20 2e 90 02 70 29 29 90 00 } //1
		$a_03_3 = {53 75 62 20 61 75 74 6f 6f 70 65 6e 28 29 90 02 02 4f 6e 20 45 72 72 6f 72 20 52 65 73 75 6d 65 20 4e 65 78 74 90 00 } //1
		$a_03_4 = {44 69 6d 20 90 02 20 52 65 44 69 6d 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1) >=5
 
}
rule TrojanDownloader_O97M_Emotet_RP_MTB_3{
	meta:
		description = "TrojanDownloader:O97M/Emotet.RP!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 04 00 00 "
		
	strings :
		$a_03_0 = {22 72 33 32 2e 65 78 65 2b 90 02 07 22 68 74 74 70 3a 2f 2f 90 02 5f 22 2c 22 90 02 07 22 68 74 74 70 3a 2f 2f 90 02 5f 22 2c 22 90 02 07 22 68 74 74 70 3a 2f 2f 90 00 } //1
		$a_03_1 = {30 2c 30 29 90 02 1f 72 22 26 22 65 22 26 22 67 22 26 22 73 76 22 26 22 72 33 22 26 22 32 2e 65 22 26 22 78 22 26 22 65 90 02 05 53 79 22 26 22 73 22 26 22 57 22 26 22 6f 22 26 22 77 22 26 22 36 34 5c 90 02 05 5c 57 22 26 22 69 6e 22 26 22 64 22 26 22 6f 22 26 22 77 22 26 22 73 5c 90 00 } //1
		$a_03_2 = {53 79 73 57 6f 77 36 34 5c 90 02 05 5c 57 69 6e 64 6f 77 73 5c 90 02 05 22 2c 30 2c 30 29 90 02 05 2c 30 2c 22 90 02 05 72 22 26 22 65 67 73 76 22 26 22 72 22 26 22 33 32 2e 65 78 65 65 90 02 05 68 22 26 22 74 74 22 26 22 70 73 3a 2f 90 00 } //1
		$a_03_3 = {72 22 26 22 65 22 26 22 67 22 26 22 73 76 22 26 22 72 22 26 22 33 22 26 22 32 2e 65 22 26 22 78 22 26 22 65 90 02 05 5c 57 22 26 22 69 6e 22 26 22 64 6f 22 26 22 77 22 26 22 73 5c 90 02 05 53 79 22 26 22 73 57 22 26 22 6f 77 22 26 22 36 22 26 22 34 5c 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1) >=1
 
}
rule TrojanDownloader_O97M_Emotet_RP_MTB_4{
	meta:
		description = "TrojanDownloader:O97M/Emotet.RP!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 0b 00 00 "
		
	strings :
		$a_01_0 = {22 68 22 26 22 74 74 22 26 22 70 3a 2f 2f 6c 75 22 26 22 70 75 22 26 22 73 2e 6b 74 63 61 74 6c 2e 63 6f 6d 2f 77 22 26 22 70 2d 63 6f 22 26 22 6e 74 22 26 22 65 22 26 22 6e 22 26 22 74 2f 75 43 22 26 22 63 63 22 26 22 57 22 26 22 4a 2f 22 } //1 "h"&"tt"&"p://lu"&"pu"&"s.ktcatl.com/w"&"p-co"&"nt"&"e"&"n"&"t/uC"&"cc"&"W"&"J/"
		$a_01_1 = {22 68 22 26 22 74 74 22 26 22 70 73 3a 2f 22 26 22 2f 70 61 22 26 22 63 6b 65 22 26 22 72 73 61 6e 22 26 22 64 6d 22 26 22 6f 76 22 26 22 65 72 22 26 22 73 62 61 22 26 22 6e 67 22 26 22 61 6c 22 26 22 6f 72 65 63 68 22 26 22 61 72 67 65 73 2e 63 22 26 22 6f 22 26 22 6d 2f 63 22 26 22 67 22 26 22 69 2d 62 22 26 22 69 22 26 22 6e 2f 55 72 22 26 22 49 36 47 4d 22 26 22 38 37 4b 35 75 22 26 22 32 79 32 70 22 26 22 4f 57 2f 22 } //1 "h"&"tt"&"ps:/"&"/pa"&"cke"&"rsan"&"dm"&"ov"&"er"&"sba"&"ng"&"al"&"orech"&"arges.c"&"o"&"m/c"&"g"&"i-b"&"i"&"n/Ur"&"I6GM"&"87K5u"&"2y2p"&"OW/"
		$a_01_2 = {22 68 22 26 22 74 74 22 26 22 70 3a 2f 22 26 22 2f 31 22 26 22 32 22 26 22 33 62 72 22 26 22 65 61 22 26 22 74 68 22 26 22 65 2e 6f 22 26 22 72 22 26 22 67 2f 65 22 26 22 72 22 26 22 72 6f 22 26 22 72 2f 44 72 73 2f } //1 "h"&"tt"&"p:/"&"/1"&"2"&"3br"&"ea"&"th"&"e.o"&"r"&"g/e"&"r"&"ro"&"r/Drs/
		$a_01_3 = {22 68 22 26 22 74 74 22 26 22 70 22 26 22 73 3a 2f 2f 67 72 22 26 22 65 65 22 26 22 6e 65 73 22 26 22 71 75 22 26 22 61 6c 22 26 22 69 74 79 66 6c 22 26 22 6f 22 26 22 6f 22 26 22 72 69 22 26 22 6e 67 2e 63 22 26 22 6f 22 26 22 6d 2f 65 22 26 22 72 22 26 22 72 22 26 22 6f 22 26 22 72 2f 6b 55 22 26 22 4f 37 4e 22 26 22 6e 6b 22 26 22 70 22 26 22 4d 70 32 22 26 22 63 73 2f 22 } //1 "h"&"tt"&"p"&"s://gr"&"ee"&"nes"&"qu"&"al"&"ityfl"&"o"&"o"&"ri"&"ng.c"&"o"&"m/e"&"r"&"r"&"o"&"r/kU"&"O7N"&"nk"&"p"&"Mp2"&"cs/"
		$a_01_4 = {22 68 22 26 22 74 74 22 26 22 70 3a 2f 22 26 22 2f 6e 22 26 22 65 22 26 22 77 2e 68 22 26 22 73 73 75 22 26 22 73 2e 6f 22 26 22 72 22 26 22 67 2f 77 22 26 22 70 2d 69 6e 22 26 22 63 22 26 22 6c 75 22 26 22 64 22 26 22 65 73 2f 62 22 26 22 6c 22 26 22 6f 22 26 22 63 6b 22 26 22 73 2f 65 22 26 22 4b 49 22 26 22 44 22 26 22 30 51 41 22 26 22 66 4c 22 26 22 55 53 2f 22 } //1 "h"&"tt"&"p:/"&"/n"&"e"&"w.h"&"ssu"&"s.o"&"r"&"g/w"&"p-in"&"c"&"lu"&"d"&"es/b"&"l"&"o"&"ck"&"s/e"&"KI"&"D"&"0QA"&"fL"&"US/"
		$a_03_5 = {53 79 73 57 6f 77 36 34 5c 90 02 06 5c 57 69 6e 64 6f 77 73 5c 90 02 06 2c 30 2c 30 29 90 02 06 44 22 26 22 6c 22 26 22 6c 52 22 26 22 65 67 69 73 74 65 72 22 26 22 53 65 72 76 65 22 26 22 90 02 0a 22 68 22 26 90 00 } //1
		$a_01_6 = {2f 2f 61 6b 68 72 61 69 6c 77 61 79 2e 63 6f 6d 2f 63 67 69 2d 62 69 6e 2f 62 35 63 39 63 78 34 69 6b 32 67 67 6e 36 63 2f } //1 //akhrailway.com/cgi-bin/b5c9cx4ik2ggn6c/
		$a_01_7 = {2f 2f 74 68 65 6d 69 6c 6c 69 6f 6e 61 69 72 65 73 77 65 62 2e 63 6f 6d 2f 77 70 2d 61 64 6d 69 6e 2f 6d 64 2f } //1 //themillionairesweb.com/wp-admin/md/
		$a_01_8 = {2f 2f 63 6d 62 61 76 6f 63 61 74 2e 66 72 2f 77 70 2d 61 64 6d 69 6e 2f 75 6b 63 63 75 31 62 71 76 62 73 76 65 2f } //1 //cmbavocat.fr/wp-admin/ukccu1bqvbsve/
		$a_01_9 = {2f 2f 69 6e 73 74 69 74 75 74 69 6f 6e 73 65 76 69 67 6e 65 2e 6f 72 67 2f 77 70 2d 69 6e 63 6c 75 64 65 73 2f 70 76 64 71 75 68 71 6a 79 65 71 6f 71 36 72 2f } //1 //institutionsevigne.org/wp-includes/pvdquhqjyeqoq6r/
		$a_01_10 = {2f 2f 69 64 76 6c 61 62 2e 63 6f 6d 2e 62 72 2f 77 70 2d 61 64 6d 69 6e 2f 66 69 77 62 6c 2f } //1 //idvlab.com.br/wp-admin/fiwbl/
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_03_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1) >=1
 
}