
rule TrojanDownloader_Win32_SilverRage_A_dha{
	meta:
		description = "TrojanDownloader:Win32/SilverRage.A!dha,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 0d 00 00 "
		
	strings :
		$a_01_0 = {33 65 7a 37 2f 2b 72 37 7a 75 7a 78 2f 66 76 74 37 64 38 3d 00 } //1
		$a_01_1 = {52 46 45 3a 25 30 38 78 00 } //1
		$a_01_2 = {43 46 45 3a 25 30 38 78 00 } //1
		$a_01_3 = {43 50 45 3a 25 30 38 78 00 } //1
		$a_01_4 = {79 38 7a 53 30 65 37 37 38 4d 33 71 37 50 76 2f 38 39 38 3d 00 } //1
		$a_01_5 = {79 38 7a 53 32 76 48 70 38 50 4c 78 2f 2f 72 4b 38 64 6a 33 38 76 76 66 00 } //1
		$a_01_6 = {3f 69 64 3d 64 6e 36 37 38 00 } //1 椿㵤湤㜶8
		$a_01_7 = {32 76 76 79 2b 2b 72 37 79 2b 7a 79 33 66 2f 39 39 76 76 62 38 4f 72 73 35 39 38 3d 00 } //1
		$a_01_8 = {47 46 53 45 3a 25 30 38 78 00 } //1 䙇䕓┺㠰x
		$a_01_9 = {44 46 45 3a 25 30 38 78 00 } //1
		$a_01_10 = {4c 41 45 3a 25 30 38 78 00 } //1
		$a_01_11 = {25 73 64 2e 25 73 65 25 73 63 20 25 73 20 3e 20 25 73 20 32 3e 26 31 00 } //1
		$a_01_12 = {20 21 22 23 24 25 26 27 28 29 2a 2b 2c 2d 2e 2f 30 31 32 33 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 54 4d 50 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1) >=6
 
}