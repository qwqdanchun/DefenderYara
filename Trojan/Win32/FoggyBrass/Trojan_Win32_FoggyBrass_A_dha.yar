
rule Trojan_Win32_FoggyBrass_A_dha{
	meta:
		description = "Trojan:Win32/FoggyBrass.A!dha,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 12 00 00 "
		
	strings :
		$a_00_0 = {30 33 33 70 3a 6f 6f 00 } //1 ㌰瀳漺o
		$a_00_1 = {56 78 7a 72 75 75 61 2f 35 2e 30 20 28 4e 72 77 64 78 6e 6a 20 57 4b 20 36 2e 31 3b 20 4e 58 4e 36 34 29 20 43 68 69 78 76 65 2f 32 38 2e 30 2e 31 35 30 30 2e 39 35 20 4a 61 66 61 69 72 2f 35 33 37 2e 33 36 00 } //2
		$a_00_2 = {2d 2d 2d 2d 46 6f 72 6d 42 6f 75 6e 64 61 72 79 } //2 ----FormBoundary
		$a_00_3 = {2d 2d 2d 2d 46 78 69 76 42 78 6c 77 64 61 69 70 } //2 ----FxivBxlwdaip
		$a_00_4 = {41 63 63 65 79 6b 3a } //1 Acceyk:
		$a_00_5 = {43 78 77 6b 65 77 6b 2d 44 72 6a 79 78 6a 72 6b 72 78 77 3a 20 66 78 69 76 2d 64 61 6b 61 3b 00 } //2
		$a_00_6 = {2a 64 4a 55 21 2a 4a 45 26 21 4d 40 55 4e 51 40 00 } //2
		$a_00_7 = {74 33 34 6b 6a 66 64 6c 61 34 35 6c 00 } //2
		$a_00_8 = {34 73 33 43 35 4b 44 4d 6c 78 69 61 4a 31 74 4f 62 58 63 51 72 2d 65 6f 32 47 20 7a 59 41 38 39 56 66 4c 2f 71 5a 57 49 30 6b 4e 54 55 5c 67 79 46 53 64 6e 68 37 42 36 5f 6d 6a 48 77 75 50 76 00 } //2
		$a_00_9 = {48 61 4f 50 77 77 76 6f 5f 2e 59 74 28 44 61 70 76 33 50 35 77 69 3b 74 48 5a 7a 45 74 73 59 2e 59 3b 74 20 50 49 57 61 46 37 74 38 39 74 54 2e 73 3b 74 20 43 20 54 68 3b 74 39 6c 50 57 69 49 33 00 } //2
		$a_00_10 = {36 61 49 33 69 49 33 78 39 2f 70 69 3a 74 76 70 70 77 50 44 76 33 50 61 49 6f 75 78 46 46 46 78 2d 61 6c 5c 78 53 6c 77 69 49 44 61 57 69 57 00 } //2 愶㍉䥩砳⼹楰琺灶睰䑐㍶慐潉硵䙆硆愭屬卸睬䥩慄楗W
		$a_00_11 = {30 33 33 70 3a 6f 6f 46 46 46 2e 70 53 49 76 2e 41 6c 6f 5c 76 50 49 6f 5c 76 50 49 2e 76 37 70 00 } //2
		$a_00_12 = {30 33 33 70 3a 6f 6f 57 61 49 4c 37 76 49 2e 76 49 57 61 49 4c 2e 49 69 33 6f 46 69 35 4c 69 76 6c 6f 70 61 70 53 70 6f 77 50 37 33 2e 76 37 00 } //2 ㌰瀳漺坯䥡㝌䥶瘮坉䥡⹌楉漳楆䰵癩潬慰印潰偷㌷瘮7
		$a_00_13 = {30 33 33 70 3a 6f 6f 46 46 46 2e 30 46 76 49 41 2f 53 2e 44 61 5c 6f 37 53 35 6f 70 6c 61 57 53 44 33 6f 70 6c 61 57 53 44 69 2e 76 37 70 00 } //2
		$a_00_14 = {30 33 33 70 3a 6f 6f 50 77 61 6e 69 37 6e 44 2e 44 61 5c 6f 79 61 5c 69 64 76 4c 69 73 6f 4e 4e 5a 6f 64 6a 5a 6f 77 50 37 33 2e 76 37 70 00 } //2
		$a_00_15 = {5a 43 71 39 20 58 52 45 66 48 50 44 6c 61 37 61 2d 33 66 20 50 49 57 61 46 37 74 38 39 66 36 53 6c 6c 69 49 33 72 69 6c 37 50 61 49 00 } //2
		$a_00_16 = {6a 42 63 71 78 4a 73 4a 58 78 45 4d 7a 6a 78 4a 42 68 5a 78 5a 6a 34 45 73 4a 6a 43 00 } //2
		$a_02_17 = {be 06 00 00 c7 90 01 05 d9 95 90 09 06 00 c7 90 00 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*2+(#a_00_2  & 1)*2+(#a_00_3  & 1)*2+(#a_00_4  & 1)*1+(#a_00_5  & 1)*2+(#a_00_6  & 1)*2+(#a_00_7  & 1)*2+(#a_00_8  & 1)*2+(#a_00_9  & 1)*2+(#a_00_10  & 1)*2+(#a_00_11  & 1)*2+(#a_00_12  & 1)*2+(#a_00_13  & 1)*2+(#a_00_14  & 1)*2+(#a_00_15  & 1)*2+(#a_00_16  & 1)*2+(#a_02_17  & 1)*1) >=4
 
}