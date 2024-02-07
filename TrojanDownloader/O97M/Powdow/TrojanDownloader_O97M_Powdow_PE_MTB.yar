
rule TrojanDownloader_O97M_Powdow_PE_MTB{
	meta:
		description = "TrojanDownloader:O97M/Powdow.PE!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {43 48 41 52 28 31 31 32 29 26 43 48 41 52 28 31 31 31 29 26 22 77 65 72 5e 73 68 65 22 26 43 48 41 52 28 31 30 38 29 26 43 48 41 52 28 31 30 38 29 } //01 00  CHAR(112)&CHAR(111)&"wer^she"&CHAR(108)&CHAR(108)
		$a_00_1 = {73 74 41 52 74 60 2d 73 6c 45 60 45 70 20 32 35 } //01 00  stARt`-slE`Ep 25
		$a_00_2 = {63 64 20 24 7b 65 6e 56 60 3a 61 70 70 64 61 74 61 7d } //01 00  cd ${enV`:appdata}
		$a_00_3 = {28 27 2e 27 2b 27 2f 7a 6e 22 26 43 48 41 52 28 34 36 29 26 22 65 78 65 } //01 00  ('.'+'/zn"&CHAR(46)&"exe
		$a_00_4 = {63 22 26 43 48 41 52 28 31 30 39 29 26 43 48 41 52 28 31 30 30 29 26 43 48 41 52 28 33 32 29 26 43 48 41 52 28 34 37 29 26 43 48 41 52 28 39 39 29 } //00 00  c"&CHAR(109)&CHAR(100)&CHAR(32)&CHAR(47)&CHAR(99)
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_O97M_Powdow_PE_MTB_2{
	meta:
		description = "TrojanDownloader:O97M/Powdow.PE!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 07 00 00 01 00 "
		
	strings :
		$a_00_0 = {70 69 6e 67 5f 78 78 20 2b 20 70 69 6e 67 5f 78 78 31 72 32 } //01 00  ping_xx + ping_xx1r2
		$a_00_1 = {63 61 6c 63 6d 6f 74 6f 72 2e 53 68 6f 77 } //01 00  calcmotor.Show
		$a_00_2 = {53 68 65 6c 6c 20 63 61 6c 63 73 65 78 6b 6f 6f 6b 6b } //01 00  Shell calcsexkookk
		$a_00_3 = {22 74 70 3a 2f 2f 25 37 34 38 32 33 37 25 37 32 38 37 34 38 25 37 32 38 37 34 38 25 37 32 38 37 34 38 25 37 32 38 37 34 38 25 37 32 38 37 34 38 40 6a 2e 6d 70 2f 22 } //01 00  "tp://%748237%728748%728748%728748%728748%728748@j.mp/"
		$a_00_4 = {6e 61 62 64 62 61 73 6a 6b 64 74 79 69 61 73 64 62 6d 6e 61 } //01 00  nabdbasjkdtyiasdbmna
		$a_00_5 = {64 68 73 61 73 62 64 61 73 67 68 64 74 6a 67 61 73 68 76 63 68 } //01 00  dhsasbdasghdtjgashvch
		$a_00_6 = {6b 39 5f 34 32 5f 61 73 20 3d 20 22 74 22 20 2b 20 22 61 20 68 74 22 } //00 00  k9_42_as = "t" + "a ht"
	condition:
		any of ($a_*)
 
}