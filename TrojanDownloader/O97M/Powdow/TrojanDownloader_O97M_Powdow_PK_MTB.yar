
rule TrojanDownloader_O97M_Powdow_PK_MTB{
	meta:
		description = "TrojanDownloader:O97M/Powdow.PK!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,0c 00 0c 00 0c 00 00 "
		
	strings :
		$a_02_0 = {74 74 70 73 3a 2f 2f 74 69 6e 79 75 72 6c 2e 63 6f 6d 2f 90 02 0a 27 2c 27 90 00 } //1
		$a_00_1 = {2d 77 20 31 20 28 6e 45 77 2d 6f 42 60 6a 65 63 54 20 4e 65 74 } //1 -w 1 (nEw-oB`jecT Net
		$a_00_2 = {57 65 62 63 4c 60 49 45 4e 74 29 } //1 WebcL`IENt)
		$a_00_3 = {6e 27 2b 27 6c 6f 61 64 46 69 6c 65 27 29 } //1 n'+'loadFile')
		$a_00_4 = {2d 77 20 31 20 2d 45 50 20 62 79 70 61 73 73 20 73 74 41 52 74 60 2d 73 6c 45 60 45 70 20 32 35 3b } //1 -w 1 -EP bypass stARt`-slE`Ep 25;
		$a_00_5 = {63 64 20 24 7b 65 6e 56 60 3a 61 70 70 64 61 74 61 7d 3b } //1 cd ${enV`:appdata};
		$a_00_6 = {45 58 45 43 28 43 48 41 52 28 31 31 32 29 26 43 48 41 52 28 31 31 31 29 26 43 48 41 52 28 31 31 39 29 26 43 48 41 52 28 31 30 31 29 26 43 48 41 52 28 31 31 34 29 26 43 48 41 52 28 31 31 35 29 26 43 48 41 52 28 31 30 34 29 26 43 48 41 52 28 31 30 31 29 26 43 48 41 52 28 31 30 38 29 26 43 48 41 52 28 31 30 38 29 26 } //1 EXEC(CHAR(112)&CHAR(111)&CHAR(119)&CHAR(101)&CHAR(114)&CHAR(115)&CHAR(104)&CHAR(101)&CHAR(108)&CHAR(108)&
		$a_00_7 = {64 61 64 61 64 61 64 61 66 61 66 61 66 61 66 61 } //1 dadadadafafafafa
		$a_00_8 = {75 73 65 6c 65 73 73 20 63 65 6c 6c } //1 useless cell
		$a_00_9 = {6d 61 67 69 63 20 63 65 6c 6c } //1 magic cell
		$a_00_10 = {65 70 69 63 20 63 65 6c 6c } //1 epic cell
		$a_02_11 = {28 27 2e 27 2b 27 2f 90 01 02 22 26 43 48 41 52 28 34 36 29 26 22 65 78 65 27 29 22 29 90 00 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1+(#a_00_9  & 1)*1+(#a_00_10  & 1)*1+(#a_02_11  & 1)*1) >=12
 
}