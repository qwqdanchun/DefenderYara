
rule TrojanDownloader_O97M_GuLoader_PD_MTB{
	meta:
		description = "TrojanDownloader:O97M/GuLoader.PD!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_00_0 = {65 78 65 22 20 2d 44 65 73 74 69 6e 61 74 69 6f 6e } //1 exe" -Destination
		$a_00_1 = {22 24 7b 65 6e 56 60 3a 61 70 70 64 61 74 61 7d } //1 "${enV`:appdata}
		$a_00_2 = {22 63 22 26 43 48 41 52 28 31 30 39 29 26 43 48 41 52 28 31 30 30 29 26 43 48 41 52 28 33 32 29 26 43 48 41 52 28 34 37 29 26 43 48 41 52 28 39 39 29 26 43 48 41 52 28 33 32 29 26 43 48 41 52 28 31 31 32 29 26 43 48 41 52 28 31 31 31 29 26 22 77 65 72 5e 73 68 65 22 26 43 48 41 52 28 31 30 38 29 26 43 48 41 52 28 31 30 38 29 26 43 48 41 52 28 33 32 29 26 22 } //1 "c"&CHAR(109)&CHAR(100)&CHAR(32)&CHAR(47)&CHAR(99)&CHAR(32)&CHAR(112)&CHAR(111)&"wer^she"&CHAR(108)&CHAR(108)&CHAR(32)&"
		$a_00_3 = {73 74 41 52 74 60 2d 73 6c 45 60 45 70 20 32 35 3b } //1 stARt`-slE`Ep 25;
		$a_00_4 = {28 27 2e 27 2b 27 2f 73 77 22 26 43 48 41 52 28 34 36 29 26 22 65 78 65 27 29 22 29 } //1 ('.'+'/sw"&CHAR(46)&"exe')")
		$a_00_5 = {74 74 70 73 3a 2f 2f 74 69 6e 79 75 72 6c 2e 63 6f 6d 2f 79 35 64 73 63 34 61 67 } //1 ttps://tinyurl.com/y5dsc4ag
		$a_00_6 = {28 27 44 6f 77 6e 27 2b 27 6c 6f 61 64 46 69 6c 65 27 29 } //1 ('Down'+'loadFile')
		$a_00_7 = {22 49 6e 76 6f 6b 65 22 } //1 "Invoke"
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1) >=8
 
}