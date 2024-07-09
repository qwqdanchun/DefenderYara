
rule Trojan_Win32_Emotet_M{
	meta:
		description = "Trojan:Win32/Emotet.M,SIGNATURE_TYPE_PEHSTR_EXT,28 00 28 00 04 00 00 "
		
	strings :
		$a_00_0 = {c1 e7 03 83 e7 18 89 4d d4 89 f9 d3 e6 31 c6 8b 45 ec 8a 0c 02 8b 55 f0 88 0a 8b 7d d4 83 c7 01 } //10
		$a_03_1 = {15 18 00 00 00 31 ?? 8b ?? 30 8b ?? 0c } //10
		$a_03_2 = {74 0a a1 18 30 ?? 00 ff d0 } //10
		$a_01_3 = {8b 30 8b 78 04 8b 58 08 8b 68 0c 8b 60 10 8b 40 14 ff e0 } //10
	condition:
		((#a_00_0  & 1)*10+(#a_03_1  & 1)*10+(#a_03_2  & 1)*10+(#a_01_3  & 1)*10) >=40
 
}
rule Trojan_Win32_Emotet_M_2{
	meta:
		description = "Trojan:Win32/Emotet.M,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 08 00 00 "
		
	strings :
		$a_03_0 = {55 54 89 1d ?? 50 40 00 8f 05 ?? 50 40 00 83 05 ?? 50 40 00 08 83 2d ?? 50 40 00 04 8f 05 ?? 50 40 00 a1 ?? 50 40 00 83 05 ?? 50 40 00 04 83 2d ?? 50 40 00 04 89 35 ?? 50 40 00 89 3d ?? 50 40 00 ff e0 cc } //8
		$a_03_1 = {c7 04 24 00 00 00 00 [0-20] c7 44 24 08 00 10 00 00 } //1
		$a_03_2 = {ba 00 10 00 00 ?? ?? 00 00 00 [0-30] c7 04 24 00 00 00 00 [0-20] c7 44 24 08 00 10 00 00 } //1
		$a_03_3 = {ba 00 10 00 00 [0-20] c7 04 24 00 00 00 00 [0-20] c7 44 24 08 00 10 00 00 } //1
		$a_03_4 = {c7 42 0c 40 00 00 00 [0-20] c7 42 04 00 d0 00 00 [0-20] c7 02 00 00 00 00 } //1
		$a_03_5 = {b9 00 d0 00 00 [0-20] c7 04 24 00 00 00 00 [0-20] c7 44 24 04 00 d0 00 00 } //1
		$a_03_6 = {ba 00 10 00 00 ?? ?? ?? ?? ?? c7 04 24 00 00 00 00 ?? ?? ?? ?? c7 44 24 04 00 d0 00 00 } //1
		$a_03_7 = {be 40 00 00 00 [0-20] c7 04 24 00 00 00 00 [0-20] c7 44 24 04 00 d0 00 00 [0-20] c7 44 24 08 00 10 00 00 } //1
	condition:
		((#a_03_0  & 1)*8+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1+(#a_03_5  & 1)*1+(#a_03_6  & 1)*1+(#a_03_7  & 1)*1) >=10
 
}
rule Trojan_Win32_Emotet_M_3{
	meta:
		description = "Trojan:Win32/Emotet.M,SIGNATURE_TYPE_PEHSTR,05 00 05 00 14 00 00 "
		
	strings :
		$a_01_0 = {79 00 69 00 54 00 6e 00 75 00 6d 00 62 00 65 00 72 00 73 00 56 00 77 00 68 00 65 00 74 00 68 00 65 00 72 00 4e 00 6f 00 76 00 65 00 6d 00 62 00 65 00 72 00 55 00 31 00 34 00 2c 00 79 00 } //1 yiTnumbersVwhetherNovemberU14,y
		$a_01_1 = {76 00 65 00 72 00 73 00 69 00 6f 00 6e 00 20 00 76 00 20 00 41 00 4c 00 46 00 6a 00 63 00 73 00 79 00 6e 00 63 00 68 00 72 00 6f 00 6e 00 69 00 7a 00 61 00 74 00 69 00 6f 00 6e 00 } //1 version v ALFjcsynchronization
		$a_01_2 = {68 00 61 00 73 00 62 00 65 00 4a 00 61 00 76 00 61 00 6d 00 6f 00 70 00 65 00 6e 00 2d 00 73 00 6f 00 75 00 72 00 63 00 69 00 6e 00 67 00 66 00 65 00 61 00 74 00 75 00 72 00 65 00 73 00 59 00 4e 00 63 00 74 00 6f 00 } //1 hasbeJavamopen-sourcingfeaturesYNcto
		$a_01_3 = {50 00 41 00 6a 00 61 00 6d 00 65 00 73 00 68 00 65 00 6b 00 61 00 36 00 77 00 32 00 55 00 61 00 74 00 68 00 61 00 74 00 64 00 77 00 69 00 6e 00 64 00 6f 00 77 00 } //1 PAjamesheka6w2Uathatdwindow
		$a_01_4 = {62 6f 75 6e 64 61 72 79 5a 35 32 36 2c 72 65 70 6c 61 63 65 77 69 74 68 66 69 72 73 74 64 } //1 boundaryZ526,replacewithfirstd
		$a_01_5 = {66 00 65 00 61 00 74 00 75 00 72 00 65 00 73 00 32 00 30 00 31 00 32 00 33 00 2c 00 4a 00 6f 00 68 00 6e 00 33 00 30 00 2d 00 64 00 61 00 79 00 6e 00 39 00 64 00 6f 00 6c 00 70 00 68 00 69 00 6e 00 73 00 74 00 69 00 67 00 67 00 65 00 72 00 65 00 } //1 features20123,John30-dayn9dolphinstiggere
		$a_01_6 = {4d 00 73 00 68 00 6f 00 72 00 74 00 63 00 75 00 74 00 73 00 28 00 65 00 2e 00 67 00 2e 00 77 00 65 00 62 00 6f 00 74 00 68 00 65 00 72 00 66 00 69 00 72 00 73 00 74 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 61 00 74 00 69 00 6f 00 6e 00 49 00 55 00 6e 00 69 00 76 00 65 00 72 00 73 00 69 00 74 00 79 00 62 00 79 00 } //1 Mshortcuts(e.g.webotherfirstinstallationIUniversityby
		$a_01_7 = {32 00 30 00 30 00 39 00 2c 00 50 00 72 00 69 00 73 00 6d 00 59 00 61 00 6e 00 69 00 6d 00 61 00 6c 00 6f 00 6e 00 62 00 72 00 6f 00 77 00 73 00 65 00 72 00 45 00 } //1 2009,PrismYanimalonbrowserE
		$a_01_8 = {45 00 57 00 69 00 6b 00 69 00 4c 00 65 00 61 00 6b 00 73 00 2c 00 65 00 2e 00 67 00 2e 00 50 00 6c 00 61 00 79 00 65 00 72 00 29 00 53 00 63 00 6f 00 6d 00 70 00 6f 00 6e 00 65 00 6e 00 74 00 73 00 4d 00 56 00 } //1 EWikiLeaks,e.g.Player)ScomponentsMV
		$a_01_9 = {62 00 61 00 64 00 62 00 6f 00 79 00 74 00 68 00 65 00 61 00 77 00 65 00 72 00 65 00 74 00 65 00 73 00 74 00 2c 00 66 00 6f 00 66 00 } //1 badboytheaweretest,fof
		$a_01_10 = {62 00 53 00 74 00 6f 00 72 00 65 00 67 00 6f 00 62 00 6c 00 6f 00 63 00 6b 00 65 00 64 00 2e 00 38 00 39 00 66 00 75 00 7a 00 7a 00 53 00 61 00 6e 00 64 00 37 00 72 00 } //1 bStoregoblocked.89fuzzSand7r
		$a_01_11 = {74 00 68 00 65 00 6a 00 6c 00 62 00 6c 00 6f 00 63 00 6b 00 65 00 64 00 2e 00 38 00 39 00 44 00 65 00 76 00 65 00 6c 00 6f 00 70 00 65 00 72 00 77 00 74 00 68 00 65 00 7a 00 6a 00 77 00 65 00 62 00 } //1 thejlblocked.89Developerwthezjweb
		$a_01_12 = {31 32 33 34 72 65 66 6c 65 63 74 73 74 68 61 74 37 64 69 66 66 65 72 65 6e 74 69 61 74 69 6e 67 5a 4f } //1 1234reflectsthat7differentiatingZO
		$a_01_13 = {4b 73 65 63 75 72 69 74 79 4f 6d 6e 69 62 6f 78 2e 74 68 6f 75 67 68 61 6e 64 28 73 69 6d 69 6c 61 72 74 68 61 74 74 } //1 KsecurityOmnibox.thoughand(similarthatt
		$a_01_14 = {48 2e 32 36 34 59 39 32 30 31 32 6d 65 61 73 75 72 65 6f 6e 65 78 74 72 61 73 2e 31 36 30 47 6f 6f 67 6c 65 43 } //1 H.264Y92012measureonextras.160GoogleC
		$a_01_15 = {42 65 74 61 67 70 72 65 64 69 63 74 69 6f 6e 73 31 31 31 61 74 61 79 6c 6f 72 52 5a 66 69 72 73 74 } //1 Betagpredictions111ataylorRZfirst
		$a_01_16 = {45 39 38 37 36 35 34 63 6f 76 65 72 65 64 29 74 77 69 63 65 54 68 65 73 65 69 73 66 6f 72 } //1 E987654covered)twiceTheseisfor
		$a_01_17 = {77 44 65 76 68 74 72 61 6e 73 69 74 69 6f 6e 73 2c 36 53 6a 61 69 6c 2e 20 38 32 31 30 38 2c 20 66 72 65 71 75 65 6e 74 } //1 wDevhtransitions,6Sjail. 82108, frequent
		$a_01_18 = {72 65 67 75 6c 61 72 20 64 61 74 65 73 2c 20 74 77 69 74 68 20 6d 6f 6e 73 74 65 72 20 77 68 65 74 68 65 72 20 6f 66 20 2e 2e 2e } //1 regular dates, twith monster whether of ...
		$a_01_19 = {39 00 76 00 65 00 72 00 73 00 69 00 6f 00 6e 00 70 00 6f 00 69 00 6e 00 74 00 73 00 2e 00 36 00 34 00 70 00 72 00 6f 00 64 00 75 00 63 00 74 00 4c 00 61 00 73 00 4c 00 57 00 4d 00 70 00 } //1 9versionpoints.64productLasLWMp
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1+(#a_01_14  & 1)*1+(#a_01_15  & 1)*1+(#a_01_16  & 1)*1+(#a_01_17  & 1)*1+(#a_01_18  & 1)*1+(#a_01_19  & 1)*1) >=5
 
}