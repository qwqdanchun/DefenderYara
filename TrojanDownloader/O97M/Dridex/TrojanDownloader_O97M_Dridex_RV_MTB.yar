
rule TrojanDownloader_O97M_Dridex_RV_MTB{
	meta:
		description = "TrojanDownloader:O97M/Dridex.RV!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_00_0 = {22 68 74 22 20 26 20 22 74 22 20 26 20 22 70 22 20 26 20 22 73 3a 2f 2f 22 } //1 "ht" & "t" & "p" & "s://"
		$a_02_1 = {52 65 70 6c 61 63 65 28 53 74 72 69 6e 67 28 74 2c 20 [0-0a] 29 2c 20 [0-0a] 2c 20 75 29 } //1
		$a_02_2 = {41 70 70 6c 69 63 61 74 69 6f 6e 2e 52 75 6e 20 28 22 [0-05] 22 20 26 20 22 [0-05] 22 29 } //1
		$a_00_3 = {3d 20 22 4a 31 3a 4a 33 22 } //1 = "J1:J3"
		$a_02_4 = {53 70 6c 69 74 28 65 2c 20 [0-0f] 28 22 2b 22 2c 20 34 29 29 } //1
		$a_02_5 = {3d 20 4c 65 6e 28 [0-07] 29 20 5c 20 78 6c } //1
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_00_3  & 1)*1+(#a_02_4  & 1)*1+(#a_02_5  & 1)*1) >=6
 
}