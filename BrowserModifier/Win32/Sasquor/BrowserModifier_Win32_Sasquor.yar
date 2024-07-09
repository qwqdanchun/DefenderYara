
rule BrowserModifier_Win32_Sasquor{
	meta:
		description = "BrowserModifier:Win32/Sasquor,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {47 00 6c 00 6f 00 62 00 61 00 6c 00 5c 00 63 00 6f 00 2e 00 61 00 6f 00 2e 00 61 00 69 00 6f 00 } //1 Global\co.ao.aio
		$a_01_1 = {63 6f 72 65 64 6c 6c 2e 64 6c 6c 00 77 75 77 61 6c 61 6c 61 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}
rule BrowserModifier_Win32_Sasquor_2{
	meta:
		description = "BrowserModifier:Win32/Sasquor,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 "
		
	strings :
		$a_01_0 = {5c 61 6d 75 6c 65 63 75 73 74 6f 6d 5c 62 69 6b 61 51 5c 52 65 6c 65 61 73 65 5c 75 70 64 61 74 65 2e 70 64 62 } //1 \amulecustom\bikaQ\Release\update.pdb
		$a_01_1 = {5c 61 6d 75 6c 65 63 75 73 74 6f 6d 5c 61 6d 75 6c 65 5c 75 70 64 61 74 65 5c 52 65 6c 65 61 73 65 5c 75 70 64 61 74 65 2e 70 64 62 } //1 \amulecustom\amule\update\Release\update.pdb
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=1
 
}
rule BrowserModifier_Win32_Sasquor_3{
	meta:
		description = "BrowserModifier:Win32/Sasquor,SIGNATURE_TYPE_PEHSTR_EXT,15 00 15 00 04 00 00 "
		
	strings :
		$a_01_0 = {5c 73 72 63 5c 6f 75 74 5c 52 65 6c 65 61 73 65 5c 73 65 74 75 70 2e 70 64 62 } //10 \src\out\Release\setup.pdb
		$a_01_1 = {73 65 74 75 70 2e 64 6c 6c 00 44 6c 6c 45 6e 74 72 79 00 } //10
		$a_01_2 = {43 00 52 00 5f 00 4b 00 59 00 33 00 46 00 } //1 CR_KY3F
		$a_01_3 = {48 00 39 00 4b 00 32 00 2e 00 54 00 4d 00 50 00 } //1 H9K2.TMP
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=21
 
}
rule BrowserModifier_Win32_Sasquor_4{
	meta:
		description = "BrowserModifier:Win32/Sasquor,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 06 00 00 "
		
	strings :
		$a_01_0 = {4d 4d 4d 2e 64 6c 6c 00 48 65 6c 70 00 49 6e 73 74 61 6c 6c 73 00 55 6e 69 6e 73 74 61 6c 6c 73 00 55 70 64 61 74 65 73 } //1 䵍⹍汤l效灬䤀獮慴汬s湕湩瑳污獬唀摰瑡獥
		$a_01_1 = {6d 00 6b 00 74 00 67 00 2e 00 64 00 61 00 74 00 } //1 mktg.dat
		$a_01_2 = {6f 00 2e 00 31 00 00 00 6d 00 69 00 00 00 } //1
		$a_01_3 = {6d 00 69 00 6f 00 2e 00 31 00 } //1 mio.1
		$a_01_4 = {4d 00 69 00 6c 00 69 00 6d 00 69 00 6c 00 69 00 } //1 Milimili
		$a_01_5 = {4d 49 4f 2e 64 6c 6c 00 48 65 6c 70 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=2
 
}
rule BrowserModifier_Win32_Sasquor_5{
	meta:
		description = "BrowserModifier:Win32/Sasquor,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 64 00 32 00 78 00 70 00 6d 00 61 00 6a 00 73 00 65 00 30 00 6d 00 6f 00 39 00 36 00 2e 00 63 00 6c 00 6f 00 75 00 64 00 66 00 72 00 6f 00 6e 00 74 00 2e 00 6e 00 65 00 74 00 2f 00 61 00 70 00 70 00 2f 00 76 00 65 00 72 00 2f 00 73 00 73 00 6c 00 2e 00 70 00 68 00 70 00 } //1 http://d2xpmajse0mo96.cloudfront.net/app/ver/ssl.php
		$a_01_1 = {6f 00 6f 00 6f 00 3d 00 25 00 78 00 26 00 6d 00 69 00 6a 00 69 00 3d 00 25 00 73 00 26 00 6d 00 6f 00 64 00 74 00 3d 00 25 00 73 00 } //1 ooo=%x&miji=%s&modt=%s
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}
rule BrowserModifier_Win32_Sasquor_6{
	meta:
		description = "BrowserModifier:Win32/Sasquor,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 08 00 00 "
		
	strings :
		$a_01_0 = {64 00 65 00 73 00 6b 00 74 00 6f 00 70 00 5f 00 70 00 63 00 68 00 } //1 desktop_pch
		$a_81_1 = {42 65 72 73 65 72 6b 65 72 } //1 Berserker
		$a_81_2 = {53 74 61 72 74 5f 56 52 } //1 Start_VR
		$a_01_3 = {53 74 61 72 74 5f 4c 44 } //1 Start_LD
		$a_01_4 = {53 74 61 72 74 5f 52 44 33 32 } //1 Start_RD32
		$a_01_5 = {53 74 6f 70 53 61 66 65 54 6f 6f 6c 73 5c 63 6f 64 65 5c 6d 73 65 5f 61 76 67 5f 61 76 69 72 61 5f 6d 63 61 } //1 StopSafeTools\code\mse_avg_avira_mca
		$a_01_6 = {44 00 6f 00 44 00 4b 00 50 00 } //1 DoDKP
		$a_01_7 = {54 54 54 2e 64 6c 6c 00 41 6e 61 6c 79 7a 65 43 6f 64 65 00 59 5a 54 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=3
 
}
rule BrowserModifier_Win32_Sasquor_7{
	meta:
		description = "BrowserModifier:Win32/Sasquor,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 09 00 00 "
		
	strings :
		$a_01_0 = {43 43 2e 64 6c 6c 00 53 74 61 72 74 43 6c 65 61 72 00 53 74 61 72 74 43 6c 65 61 72 32 } //1
		$a_01_1 = {63 00 6c 00 65 00 2e 00 6c 00 6f 00 67 00 2e 00 31 00 } //1 cle.log.1
		$a_01_2 = {74 00 74 00 74 00 74 00 74 00 2e 00 65 00 78 00 65 00 } //1 ttttt.exe
		$a_01_3 = {68 00 68 00 68 00 68 00 68 00 2e 00 65 00 78 00 65 00 } //1 hhhhh.exe
		$a_01_4 = {57 68 69 74 65 4c 69 73 74 41 6e 64 43 6c 65 61 72 4c 6f 67 5c 63 6f 64 65 5c 52 65 6c 65 61 73 65 5c 53 53 53 2e 70 64 62 } //1 WhiteListAndClearLog\code\Release\SSS.pdb
		$a_01_5 = {53 53 53 2e 64 6c 6c 00 47 4f 47 4f 47 4f 00 } //1
		$a_01_6 = {74 00 2e 00 65 00 78 00 65 00 00 00 74 00 74 00 00 00 00 00 74 00 74 00 } //1
		$a_01_7 = {68 00 2e 00 65 00 78 00 65 00 00 00 68 00 68 00 00 00 00 00 68 00 68 00 } //1
		$a_01_8 = {50 00 36 00 34 00 2e 00 64 00 61 00 74 00 00 00 6f 00 44 00 4b 00 00 00 44 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=3
 
}
rule BrowserModifier_Win32_Sasquor_8{
	meta:
		description = "BrowserModifier:Win32/Sasquor,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 09 00 00 "
		
	strings :
		$a_01_0 = {2e 64 6c 6c 00 47 65 74 43 70 70 4d 6f 64 75 6c 65 49 6e 74 65 72 66 61 63 65 00 53 74 61 72 74 41 73 46 72 61 6d 65 50 72 6f 63 65 73 73 } //1 搮汬䜀瑥灃䵰摯汵䥥瑮牥慦散匀慴瑲獁牆浡健潲散獳
		$a_03_1 = {68 04 01 00 00 50 ?? c7 85 ?? ?? ?? ?? 2e 2e 5c 44 c7 85 ?? ?? ?? ?? 61 74 61 42 66 c7 85 ?? ?? ?? ?? 61 73 c6 85 ?? ?? ?? ?? 65 ff 15 } //1
		$a_03_2 = {68 fe 00 00 00 a3 ?? ?? ?? ?? 8d 85 ?? ?? ?? ?? ?? 50 [0-06] c7 85 ?? ?? ?? ?? 44 6f 57 6f 66 c7 85 ?? ?? ?? ?? 72 6b e8 } //1
		$a_01_3 = {44 6f 57 6f 72 6b 00 } //1
		$a_01_4 = {5c 6f 75 74 5c 52 65 6c 65 61 73 65 5c 6d 65 6d 5f 6c 6f 61 64 5f 64 6c 6c 2e 70 64 62 } //1 \out\Release\mem_load_dll.pdb
		$a_01_5 = {6d 65 6d 5f 6c 6f 61 64 5f 64 6c 6c 2e 64 6c 6c 00 53 74 61 72 74 41 73 46 72 61 6d 65 50 72 6f 63 65 73 73 00 } //1
		$a_01_6 = {6d 65 6d 5f 6c 6f 61 64 5f 64 6c 6c 2e 64 6c 6c 00 4e 65 77 53 68 65 6c 6c 00 52 75 6e 55 70 64 61 74 65 00 53 74 61 72 74 41 73 46 72 61 6d 65 50 72 6f 63 65 73 73 00 } //1 敭彭潬摡摟汬搮汬一睥桓汥l畒啮摰瑡e瑓牡䅴䙳慲敭牐捯獥s
		$a_01_7 = {5c 6f 75 74 5c 52 65 6c 65 61 73 65 5c 6f 6d 61 68 61 2e 70 64 62 } //1 \out\Release\omaha.pdb
		$a_01_8 = {74 00 00 00 6d 00 00 00 70 00 00 00 32 00 00 00 54 00 00 00 4d 00 00 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=2
 
}
rule BrowserModifier_Win32_Sasquor_9{
	meta:
		description = "BrowserModifier:Win32/Sasquor,SIGNATURE_TYPE_PEHSTR_EXT,03 00 02 00 07 00 00 "
		
	strings :
		$a_00_0 = {5c 00 45 00 6c 00 65 00 78 00 49 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 65 00 72 00 2e 00 69 00 6e 00 69 00 00 00 } //1
		$a_00_1 = {79 00 65 00 73 00 73 00 65 00 61 00 72 00 63 00 68 00 65 00 73 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 79 00 65 00 73 00 73 00 65 00 61 00 72 00 63 00 68 00 65 00 73 00 68 00 70 00 00 00 } //1
		$a_02_2 = {5c 00 64 00 61 00 6d 00 [0-10] 2e 00 65 00 78 00 65 00 20 00 2f 00 63 00 3d 00 64 00 61 00 6d 00 } //1
		$a_00_3 = {5c 00 79 00 6f 00 75 00 6e 00 64 00 6f 00 6f 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 79 00 6f 00 75 00 6e 00 64 00 6f 00 6f 00 68 00 70 00 00 00 } //1
		$a_00_4 = {5c 00 64 00 61 00 65 00 5f 00 64 00 6f 00 2d 00 73 00 65 00 61 00 72 00 63 00 68 00 2e 00 65 00 78 00 65 00 20 00 2d 00 73 00 69 00 6c 00 65 00 6e 00 63 00 65 00 20 00 2d 00 70 00 74 00 69 00 64 00 3d 00 64 00 61 00 65 00 } //1 \dae_do-search.exe -silence -ptid=dae
		$a_00_5 = {5c 00 79 00 6f 00 75 00 72 00 73 00 65 00 61 00 72 00 63 00 68 00 69 00 6e 00 67 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 79 00 6f 00 75 00 72 00 73 00 65 00 61 00 72 00 63 00 68 00 69 00 6e 00 67 00 68 00 70 00 00 00 } //1
		$a_00_6 = {5c 00 69 00 73 00 74 00 61 00 72 00 74 00 73 00 75 00 72 00 66 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 69 00 73 00 74 00 61 00 72 00 74 00 73 00 75 00 72 00 66 00 68 00 70 00 00 00 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_02_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1) >=2
 
}
rule BrowserModifier_Win32_Sasquor_10{
	meta:
		description = "BrowserModifier:Win32/Sasquor,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 0b 00 00 "
		
	strings :
		$a_00_0 = {73 00 68 00 6f 00 72 00 74 00 63 00 75 00 74 00 62 00 6f 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 00 00 } //1
		$a_00_1 = {76 00 69 00 73 00 69 00 74 00 2e 00 77 00 69 00 6e 00 6d 00 6d 00 2e 00 64 00 6d 00 2e 00 65 00 78 00 70 00 6c 00 2e 00 73 00 74 00 61 00 72 00 74 00 00 00 } //1
		$a_00_2 = {76 00 69 00 73 00 69 00 74 00 2e 00 77 00 69 00 6e 00 6d 00 6d 00 2e 00 64 00 6d 00 2e 00 67 00 65 00 74 00 75 00 72 00 6c 00 2e 00 6f 00 6b 00 00 00 } //1
		$a_00_3 = {76 00 69 00 73 00 69 00 74 00 2e 00 77 00 69 00 6e 00 6d 00 6d 00 2e 00 64 00 6d 00 2e 00 68 00 69 00 63 00 68 00 2e 00 6f 00 6b 00 00 00 } //1
		$a_00_4 = {5c 77 69 6e 6d 6d 5f 78 38 36 2e 70 64 62 00 } //1
		$a_81_5 = {73 6f 66 74 77 61 72 65 5c 4c 69 76 65 55 70 64 61 74 65 00 } //1 潳瑦慷敲䱜癩啥摰瑡e
		$a_00_6 = {76 00 69 00 73 00 69 00 74 00 2e 00 77 00 74 00 73 00 33 00 32 00 2e 00 64 00 6d 00 2e 00 65 00 78 00 70 00 6c 00 2e 00 73 00 74 00 61 00 72 00 74 00 00 00 } //1
		$a_00_7 = {76 00 69 00 73 00 69 00 74 00 2e 00 77 00 74 00 73 00 33 00 32 00 2e 00 64 00 6d 00 2e 00 67 00 65 00 74 00 75 00 72 00 6c 00 2e 00 6f 00 6b 00 00 00 } //1
		$a_00_8 = {76 00 69 00 73 00 69 00 74 00 2e 00 77 00 74 00 73 00 33 00 32 00 2e 00 64 00 6d 00 2e 00 68 00 69 00 63 00 68 00 2e 00 6f 00 6b 00 00 00 } //1
		$a_00_9 = {5c 77 74 73 61 70 69 33 32 5f 78 38 36 2e 70 64 62 00 } //1 睜獴灡㍩弲㡸⸶摰b
		$a_00_10 = {5c 77 74 73 61 70 69 33 32 5f 78 36 34 2e 70 64 62 00 } //1 睜獴灡㍩弲㙸⸴摰b
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_81_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1+(#a_00_9  & 1)*1+(#a_00_10  & 1)*1) >=3
 
}
rule BrowserModifier_Win32_Sasquor_11{
	meta:
		description = "BrowserModifier:Win32/Sasquor,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 12 00 00 "
		
	strings :
		$a_01_0 = {6e 45 6c 64 56 42 58 62 36 57 49 38 68 68 58 68 4c 4a 45 67 4a 31 4d 33 } //1 nEldVBXb6WI8hhXhLJEgJ1M3
		$a_01_1 = {5c 67 67 67 5c 62 75 69 6c 64 5c 52 65 6c 65 61 73 65 5f 33 32 5c 6c 69 62 67 6c 69 62 2d 32 2e 30 2d 30 2e 70 64 62 } //1 \ggg\build\Release_32\libglib-2.0-0.pdb
		$a_03_2 = {51 6a 00 6a 00 6a 14 8d 8d ?? ?? ?? ?? 51 ff b5 ?? ?? ?? ?? ff d0 85 c0 0f 84 ?? ?? ?? ?? b9 ?? ?? ?? ?? e8 ?? ?? ?? ?? 50 51 } //2
		$a_03_3 = {51 6a 00 6a 00 6a 14 8d 8d ?? ?? ?? ?? 51 ff b5 ?? ?? ?? ?? ff d0 85 c0 0f 84 ?? ?? ?? ?? 8b cf e8 ?? ?? ?? ?? b9 ?? ?? ?? ?? 8b f0 e8 ?? ?? ?? ?? 50 56 } //2
		$a_01_4 = {c7 45 d0 6e 00 67 00 c7 45 d4 73 00 5c 00 c7 45 d8 6d 00 73 00 c7 45 dc 2d 00 70 00 c7 45 e0 74 00 69 00 c7 45 e4 64 00 2d 00 c7 45 e8 6b 00 65 00 c7 45 ec 79 00 00 00 } //2
		$a_03_5 = {30 45 e0 30 65 e1 30 45 e2 30 65 e3 30 45 e4 30 65 e5 30 45 e6 30 65 e7 8d 45 e0 50 e8 90 09 03 00 8b 45 } //1
		$a_03_6 = {8b c2 8a ca c1 e8 03 80 e1 07 8a 04 30 d2 f8 24 01 88 82 ?? ?? ?? ?? 42 83 fa 40 7c e3 } //1
		$a_03_7 = {68 06 02 00 00 50 66 89 84 24 ?? ?? 00 00 8d 84 24 ?? ?? 00 00 50 e8 ?? ?? ?? ?? 83 c4 0c b9 ?? ?? ?? ?? e8 ?? ?? ?? ?? b9 ?? ?? ?? ?? 8b f8 e8 ?? ?? ?? ?? b9 ?? ?? ?? ?? 8b f0 e8 ?? ?? ?? ?? 8d 8c 24 ?? ?? 00 00 51 68 04 01 00 00 8d 8c 24 ?? ?? 00 00 51 57 56 50 ff 15 } //1
		$a_03_8 = {30 45 d8 30 65 d9 30 45 da 30 65 db 30 45 dc 30 65 dd 30 45 de 30 65 df 8d 45 d8 50 e8 90 09 03 00 8b 45 } //1
		$a_01_9 = {c1 fa 02 8b c2 c1 e8 1f 03 c2 8d 48 ff 3b c8 73 18 8d 04 49 83 7c c6 14 08 8d 34 c6 72 02 8b 36 } //1
		$a_03_10 = {30 45 d8 30 65 d9 30 45 da 30 65 db 30 45 dc 30 65 dd 30 45 de 30 65 df 8d 45 d8 50 e8 90 09 06 00 8b 85 ?? ?? ff ff } //1
		$a_03_11 = {30 45 e0 30 65 e1 30 45 e2 30 65 e3 30 45 e4 30 65 e5 30 45 e6 30 65 e7 8d 45 e0 50 e8 90 09 06 00 8b 85 ?? ?? ff ff } //1
		$a_03_12 = {51 6a 00 6a 00 6a 14 8d 8d ?? ?? ?? ?? 51 ff b5 ?? ?? ?? ?? ff d0 85 c0 0f 84 ?? ?? ?? ?? [0-40] b9 ?? ?? ?? ?? e8 ?? ?? ?? ?? b9 ?? ?? ?? ?? 8b f0 e8 ?? ?? ?? ?? 50 56 } //2
		$a_03_13 = {8b d0 8a c8 c1 ea 03 80 e1 07 8a 14 32 d2 fa 80 e2 01 88 90 90 ?? ?? ?? ?? 40 83 f8 40 7c e2 } //1
		$a_01_14 = {8b c2 8a ca c1 e8 03 80 e1 07 8a 04 38 d2 f8 24 01 88 04 16 42 3b d3 7c e7 33 c0 } //1
		$a_03_15 = {50 6a 00 6a 00 6a 14 8d 85 ?? ?? ?? ?? c7 85 ?? ?? ?? ?? 01 66 00 00 50 ff b5 ?? ?? ?? ?? 66 c7 ?? ?? ?? ?? ff 08 02 c7 85 ?? ?? ?? ?? 08 00 00 00 ff 15 ?? ?? ?? ?? 85 c0 0f 84 } //2
		$a_01_16 = {8b 45 cc 8a 4d e0 30 65 e1 32 c8 30 45 e2 30 65 e3 30 45 e4 30 65 e5 30 45 e6 30 65 e7 88 4d e0 84 c9 75 04 33 c0 eb 0f } //1
		$a_00_17 = {65 78 70 6c 69 62 73 73 2e 70 64 62 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*2+(#a_03_3  & 1)*2+(#a_01_4  & 1)*2+(#a_03_5  & 1)*1+(#a_03_6  & 1)*1+(#a_03_7  & 1)*1+(#a_03_8  & 1)*1+(#a_01_9  & 1)*1+(#a_03_10  & 1)*1+(#a_03_11  & 1)*1+(#a_03_12  & 1)*2+(#a_03_13  & 1)*1+(#a_01_14  & 1)*1+(#a_03_15  & 1)*2+(#a_01_16  & 1)*1+(#a_00_17  & 1)*1) >=3
 
}
rule BrowserModifier_Win32_Sasquor_12{
	meta:
		description = "BrowserModifier:Win32/Sasquor,SIGNATURE_TYPE_PEHSTR_EXT,65 00 65 00 17 00 00 "
		
	strings :
		$a_01_0 = {26 00 72 00 65 00 71 00 73 00 3d 00 76 00 69 00 73 00 69 00 74 00 2e 00 6d 00 72 00 74 00 } //100 &reqs=visit.mrt
		$a_01_1 = {63 00 6c 00 6f 00 75 00 64 00 66 00 72 00 6f 00 6e 00 74 00 2e 00 6e 00 65 00 74 00 2f 00 70 00 72 00 6f 00 76 00 69 00 64 00 65 00 3f 00 63 00 6c 00 69 00 65 00 6e 00 74 00 73 00 3d 00 } //100 cloudfront.net/provide?clients=
		$a_01_2 = {4d 00 6f 00 6e 00 69 00 74 00 6f 00 72 00 20 00 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 } //100 Monitor Process
		$a_01_3 = {5c 00 4b 00 69 00 74 00 74 00 79 00 5c 00 63 00 61 00 74 00 2e 00 65 00 78 00 65 00 } //100 \Kitty\cat.exe
		$a_01_4 = {2e 64 6c 6c 00 42 49 54 00 53 65 72 76 69 63 65 4d 61 69 6e 00 } //100
		$a_01_5 = {2e 64 6c 6c 00 4b 69 74 74 79 00 53 65 72 76 69 63 65 4d 61 69 6e 00 } //100
		$a_01_6 = {2e 64 6c 6c 00 49 6e 73 74 61 6c 6c 00 4b 69 74 74 79 00 53 65 72 76 69 63 65 4d 61 69 6e 00 } //100
		$a_01_7 = {4b 69 74 74 79 5c 4b 69 74 74 79 5f 32 5c 52 65 6c 65 61 73 65 5c 6d 6d 6b 6f 2e 70 64 62 00 } //100
		$a_01_8 = {6d 6d 6b 6f 2e 64 6c 6c 00 53 65 72 76 69 63 65 4d 61 69 6e 00 } //100
		$a_01_9 = {5c 00 4d 00 52 00 54 00 2e 00 65 00 78 00 65 00 00 00 } //1
		$a_01_10 = {63 00 68 00 72 00 6f 00 6d 00 65 00 5f 00 63 00 6c 00 65 00 61 00 6e 00 75 00 70 00 5f 00 74 00 6f 00 6f 00 6c 00 2e 00 65 00 78 00 65 00 00 00 } //1
		$a_01_11 = {57 00 69 00 6e 00 33 00 32 00 5f 00 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 27 00 00 00 5c 00 4d 00 00 00 00 00 52 00 54 00 2e 00 00 00 78 00 65 00 00 00 } //1
		$a_01_12 = {57 00 69 00 6e 00 33 00 32 00 5f 00 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 27 00 00 00 5c 00 4d 00 00 00 00 00 52 00 54 00 2e 00 00 00 65 00 00 00 78 00 65 00 00 00 } //1
		$a_01_13 = {4b 00 69 00 74 00 74 00 79 00 2e 00 64 00 6c 00 6c 00 00 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 44 00 6c 00 6c 00 00 00 } //1
		$a_01_14 = {54 65 73 74 63 6f 64 65 5c 4b 69 74 74 79 5c 52 65 6c 65 61 73 65 5c 6b 69 74 74 79 2e 70 64 62 } //1 Testcode\Kitty\Release\kitty.pdb
		$a_01_15 = {5c 00 53 00 76 00 63 00 68 00 6f 00 73 00 74 00 00 00 00 00 4b 00 69 00 74 00 74 00 79 00 2e 00 64 00 6c 00 6c 00 00 00 } //1
		$a_03_16 = {6a 5c 58 66 89 85 ?? ?? ?? ?? 6a 4d 58 66 89 85 ?? ?? ?? ?? 6a 52 58 66 89 85 ?? ?? ?? ?? 6a 54 58 66 89 85 ?? ?? ?? ?? 6a 2e 58 66 89 85 ?? ?? ?? ?? 6a 65 58 66 89 85 ?? ?? ?? ?? 6a 78 58 66 89 85 ?? ?? ?? ?? 6a 65 } //1
		$a_03_17 = {6a 5c 58 6a 4d [0-06] 66 89 85 ?? ?? ?? ?? 58 6a 52 66 89 85 ?? ?? ?? ?? 58 6a 54 [0-08] 6a 2e 66 89 85 ?? ?? ?? ?? 58 6a 65 66 89 85 ?? ?? ?? ?? 58 6a 78 } //1
		$a_03_18 = {6a 4d 58 6a 52 66 89 84 24 ?? ?? ?? ?? 58 6a 54 66 89 84 24 ?? ?? ?? ?? 58 6a 2e 66 89 84 24 ?? ?? ?? ?? 58 6a 65 66 89 84 24 ?? ?? ?? ?? 58 6a 78 } //1
		$a_03_19 = {33 c0 68 f6 01 00 00 50 66 89 84 24 ?? ?? ?? ?? 8d 84 24 ?? ?? ?? ?? 50 c7 84 24 ?? ?? ?? ?? 5c 00 4d 00 c7 84 24 ?? ?? ?? ?? 52 00 54 00 c7 84 24 ?? ?? ?? ?? 2e 00 65 00 c7 84 24 ?? ?? ?? ?? 78 00 65 00 } //1
		$a_03_20 = {68 f6 01 00 00 50 66 89 85 ?? ?? ?? ?? 8d 85 ?? ?? ?? ?? 50 c7 85 ?? ?? ?? ?? 5c 00 4d 00 c7 85 ?? ?? ?? ?? 52 00 54 00 c7 85 ?? ?? ?? ?? 2e 00 65 00 c7 85 ?? ?? ?? ?? 78 00 65 00 } //1
		$a_03_21 = {6a 00 50 c7 85 ?? ?? ?? ?? 5c 00 4d 00 be 65 00 00 00 c7 85 ?? ?? ?? ?? 52 00 54 00 c7 85 ?? ?? ?? ?? 2e 00 65 00 c7 85 ?? ?? ?? ?? 78 00 65 00 } //1
		$a_03_22 = {b9 4d 00 00 00 66 89 8d ?? ?? ?? ?? ba 52 00 00 00 66 89 95 ?? ?? ?? ?? b8 54 00 00 00 66 89 85 ?? ?? ?? ?? b9 2e 00 00 00 66 89 8d ?? ?? ?? ?? ba 65 00 00 00 66 89 95 ?? ?? ?? ?? b8 78 00 00 00 66 89 85 ?? ?? ?? ?? b9 65 00 00 00 } //1
	condition:
		((#a_01_0  & 1)*100+(#a_01_1  & 1)*100+(#a_01_2  & 1)*100+(#a_01_3  & 1)*100+(#a_01_4  & 1)*100+(#a_01_5  & 1)*100+(#a_01_6  & 1)*100+(#a_01_7  & 1)*100+(#a_01_8  & 1)*100+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1+(#a_01_14  & 1)*1+(#a_01_15  & 1)*1+(#a_03_16  & 1)*1+(#a_03_17  & 1)*1+(#a_03_18  & 1)*1+(#a_03_19  & 1)*1+(#a_03_20  & 1)*1+(#a_03_21  & 1)*1+(#a_03_22  & 1)*1) >=101
 
}
rule BrowserModifier_Win32_Sasquor_13{
	meta:
		description = "BrowserModifier:Win32/Sasquor,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 4c 00 00 "
		
	strings :
		$a_01_0 = {55 6e 49 6e 73 74 61 6c 6c 00 55 70 00 55 70 54 00 } //1
		$a_01_1 = {63 00 68 00 65 00 72 00 00 00 00 00 41 00 72 00 00 00 } //1
		$a_01_2 = {78 00 61 00 72 00 63 00 00 00 00 00 6d 00 75 00 74 00 65 00 00 00 } //1
		$a_01_3 = {47 00 6c 00 6f 00 62 00 61 00 6c 00 5c 00 6d 00 75 00 74 00 65 00 78 00 61 00 72 00 63 00 68 00 65 00 72 00 6d 00 74 00 } //1 Global\mutexarchermt
		$a_01_4 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 57 00 69 00 6e 00 41 00 72 00 63 00 68 00 65 00 72 00 } //1 SOFTWARE\WinArcher
		$a_01_5 = {49 6e 73 74 61 6c 6c 41 72 63 68 65 72 53 76 63 } //1 InstallArcherSvc
		$a_01_6 = {41 00 72 00 63 00 68 00 65 00 72 00 2e 00 64 00 6c 00 6c 00 } //1 Archer.dll
		$a_01_7 = {6c 00 00 00 64 00 00 00 72 00 00 00 68 00 00 00 63 00 00 00 41 00 00 00 74 00 61 00 6c 00 6c 00 00 00 00 00 49 00 6e 00 73 00 00 00 } //1
		$a_01_8 = {6c 00 00 00 64 00 00 00 72 00 00 00 68 00 00 00 63 00 00 00 41 00 00 00 6c 00 6c 00 00 00 00 00 74 00 61 00 00 00 00 00 49 00 6e 00 73 00 00 00 } //1
		$a_01_9 = {6c 00 00 00 6c 00 00 00 64 00 00 00 2e 00 00 00 72 00 00 00 65 00 00 00 68 00 00 00 63 00 00 00 72 00 00 00 41 00 00 00 74 00 61 00 6c 00 6c 00 00 00 00 00 49 00 6e 00 73 00 00 00 } //1
		$a_01_10 = {4c 61 6e 63 65 72 2e 64 6c 6c 00 53 74 61 72 74 00 00 } //1
		$a_01_11 = {4c 61 6e 63 65 72 2e 64 6c 6c 00 48 65 6c 70 41 00 48 65 6c 70 42 00 53 74 61 72 74 00 } //1
		$a_01_12 = {75 00 73 00 65 00 2e 00 64 00 61 00 74 00 00 00 6c 00 61 00 6e 00 63 00 65 00 72 00 00 00 } //1
		$a_01_13 = {57 00 69 00 6e 00 53 00 41 00 50 00 5f 00 68 00 74 00 74 00 70 00 } //1 WinSAP_http
		$a_01_14 = {5c 73 76 72 5f 64 5c 73 65 72 76 65 72 5f 6c 79 6c 5c 57 69 6e 53 41 50 5c 77 69 6e 53 41 50 5f 32 5c 52 65 6c 65 61 73 65 5c 77 69 6e 53 41 50 5f 32 2e 70 64 62 } //1 \svr_d\server_lyl\WinSAP\winSAP_2\Release\winSAP_2.pdb
		$a_01_15 = {5c 73 76 72 5f 64 5c 73 65 72 76 65 72 5f 6c 79 6c 5c 57 69 6e 53 41 50 5c 52 65 6c 65 61 73 65 5c 57 69 6e 53 41 50 2e 70 64 62 } //1 \svr_d\server_lyl\WinSAP\Release\WinSAP.pdb
		$a_01_16 = {57 69 6e 53 41 50 2e 64 6c 6c 00 4d 41 49 4e 00 53 65 72 76 69 63 65 4d 61 69 6e 00 } //1 楗卮偁搮汬䴀䥁N敓癲捩䵥楡n
		$a_01_17 = {57 69 6e 53 41 50 2e 64 6c 6c 00 53 41 50 00 53 65 72 76 69 63 65 4d 61 69 6e 00 } //1
		$a_01_18 = {57 69 6e 53 41 50 2e 64 6c 6c 00 53 65 72 76 69 63 65 4d 61 69 6e 00 61 66 78 78 78 } //1 楗卮偁搮汬匀牥楶散慍湩愀硦硸
		$a_01_19 = {77 69 6e 53 41 50 5f 32 2e 64 6c 6c 00 53 65 72 76 69 63 65 4d 61 69 6e 00 61 66 78 78 78 00 } //1
		$a_01_20 = {46 00 6d 00 6e 00 63 00 60 00 6d 00 5d 00 5d 00 46 00 54 00 48 00 45 00 } //1 Fmnc`m]]FTHE
		$a_01_21 = {41 72 63 68 65 72 5f 41 64 64 5f 50 61 63 6b 65 74 5c 52 65 6c 65 61 73 65 5c 50 61 63 6b 65 74 2e 70 64 62 } //2 Archer_Add_Packet\Release\Packet.pdb
		$a_01_22 = {64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 2e 00 73 00 75 00 2e 00 65 00 2e 00 } //1 download.su.e.
		$a_01_23 = {63 00 68 00 72 00 6f 00 6d 00 65 00 69 00 6e 00 66 00 6f 00 72 00 6d 00 2e 00 6e 00 65 00 74 00 } //1 chromeinform.net
		$a_01_24 = {50 50 54 56 2e 64 6c 6c 00 52 44 5f 58 58 58 58 00 3f 5f 5f } //1 偐噔搮汬刀彄塘塘㼀彟
		$a_01_25 = {52 44 5f 58 58 58 58 00 52 75 6e 55 70 64 61 74 65 00 } //1 䑒塟塘X畒啮摰瑡e
		$a_01_26 = {73 74 64 40 40 58 5a 00 52 44 5f 58 58 58 58 00 3f 5f 5f } //1
		$a_01_27 = {5c 6f 75 74 5c 52 65 6c 65 61 73 65 5c 50 50 56 41 2e 70 64 62 } //1 \out\Release\PPVA.pdb
		$a_01_28 = {65 53 00 00 69 7a 00 00 65 45 00 00 78 00 00 00 52 65 00 00 61 64 00 00 46 69 00 00 6c 65 00 00 37 7a bc af 27 1c 00 } //1
		$a_01_29 = {75 70 64 61 74 65 5c 73 72 63 5c 6f 75 74 5c 52 65 6c 65 61 73 65 5c 50 50 54 56 2e 70 64 62 } //1 update\src\out\Release\PPTV.pdb
		$a_01_30 = {5c 6f 75 74 5c 52 65 6c 65 61 73 65 5c 73 65 74 75 70 5f 6f 6e 6c 69 6e 65 5f 64 6c 6c 5f 6d 65 6d 5f 6c 6f 61 64 2e 70 64 62 } //1 \out\Release\setup_online_dll_mem_load.pdb
		$a_01_31 = {63 00 6c 00 6f 00 75 00 64 00 66 00 72 00 6f 00 6e 00 74 00 2e 00 6e 00 65 00 74 00 2f 00 2f 00 64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 2f 00 2f 00 64 00 6e 00 76 00 64 00 62 00 78 00 } //1 cloudfront.net//download//dnvdbx
		$a_01_32 = {63 00 6c 00 6f 00 75 00 64 00 66 00 72 00 6f 00 6e 00 74 00 2e 00 6e 00 65 00 74 00 2f 00 2f 00 76 00 34 00 2f 00 2f 00 73 00 6f 00 66 00 2d 00 70 00 62 00 64 00 2d 00 64 00 6c 00 } //1 cloudfront.net//v4//sof-pbd-dl
		$a_01_33 = {2d 00 64 00 6c 00 70 00 72 00 6f 00 6a 00 65 00 63 00 74 00 3d 00 73 00 6f 00 66 00 2d 00 7a 00 62 00 64 00 2d 00 64 00 6c 00 20 00 2d 00 70 00 74 00 69 00 64 00 3d 00 77 00 7a 00 70 00 5f 00 } //1 -dlproject=sof-zbd-dl -ptid=wzp_
		$a_01_34 = {61 00 63 00 74 00 69 00 6f 00 6e 00 3d 00 64 00 6e 00 76 00 64 00 } //1 action=dnvd
		$a_01_35 = {64 00 6e 00 76 00 64 00 2e 00 62 00 6f 00 78 00 2e 00 } //1 dnvd.box.
		$a_01_36 = {5c 79 61 63 64 6c 5c 52 65 6c 65 61 73 65 5c 79 61 63 64 6c 2e 70 64 62 } //1 \yacdl\Release\yacdl.pdb
		$a_01_37 = {79 61 63 64 6c 6c 2e 64 6c 6c 00 79 61 63 64 6c 00 } //1
		$a_01_38 = {79 61 63 64 6c 2e 64 6c 6c 00 79 61 63 64 6c 00 } //1
		$a_01_39 = {69 00 54 00 68 00 65 00 6d 00 65 00 73 00 53 00 76 00 63 00 } //1 iThemesSvc
		$a_01_40 = {43 00 6f 00 6d 00 6d 00 6f 00 6e 00 20 00 46 00 69 00 6c 00 65 00 73 00 5c 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 73 00 5c 00 69 00 54 00 68 00 65 00 6d 00 65 00 73 00 2e 00 64 00 6c 00 6c 00 } //1 Common Files\Services\iThemes.dll
		$a_01_41 = {63 00 6c 00 6f 00 75 00 64 00 66 00 72 00 6f 00 6e 00 74 00 2e 00 6e 00 65 00 74 00 2f 00 57 00 65 00 61 00 74 00 68 00 65 00 72 00 61 00 70 00 69 00 2f 00 72 00 65 00 71 00 43 00 6f 00 6e 00 74 00 65 00 6e 00 74 00 } //1 cloudfront.net/Weatherapi/reqContent
		$a_01_42 = {46 00 69 00 6c 00 00 00 61 00 64 00 00 00 00 00 77 00 6e 00 00 00 00 00 74 00 2e 00 44 00 6f 00 00 00 00 00 69 00 65 00 6e 00 00 00 24 00 63 00 6c 00 00 00 } //1
		$a_01_43 = {5c 63 6f 64 65 5c 55 41 43 5c 55 41 43 5f 43 4f 44 45 5c 52 65 6c 65 61 73 65 5c 43 43 2e 70 64 62 } //1 \code\UAC\UAC_CODE\Release\CC.pdb
		$a_01_44 = {43 43 2e 64 6c 6c 00 55 55 55 00 00 } //1
		$a_01_45 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 7b 00 38 00 34 00 34 00 31 00 36 00 32 00 33 00 37 00 2d 00 36 00 34 00 39 00 30 00 2d 00 34 00 39 00 34 00 44 00 2d 00 39 00 41 00 44 00 36 00 2d 00 34 00 39 00 39 00 34 00 44 00 44 00 39 00 37 00 38 00 39 00 37 00 31 00 7d 00 } //1 SOFTWARE\{84416237-6490-494D-9AD6-4994DD978971}
		$a_01_46 = {74 6f 6f 6c 2e 64 6c 6c 00 77 6f 72 6b 00 } //1 潴汯搮汬眀牯k
		$a_01_47 = {72 61 66 6f 74 65 63 68 5c 6d 69 6e 69 73 6f 66 74 5c 74 6f 6f 6c 73 5c 78 79 66 61 5c 52 65 6c 65 61 73 65 5c 78 79 66 61 2e 70 64 62 } //1 rafotech\minisoft\tools\xyfa\Release\xyfa.pdb
		$a_01_48 = {72 61 66 6f 74 65 63 68 5c 6d 69 6e 69 73 6f 66 74 5c 74 6f 6f 6c 73 5c 46 58 4a 5c 52 65 6c 65 61 73 65 5c 46 58 4a 2e 70 64 62 } //1 rafotech\minisoft\tools\FXJ\Release\FXJ.pdb
		$a_01_49 = {78 79 66 61 2e 64 6c 6c 00 6c 47 6f 57 00 } //1 祸慦搮汬氀潇W
		$a_01_50 = {78 00 79 00 2e 00 73 00 74 00 61 00 75 00 70 00 } //1 xy.staup
		$a_01_51 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 58 00 4f 00 42 00 00 00 } //1
		$a_01_52 = {58 4f 42 2e 64 6c 6c 00 41 44 44 00 } //1 佘⹂汤l䑁D
		$a_01_53 = {76 00 69 00 73 00 00 00 69 00 74 00 2e 00 00 00 72 00 6e 00 6b 00 2e 00 00 00 } //1
		$a_01_54 = {76 00 69 00 73 00 00 00 69 00 74 00 2e 00 00 00 63 00 70 00 6b 00 2e 00 00 00 } //1
		$a_01_55 = {2d 63 70 6b 00 00 00 00 2d 72 6e 6b 00 00 00 00 2d 64 65 66 } //1
		$a_01_56 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 68 00 6f 00 68 00 6f 00 73 00 65 00 61 00 72 00 63 00 68 00 2e 00 63 00 6f 00 6d 00 2f 00 3f 00 75 00 69 00 64 00 3d 00 31 00 32 00 33 00 34 00 23 00 72 00 65 00 64 00 3d 00 } //1 http://hohosearch.com/?uid=1234#red=
		$a_01_57 = {2d 00 63 00 70 00 6b 00 00 00 00 00 2d 00 72 00 6e 00 6b 00 00 00 00 00 2d 00 64 00 65 00 66 00 00 00 } //1
		$a_01_58 = {26 00 72 00 65 00 71 00 00 00 00 00 73 00 3d 00 76 00 69 00 73 00 00 00 69 00 74 00 2e 00 00 00 63 00 70 00 6b 00 2e 00 00 00 } //1
		$a_01_59 = {26 00 72 00 65 00 71 00 73 00 3d 00 76 00 69 00 73 00 69 00 74 00 2e 00 63 00 70 00 6b 00 } //1 &reqs=visit.cpk
		$a_01_60 = {5c 43 50 4b 5c 52 65 6c 65 61 73 65 5c 43 50 4b 2e 70 64 62 } //1 \CPK\Release\CPK.pdb
		$a_01_61 = {5c 50 72 6f 6a 65 63 74 73 5c 44 4b 50 5c 6f 75 74 5c 58 53 2e 70 64 62 } //1 \Projects\DKP\out\XS.pdb
		$a_01_62 = {6f 00 75 00 64 00 00 00 63 00 6c 00 00 00 00 00 2e 00 00 00 6f 00 6e 00 74 00 00 00 72 00 00 00 66 00 00 00 6e 00 65 00 74 00 00 00 3d 00 00 00 61 00 63 00 74 00 69 00 6f 00 6e 00 } //1
		$a_01_63 = {57 72 69 74 65 57 68 69 74 65 4c 69 73 74 54 6f 6f 6c 73 5c 69 6e 73 74 6c 73 70 5c 52 65 6c 65 61 73 65 5c 73 69 6d 70 6c 65 2e 70 64 62 } //1 WriteWhiteListTools\instlsp\Release\simple.pdb
		$a_01_64 = {73 69 6d 70 6c 65 2e 64 6c 6c 00 57 57 4c 00 } //1
		$a_01_65 = {62 00 62 00 64 00 2e 00 31 00 2e 00 79 00 } //1 bbd.1.y
		$a_01_66 = {57 68 69 74 65 4c 69 73 74 41 6e 64 43 6c 65 61 72 4c 6f 67 5c 63 6f 64 65 5c 52 65 6c 65 61 73 65 5c 58 58 58 58 73 69 6d 70 6c 65 2e 70 64 62 } //1 WhiteListAndClearLog\code\Release\XXXXsimple.pdb
		$a_01_67 = {58 58 58 58 73 69 6d 70 6c 65 2e 64 6c 6c 00 41 6e 61 6c 79 7a 65 43 6f 64 65 00 57 57 4c 00 } //1
		$a_01_68 = {53 74 6f 70 53 61 66 65 54 6f 6f 6c 73 5c 63 6f 64 65 5c 61 76 61 73 74 5c 44 4b 50 5c 6f 75 74 5c 44 6f 44 4b 50 2e 70 64 62 } //1 StopSafeTools\code\avast\DKP\out\DoDKP.pdb
		$a_01_69 = {44 6f 44 4b 50 2e 64 6c 6c 00 41 6e 61 6c 79 7a 65 43 6f 64 65 00 47 4f 00 } //1
		$a_01_70 = {44 6f 44 4b 50 36 34 2e 64 6c 6c 00 41 6e 61 6c 79 7a 65 43 6f 64 65 00 47 4f 00 } //1
		$a_01_71 = {44 00 4b 00 50 00 36 00 34 00 2e 00 73 00 79 00 73 00 } //1 DKP64.sys
		$a_01_72 = {79 00 69 00 73 00 5f 00 00 00 00 00 5f 00 00 00 76 00 65 00 72 00 2e 00 63 00 6f 00 6e 00 00 00 } //1
		$a_01_73 = {78 00 65 00 00 00 00 00 44 00 2e 00 65 00 00 00 70 00 65 00 72 00 00 00 53 00 75 00 00 00 } //1
		$a_01_74 = {5c 52 55 4e 50 43 48 5c 52 65 6c 65 61 73 65 5c 47 55 4f 5f 43 41 55 2e 70 64 62 } //1 \RUNPCH\Release\GUO_CAU.pdb
		$a_01_75 = {75 00 64 00 66 00 72 00 6f 00 6e 00 74 00 2e 00 6e 00 00 00 72 00 73 00 31 00 32 00 6b 00 00 00 70 00 3a 00 2f 00 2f 00 64 00 66 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1+(#a_01_14  & 1)*1+(#a_01_15  & 1)*1+(#a_01_16  & 1)*1+(#a_01_17  & 1)*1+(#a_01_18  & 1)*1+(#a_01_19  & 1)*1+(#a_01_20  & 1)*1+(#a_01_21  & 1)*2+(#a_01_22  & 1)*1+(#a_01_23  & 1)*1+(#a_01_24  & 1)*1+(#a_01_25  & 1)*1+(#a_01_26  & 1)*1+(#a_01_27  & 1)*1+(#a_01_28  & 1)*1+(#a_01_29  & 1)*1+(#a_01_30  & 1)*1+(#a_01_31  & 1)*1+(#a_01_32  & 1)*1+(#a_01_33  & 1)*1+(#a_01_34  & 1)*1+(#a_01_35  & 1)*1+(#a_01_36  & 1)*1+(#a_01_37  & 1)*1+(#a_01_38  & 1)*1+(#a_01_39  & 1)*1+(#a_01_40  & 1)*1+(#a_01_41  & 1)*1+(#a_01_42  & 1)*1+(#a_01_43  & 1)*1+(#a_01_44  & 1)*1+(#a_01_45  & 1)*1+(#a_01_46  & 1)*1+(#a_01_47  & 1)*1+(#a_01_48  & 1)*1+(#a_01_49  & 1)*1+(#a_01_50  & 1)*1+(#a_01_51  & 1)*1+(#a_01_52  & 1)*1+(#a_01_53  & 1)*1+(#a_01_54  & 1)*1+(#a_01_55  & 1)*1+(#a_01_56  & 1)*1+(#a_01_57  & 1)*1+(#a_01_58  & 1)*1+(#a_01_59  & 1)*1+(#a_01_60  & 1)*1+(#a_01_61  & 1)*1+(#a_01_62  & 1)*1+(#a_01_63  & 1)*1+(#a_01_64  & 1)*1+(#a_01_65  & 1)*1+(#a_01_66  & 1)*1+(#a_01_67  & 1)*1+(#a_01_68  & 1)*1+(#a_01_69  & 1)*1+(#a_01_70  & 1)*1+(#a_01_71  & 1)*1+(#a_01_72  & 1)*1+(#a_01_73  & 1)*1+(#a_01_74  & 1)*1+(#a_01_75  & 1)*1) >=1
 
}
rule BrowserModifier_Win32_Sasquor_14{
	meta:
		description = "BrowserModifier:Win32/Sasquor,SIGNATURE_TYPE_PEHSTR,05 00 05 00 04 00 00 "
		
	strings :
		$a_01_0 = {2e 00 44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 46 00 69 00 6c 00 65 00 28 00 27 00 68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 64 00 32 00 68 00 72 00 70 00 6e 00 66 00 79 00 62 00 33 00 77 00 76 00 33 00 6b 00 2e 00 63 00 6c 00 6f 00 75 00 64 00 66 00 72 00 6f 00 6e 00 74 00 2e 00 6e 00 65 00 74 00 } //4 .DownloadFile('http://d2hrpnfyb3wv3k.cloudfront.net
		$a_01_1 = {4d 00 6f 00 6e 00 69 00 74 00 6f 00 72 00 20 00 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 } //1 Monitor Process
		$a_01_2 = {24 00 63 00 6c 00 69 00 65 00 6e 00 74 00 20 00 3d 00 20 00 6e 00 65 00 77 00 2d 00 6f 00 62 00 6a 00 65 00 63 00 74 00 20 00 53 00 79 00 73 00 74 00 65 00 6d 00 2e 00 4e 00 65 00 74 00 2e 00 57 00 65 00 62 00 43 00 6c 00 69 00 65 00 6e 00 74 00 3b 00 24 00 63 00 6c 00 69 00 65 00 6e 00 74 00 2e 00 44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 46 00 69 00 6c 00 65 00 } //1 $client = new-object System.Net.WebClient;$client.DownloadFile
		$a_01_3 = {2f 00 70 00 72 00 6f 00 76 00 69 00 64 00 65 00 3f 00 63 00 6c 00 69 00 65 00 6e 00 74 00 73 00 3d 00 25 00 73 00 25 00 73 00 27 00 2c 00 27 00 25 00 73 00 27 00 29 00 } //1 /provide?clients=%s%s','%s')
	condition:
		((#a_01_0  & 1)*4+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=5
 
}