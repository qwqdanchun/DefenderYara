
rule TrojanDownloader_O97M_Powdow_SM_MTB{
	meta:
		description = "TrojanDownloader:O97M/Powdow.SM!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {2e 4f 70 65 6e 20 22 47 45 54 22 2c 20 22 68 74 74 70 3a 2f 2f 31 38 35 2e 31 32 38 2e 34 33 2e 32 31 33 2f 34 30 72 2f 70 72 69 63 65 71 75 6f 74 65 2e 65 78 65 } //1 .Open "GET", "http://185.128.43.213/40r/pricequote.exe
		$a_03_1 = {2e 73 61 76 65 74 6f 66 69 6c 65 20 90 02 23 20 2b 20 22 5c 61 62 63 2e 65 78 65 22 2c 20 32 90 00 } //1
		$a_01_2 = {2e 47 65 74 53 70 65 63 69 61 6c 46 6f 6c 64 65 72 28 32 29 } //1 .GetSpecialFolder(2)
		$a_03_3 = {2e 52 75 6e 20 90 02 23 20 2b 20 22 5c 61 62 63 2e 65 78 65 22 2c 20 30 2c 20 54 72 75 65 90 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1) >=4
 
}
rule TrojanDownloader_O97M_Powdow_SM_MTB_2{
	meta:
		description = "TrojanDownloader:O97M/Powdow.SM!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_03_0 = {2e 74 65 78 74 90 02 15 20 3d 20 53 74 72 52 65 76 65 72 73 65 28 22 5c 5c 5c 5c 70 6d 65 74 5c 5c 5c 5c 73 77 6f 64 6e 69 77 5c 5c 5c 5c 3a 63 22 29 90 00 } //1
		$a_03_1 = {2e 69 6e 66 22 2c 20 90 02 10 2e 76 61 6c 75 65 90 00 } //1
		$a_03_2 = {2e 73 63 74 22 2c 20 90 02 10 2e 76 61 6c 75 65 90 00 } //1
		$a_03_3 = {53 74 72 52 65 76 65 72 73 65 28 22 20 73 2f 20 69 6e 2f 20 70 74 73 6d 63 22 29 20 26 20 90 02 10 20 26 20 22 90 02 10 2e 69 6e 66 22 90 00 } //1
		$a_01_4 = {53 6c 65 65 70 20 33 30 30 30 } //1 Sleep 3000
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}
rule TrojanDownloader_O97M_Powdow_SM_MTB_3{
	meta:
		description = "TrojanDownloader:O97M/Powdow.SM!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 07 00 00 "
		
	strings :
		$a_01_0 = {28 22 63 34 3a 30 5c 35 70 31 72 62 6f 64 67 31 72 33 61 61 6d 36 64 66 61 31 74 31 61 34 5c 35 36 34 34 64 39 36 37 34 34 36 2e 33 6a 34 70 33 67 32 } //1 ("c4:0\5p1rbodg1r3aam6dfa1t1a4\5644d967446.3j4p3g2
		$a_01_1 = {28 22 68 39 74 37 74 36 70 31 3a 65 2f 63 2f 66 72 65 30 38 72 63 66 62 6b 33 2e 39 63 64 6f 30 6d 32 2f 32 69 36 7a 35 35 65 2f 64 79 65 61 63 63 36 61 30 2e 66 70 38 68 66 70 62 } //1 ("h9t7t6p1:e/c/fre08rcfbk3.9cdo0m2/2i6z55e/dyeacc6a0.fp8hfpb
		$a_01_2 = {28 22 63 66 3a 62 5c 30 70 38 72 30 6f 63 67 30 72 66 61 32 6d 32 64 33 61 34 74 38 61 65 5c 34 32 66 36 35 37 35 38 62 35 62 2e 30 6a 39 70 36 67 61 } //1 ("cf:b\0p8r0ocg0rfa2m2d3a4t8ae\42f65758b5b.0j9p6ga
		$a_01_3 = {28 22 68 30 74 64 74 63 70 64 3a 62 2f 36 2f 32 72 33 30 66 72 62 66 64 6b 31 2e 66 63 65 6f 61 6d 62 2f 30 69 39 7a 66 35 61 2f 66 79 30 61 36 63 31 61 35 2e 32 70 35 68 64 70 } //1 ("h0tdtcpd:b/6/2r30frbfdk1.fceoamb/0i9zf5a/fy0a6c1a5.2p5hdp
		$a_03_4 = {2e 65 78 65 63 20 90 02 0f 20 26 20 22 20 22 20 26 20 90 02 0f 28 22 63 90 01 01 3a 90 01 01 5c 90 01 01 70 90 01 01 72 90 01 01 6f 90 01 01 67 90 01 01 72 90 01 01 61 90 01 01 6d 90 01 01 64 90 01 01 61 90 01 01 74 90 01 01 61 90 01 01 5c 90 02 0f 2e 90 01 01 6a 90 01 01 70 90 01 01 67 90 00 } //1
		$a_01_5 = {28 22 63 35 3a 63 5c 38 70 65 72 62 6f 32 67 37 72 65 61 32 6d 30 64 34 61 33 74 65 61 34 5c 33 36 39 34 37 36 31 33 30 32 31 2e 32 6a 38 70 38 67 66 } //1 ("c5:c\8perbo2g7rea2m0d4a3tea4\36947613021.2j8p8gf
		$a_01_6 = {68 63 74 30 74 37 70 37 3a 66 2f 65 2f 66 68 33 71 61 33 33 6c 37 6c 33 2e 62 63 62 6f 64 6d 35 2f 32 69 35 7a 35 35 31 2f 62 79 62 61 32 63 39 61 61 2e 36 70 61 68 33 70 } //1 hct0t7p7:f/e/fh3qa33l7l3.bcbodm5/2i5z551/byba2c9aa.6pah3p
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_03_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=2
 
}