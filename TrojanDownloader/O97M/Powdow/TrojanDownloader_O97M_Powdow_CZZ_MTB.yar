
rule TrojanDownloader_O97M_Powdow_CZZ_MTB{
	meta:
		description = "TrojanDownloader:O97M/Powdow.CZZ!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {28 6e 45 77 2d 6f 42 60 6a 65 63 54 20 4e 65 74 2e 57 65 62 63 4c 60 49 45 4e 74 29 } //01 00  (nEw-oB`jecT Net.WebcL`IENt)
		$a_01_1 = {2b 27 6c 6f 61 64 46 69 6c 65 27 29 } //01 00  +'loadFile')
		$a_01_2 = {74 74 70 73 3a 2f 2f 63 75 74 74 2e 6c 79 2f 5a 68 41 4d 4c 41 41 } //01 00  ttps://cutt.ly/ZhAMLAA
		$a_01_3 = {73 74 41 52 74 60 2d 73 6c 45 60 45 70 } //01 00  stARt`-slE`Ep
		$a_01_4 = {26 43 48 41 52 28 34 36 29 26 22 65 78 65 } //00 00  &CHAR(46)&"exe
	condition:
		any of ($a_*)
 
}