
rule TrojanDownloader_O97M_Emotet_ALA_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.ALA!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_03_0 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 [0-ff] 28 [0-ff] 29 2c 20 22 22 29 2e 52 75 6e 20 [0-ff] 2e 90 1b 00 28 [0-ff] 29 2c 20 30 } //1
		$a_01_1 = {66 69 6c 65 46 69 6c 74 65 72 3a 3d 22 48 3f 3f 4c 20 46 69 6c 65 73 28 2a 2e 68 74 6d 29 2c 20 2a 2e 68 74 6d 22 29 } //1 fileFilter:="H??L Files(*.htm), *.htm")
		$a_01_2 = {4f 70 65 6e 20 22 43 3a 5c 70 72 69 6d 65 72 2e 74 78 74 22 20 46 6f 72 20 4f 75 74 70 75 74 20 41 73 20 23 31 } //1 Open "C:\primer.txt" For Output As #1
		$a_01_3 = {73 74 72 46 69 6c 65 54 69 74 6c 65 20 3d 20 22 73 22 } //1 strFileTitle = "s"
		$a_01_4 = {73 74 72 46 69 6c 65 4e 61 6d 65 20 3d 20 22 2e 22 } //1 strFileName = "."
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}
rule TrojanDownloader_O97M_Emotet_ALA_MTB_2{
	meta:
		description = "TrojanDownloader:O97M/Emotet.ALA!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_03_0 = {4f 70 65 6e 20 [0-ff] 2e [0-ff] 28 22 44 46 45 4e 22 2c 20 37 36 29 20 46 6f 72 20 4f 75 74 70 75 74 20 41 73 20 23 31 } //1
		$a_01_1 = {73 74 72 46 69 6c 65 54 69 74 6c 65 20 3d 20 22 73 22 } //1 strFileTitle = "s"
		$a_01_2 = {73 74 72 46 69 6c 65 4e 61 6d 65 20 3d 20 22 2e 22 } //1 strFileName = "."
		$a_03_3 = {50 72 69 6e 74 20 23 31 2c 20 [0-ff] 2e [0-ff] 28 22 35 22 2c 20 37 35 29 20 26 20 76 62 43 72 4c 66 20 2b 20 90 1b 00 2e 90 1b 01 28 22 2c 22 2c 20 37 37 29 } //1
		$a_03_4 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 [0-ff] 28 22 62 6e 6c 73 77 65 53 64 22 2c 20 36 35 29 29 2e 43 72 65 61 74 65 4f 62 6a 65 63 74 28 90 1b 00 28 22 64 34 52 54 48 34 35 22 2c 20 38 32 29 2c 20 22 22 29 2e 52 75 6e 20 [0-ff] 2e 90 1b 00 28 22 74 73 22 2c 20 37 36 29 2c 20 30 } //1
		$a_01_5 = {66 69 6c 65 46 69 6c 74 65 72 3a 3d 22 48 3f 3f 4c 20 46 69 6c 65 73 28 2a 2e 68 74 6d 29 2c 20 2a 2e 68 74 6d 22 29 } //1 fileFilter:="H??L Files(*.htm), *.htm")
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}
rule TrojanDownloader_O97M_Emotet_ALA_MTB_3{
	meta:
		description = "TrojanDownloader:O97M/Emotet.ALA!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 04 00 00 "
		
	strings :
		$a_01_0 = {6e 22 26 22 61 74 22 26 22 61 79 22 26 22 61 6b 22 26 22 69 6d 2e 63 22 26 22 6f 22 26 22 6d 70 22 26 22 65 72 22 26 22 73 6f 22 26 22 6e 61 22 26 22 6c 2f 50 22 26 22 52 42 22 26 22 48 61 22 26 22 47 62 22 26 22 62 32 22 26 22 7a 56 22 26 22 67 74 22 26 22 62 4d } //1 n"&"at"&"ay"&"ak"&"im.c"&"o"&"mp"&"er"&"so"&"na"&"l/P"&"RB"&"Ha"&"Gb"&"b2"&"zV"&"gt"&"bM
		$a_01_1 = {65 22 26 22 73 74 22 26 22 61 63 22 26 22 69 6f 22 26 22 65 73 22 26 22 70 6f 22 26 22 72 74 22 26 22 69 76 61 22 26 22 76 69 6c 22 26 22 61 6e 22 26 22 6f 76 22 26 22 61 69 22 26 22 6c 61 22 26 22 67 65 22 26 22 6c 74 22 26 22 72 22 26 22 75 2e 63 22 26 22 61 22 26 22 74 2f 74 22 26 22 6d 22 26 22 70 2f 54 22 26 22 73 62 22 26 22 71 35 35 22 26 22 67 4d 22 26 22 57 38 22 26 22 62 } //1 e"&"st"&"ac"&"io"&"es"&"po"&"rt"&"iva"&"vil"&"an"&"ov"&"ai"&"la"&"ge"&"lt"&"r"&"u.c"&"a"&"t/t"&"m"&"p/T"&"sb"&"q55"&"gM"&"W8"&"b
		$a_01_2 = {74 22 26 22 67 22 26 22 61 73 22 26 22 69 61 22 26 22 6d 61 6e 22 26 22 61 67 65 22 26 22 6d 65 22 26 22 6e 74 2e 63 22 26 22 6f 22 26 22 6d 2f 77 22 26 22 70 2d 63 22 26 22 6f 6e 22 26 22 74 65 22 26 22 6e 74 2f 36 22 26 22 65 74 22 26 22 6d 57 22 26 22 5a } //1 t"&"g"&"as"&"ia"&"man"&"age"&"me"&"nt.c"&"o"&"m/w"&"p-c"&"on"&"te"&"nt/6"&"et"&"mW"&"Z
		$a_01_3 = {74 22 26 22 65 6b 22 26 22 73 74 22 26 22 69 6c 22 26 22 75 7a 22 26 22 6d 61 22 26 22 6e 67 22 26 22 6f 72 22 26 22 75 73 22 26 22 75 2e 63 22 26 22 6f 22 26 22 6d 2f 77 22 26 22 70 2d 61 22 26 22 64 6d 22 26 22 69 6e 2f 4d 22 26 22 65 6f 22 26 22 72 4c 22 26 22 6f } //1 t"&"ek"&"st"&"il"&"uz"&"ma"&"ng"&"or"&"us"&"u.c"&"o"&"m/w"&"p-a"&"dm"&"in/M"&"eo"&"rL"&"o
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=1
 
}