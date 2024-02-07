
rule Rogue_Win32_Fakeinit{
	meta:
		description = "Rogue:Win32/Fakeinit,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_02_0 = {81 c3 22 00 00 00 55 8b d2 33 ce 47 fc 5d 50 8b c2 58 8d 2d 90 01 04 81 d5 90 01 04 8d 05 90 01 04 33 d4 d6 d6 81 fb 90 01 04 75 d0 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Rogue_Win32_Fakeinit_2{
	meta:
		description = "Rogue:Win32/Fakeinit,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {81 eb 2f 00 00 00 f7 d9 87 d6 84 c9 68 ce 5c 3a 01 41 5d 33 c6 81 fb e9 37 02 00 75 e3 } //01 00 
		$a_01_1 = {81 e9 25 00 00 00 33 e9 ff f6 81 f8 ab fe 13 00 5b f7 d2 d6 81 f9 fc 61 c9 c3 75 e4 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Rogue_Win32_Fakeinit_3{
	meta:
		description = "Rogue:Win32/Fakeinit,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 02 00 "
		
	strings :
		$a_01_0 = {80 3c 3e 2e 75 01 45 57 46 ff d3 3b f0 7c f1 83 fd 02 7c } //01 00 
		$a_00_1 = {59 6f 75 72 20 73 79 73 74 65 6d 20 69 73 20 69 6e 66 65 63 74 65 64 2e 20 50 6c 65 61 73 65 20 61 63 74 69 76 61 74 65 20 79 6f 75 72 20 61 6e 74 69 76 69 72 75 73 20 73 6f 66 74 77 61 72 65 2e } //01 00  Your system is infected. Please activate your antivirus software.
		$a_00_2 = {6d 6f 6e 73 74 65 72 2e 63 6f 6d 0a 62 62 63 2e 63 6f 2e 75 6b 0a 62 65 62 6f 2e 63 6f 6d } //01 00 
		$a_00_3 = {73 6f 72 64 65 72 2e 64 6c 6c 00 00 69 65 78 70 6c 6f 72 65 2e 65 78 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Rogue_Win32_Fakeinit_4{
	meta:
		description = "Rogue:Win32/Fakeinit,SIGNATURE_TYPE_PEHSTR_EXT,05 00 04 00 0f 00 00 05 00 "
		
	strings :
		$a_03_0 = {6a 08 52 56 ff 15 90 01 04 8b 44 24 90 01 01 b1 23 c6 44 04 90 01 01 00 b8 08 00 00 00 38 4c 04 90 01 01 74 05 48 85 c0 7f f5 83 f8 08 90 00 } //05 00 
		$a_03_1 = {6a 08 51 57 ff 15 90 01 04 b8 08 00 00 00 b1 23 8b 54 24 90 01 01 88 9c 14 90 01 02 00 00 38 8c 04 90 01 02 00 00 74 05 48 3b c3 7f f2 83 f8 08 90 00 } //02 00 
		$a_00_2 = {2f 63 67 69 2d 62 69 6e 2f 64 6f 77 6e 6c 6f 61 64 2e 70 6c 3f 63 6f 64 65 3d 25 73 } //02 00  /cgi-bin/download.pl?code=%s
		$a_00_3 = {2f 6c 6f 61 64 73 2e 70 68 70 3f 63 6f 64 65 3d 25 73 } //01 00  /loads.php?code=%s
		$a_00_4 = {57 61 72 6e 69 6e 67 21 20 53 65 63 75 72 69 74 79 20 72 65 70 6f 72 74 00 } //01 00 
		$a_00_5 = {59 6f 75 72 20 63 6f 6d 70 75 74 65 72 20 69 73 20 69 6e 66 65 63 74 65 64 21 20 49 74 20 69 73 20 72 65 63 6f 6d 6d 65 6e 64 65 64 20 74 6f 20 73 74 61 72 74 20 73 70 79 77 61 72 65 20 63 6c 65 61 6e 65 72 20 74 6f 6f 6c 2e 00 } //01 00 
		$a_00_6 = {25 73 5c 75 6e 69 71 2e 74 6c 6c 00 } //01 00 
		$a_00_7 = {25 73 5c 74 65 73 74 2e 74 74 74 00 } //01 00 
		$a_00_8 = {25 73 5c 66 72 6d 77 72 6b 2e 65 78 65 00 } //01 00 
		$a_00_9 = {25 73 5c 77 69 6e 75 70 64 61 74 65 2e 65 78 65 00 } //01 00 
		$a_00_10 = {66 61 61 35 36 61 65 30 2d 66 63 36 34 2d 34 31 66 63 2d 62 32 38 36 2d 66 65 64 39 61 62 63 64 34 30 31 65 } //01 00  faa56ae0-fc64-41fc-b286-fed9abcd401e
		$a_00_11 = {38 36 33 36 30 36 35 62 2d 66 65 66 30 2d 34 32 35 35 2d 62 31 34 66 2d 35 34 36 33 39 66 37 39 30 30 61 34 } //01 00  8636065b-fef0-4255-b14f-54639f7900a4
		$a_00_12 = {25 73 5c 63 72 69 74 69 63 61 6c 5f 77 61 72 6e 69 6e 67 2e 68 74 6d 6c } //02 00  %s\critical_warning.html
		$a_00_13 = {2f 63 67 69 2d 62 69 6e 2f 67 65 74 2e 70 6c 3f 6c 3d 25 73 } //02 00  /cgi-bin/get.pl?l=%s
		$a_00_14 = {2f 63 67 69 2d 62 69 6e 2f 77 61 72 65 2e 63 67 69 3f 61 64 76 3d 25 73 } //00 00  /cgi-bin/ware.cgi?adv=%s
	condition:
		any of ($a_*)
 
}
rule Rogue_Win32_Fakeinit_5{
	meta:
		description = "Rogue:Win32/Fakeinit,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 07 00 00 01 00 "
		
	strings :
		$a_00_0 = {2d 00 46 00 37 00 44 00 39 00 4d 00 2d 00 50 00 33 00 42 00 32 00 41 00 00 00 } //02 00 
		$a_00_1 = {43 00 6f 00 6e 00 74 00 69 00 6e 00 75 00 65 00 20 00 77 00 6f 00 72 00 6b 00 69 00 6e 00 67 00 20 00 69 00 6e 00 20 00 75 00 6e 00 70 00 72 00 6f 00 74 00 65 00 63 00 74 00 65 00 64 00 20 00 6d 00 6f 00 64 00 65 00 20 00 69 00 73 00 20 00 76 00 65 00 72 00 79 00 20 00 64 00 61 00 6e 00 67 00 65 00 72 00 6f 00 75 00 73 00 2e 00 20 00 56 00 69 00 72 00 75 00 73 00 65 00 73 00 20 00 63 00 61 00 6e 00 20 00 64 00 61 00 6d 00 61 00 67 00 65 00 20 00 79 00 6f 00 75 00 72 00 20 00 63 00 6f 00 6e 00 66 00 69 00 64 00 65 00 6e 00 74 00 69 00 61 00 6c 00 20 00 64 00 61 00 74 00 61 00 } //01 00  Continue working in unprotected mode is very dangerous. Viruses can damage your confidential data
		$a_00_2 = {62 00 72 00 75 00 74 00 65 00 20 00 66 00 6f 00 72 00 63 00 65 00 20 00 74 00 65 00 6c 00 6e 00 65 00 74 00 20 00 70 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 73 00 20 00 73 00 65 00 6c 00 65 00 63 00 74 00 69 00 6f 00 6e 00 00 00 } //01 00 
		$a_00_3 = {42 6c 6f 63 6b 65 64 20 73 75 73 70 69 63 69 6f 75 73 20 61 74 74 65 6d 70 74 73 3a } //01 00  Blocked suspicious attempts:
		$a_00_4 = {2f 00 61 00 70 00 69 00 2f 00 70 00 69 00 6e 00 67 00 2e 00 70 00 68 00 70 00 3f 00 65 00 6d 00 61 00 69 00 6c 00 3d 00 } //02 00  /api/ping.php?email=
		$a_02_5 = {2f 00 6f 00 72 00 64 00 65 00 72 00 2f 00 70 00 61 00 79 00 2e 00 70 00 68 00 70 00 3f 00 69 00 64 00 3d 00 90 02 0c 26 00 61 00 64 00 76 00 65 00 72 00 74 00 3d 00 90 00 } //02 00 
		$a_01_6 = {57 00 61 00 72 00 6e 00 69 00 6e 00 67 00 21 00 20 00 4e 00 65 00 77 00 20 00 76 00 65 00 72 00 73 00 69 00 6f 00 6e 00 20 00 6f 00 66 00 20 00 44 00 61 00 74 00 61 00 62 00 61 00 73 00 65 00 73 00 20 00 69 00 73 00 20 00 61 00 76 00 61 00 6c 00 69 00 61 00 62 00 6c 00 65 00 21 00 0d 00 0a 00 57 00 6f 00 75 00 6c 00 64 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Rogue_Win32_Fakeinit_6{
	meta:
		description = "Rogue:Win32/Fakeinit,SIGNATURE_TYPE_PEHSTR,05 00 05 00 08 00 00 02 00 "
		
	strings :
		$a_01_0 = {2f 3f 61 3d 63 6f 6e 66 26 63 6f 64 65 3d 25 64 00 } //02 00 
		$a_01_1 = {31 30 39 39 63 65 34 61 2d 66 66 35 31 2d 34 61 38 64 2d 61 62 33 63 2d 63 37 34 62 39 63 30 36 65 34 36 66 } //01 00  1099ce4a-ff51-4a8d-ab3c-c74b9c06e46f
		$a_01_2 = {68 74 6d 6c 5f 72 65 70 6c 61 63 65 5f 63 6f 75 6e 74 65 72 3d 00 } //01 00  瑨汭牟灥慬散损畯瑮牥=
		$a_01_3 = {68 74 6d 6c 5f 74 6f 5f 72 65 70 6c 61 63 65 3d 00 } //01 00 
		$a_01_4 = {65 78 6c 75 64 65 5f 75 72 6c 73 3d 00 } //01 00 
		$a_01_5 = {57 45 42 20 47 75 61 72 64 69 61 6e } //01 00  WEB Guardian
		$a_01_6 = {23 2f 62 6c 6f 63 6b 23 00 } //01 00 
		$a_01_7 = {23 2f 6c 69 6e 6b 23 00 } //00 00  ⼣楬歮#
	condition:
		any of ($a_*)
 
}
rule Rogue_Win32_Fakeinit_7{
	meta:
		description = "Rogue:Win32/Fakeinit,SIGNATURE_TYPE_PEHSTR,07 00 07 00 07 00 00 02 00 "
		
	strings :
		$a_01_0 = {2e 63 6f 6d 2f 63 67 69 2d 62 69 6e 2f 6e 70 68 2d 70 72 2f 70 61 6e 64 6f 72 61 2f 73 6f 66 74 63 6f 72 65 2f 62 75 79 5f 73 6f 66 74 2e 70 68 70 3f 70 72 6f 64 75 63 74 69 64 3d 50 41 56 52 26 61 64 76 65 72 74 3d 73 69 74 65 } //02 00  .com/cgi-bin/nph-pr/pandora/softcore/buy_soft.php?productid=PAVR&advert=site
		$a_01_1 = {2e 63 6f 6d 2f 63 67 69 2d 62 69 6e 2f 6e 70 68 2d 70 72 2f 70 61 6e 64 6f 72 61 2f 73 6f 66 74 63 6f 72 65 2f 61 63 74 69 76 61 74 65 2e 70 68 70 3f 6f 72 64 65 72 69 64 3d } //01 00  .com/cgi-bin/nph-pr/pandora/softcore/activate.php?orderid=
		$a_01_2 = {42 6c 6f 63 6b 65 64 20 73 75 73 70 69 63 69 6f 75 73 20 61 74 74 65 6d 70 74 73 3a } //01 00  Blocked suspicious attempts:
		$a_01_3 = {4e 65 77 20 76 65 72 73 69 6f 6e 20 6f 66 20 64 61 62 61 73 65 73 20 69 73 20 61 76 61 6c 69 61 62 6c 65 21 } //01 00  New version of dabases is avaliable!
		$a_01_4 = {41 74 74 61 6b 65 72 20 49 50 3a } //01 00  Attaker IP:
		$a_01_5 = {2e 65 78 65 20 65 78 70 6c 6f 69 74 } //01 00  .exe exploit
		$a_01_6 = {52 43 50 54 20 65 78 70 6c 6f 69 74 } //00 00  RCPT exploit
	condition:
		any of ($a_*)
 
}
rule Rogue_Win32_Fakeinit_8{
	meta:
		description = "Rogue:Win32/Fakeinit,SIGNATURE_TYPE_PEHSTR,04 00 04 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {2d 46 37 44 39 4d 2d 50 33 42 32 41 00 } //01 00 
		$a_01_1 = {2f 62 75 79 2f 3f 63 6f 64 65 3d 00 } //01 00  戯祵㼯潣敤=
		$a_01_2 = {6d 61 69 6c 74 6f 3a 73 75 70 70 6f 72 74 40 61 76 2d 73 75 70 70 6f 72 74 2e 6f 72 67 00 } //01 00 
		$a_01_3 = {2f 73 63 72 69 70 74 2e 70 68 70 3f 63 6f 64 65 3d 00 } //01 00 
		$a_01_4 = {41 64 76 61 6e 63 65 64 56 69 72 75 73 52 65 6d 6f 76 65 72 00 } //02 00 
		$a_01_5 = {43 6f 6e 74 69 6e 75 65 20 77 6f 72 6b 69 6e 67 20 69 6e 20 75 6e 70 72 6f 74 65 63 74 65 64 20 6d 6f 64 65 20 69 73 20 76 65 72 79 20 64 61 6e 67 65 72 6f 75 73 2e 20 56 69 72 75 73 65 73 20 63 61 6e 20 64 61 6d 61 67 65 20 79 6f 75 72 20 63 6f 6e 66 69 64 65 6e 74 69 61 6c 20 64 61 74 61 } //01 00  Continue working in unprotected mode is very dangerous. Viruses can damage your confidential data
		$a_01_6 = {62 72 75 74 65 20 66 6f 72 63 65 20 74 65 6c 6e 65 74 20 70 61 73 73 77 6f 72 64 73 20 73 65 6c 65 63 74 69 6f 6e 00 } //01 00 
		$a_01_7 = {42 6c 6f 63 6b 65 64 20 73 75 73 70 69 63 69 6f 75 73 20 61 74 74 65 6d 70 74 73 3a } //00 00  Blocked suspicious attempts:
	condition:
		any of ($a_*)
 
}
rule Rogue_Win32_Fakeinit_9{
	meta:
		description = "Rogue:Win32/Fakeinit,SIGNATURE_TYPE_PEHSTR,28 00 28 00 15 00 00 0a 00 "
		
	strings :
		$a_01_0 = {00 42 68 6f 4e 65 77 2e 64 6c 6c 00 } //0a 00 
		$a_01_1 = {72 65 67 73 76 72 33 32 2e 65 78 65 20 2f 73 20 00 00 00 00 6e 74 64 6c 6c 36 34 2e 64 6c 6c } //0a 00 
		$a_01_2 = {5c 69 6e 69 74 33 32 2e 65 78 65 00 2d 6e 72 75 } //04 00  楜楮㍴⸲硥e渭畲
		$a_01_3 = {6c 73 70 2d 74 65 73 74 2d 6e 61 78 2e 69 6e 64 2e 69 6e } //02 00  lsp-test-nax.ind.in
		$a_01_4 = {32 61 34 32 32 63 39 31 2d 36 39 38 34 2d 34 37 65 34 2d 39 34 62 65 2d 30 34 63 34 66 61 64 35 66 38 64 38 } //02 00  2a422c91-6984-47e4-94be-04c4fad5f8d8
		$a_01_5 = {31 30 39 39 63 65 34 61 2d 66 66 35 31 2d 34 61 38 64 2d 61 62 33 63 2d 63 37 34 62 39 63 30 36 65 34 36 66 } //02 00  1099ce4a-ff51-4a8d-ab3c-c74b9c06e46f
		$a_01_6 = {77 69 6e 33 32 68 6c 70 2e 63 6e 66 } //01 00  win32hlp.cnf
		$a_01_7 = {65 78 6c 75 64 65 5f 75 72 6c 73 3d } //01 00  exlude_urls=
		$a_01_8 = {68 74 6d 6c 5f 74 6f 5f 72 65 70 6c 61 63 65 3d } //01 00  html_to_replace=
		$a_01_9 = {72 65 70 6c 61 63 65 5f 72 65 66 3d } //01 00  replace_ref=
		$a_01_10 = {34 30 34 5f 75 72 6c 3d } //01 00  404_url=
		$a_01_11 = {70 6f 70 5f 75 72 6c 3d } //01 00  pop_url=
		$a_01_12 = {68 74 6d 6c 5f 72 65 70 6c 61 63 65 5f 63 6f 75 6e 74 65 72 3d } //01 00  html_replace_counter=
		$a_01_13 = {68 74 6d 6c 5f 69 64 3d } //01 00  html_id=
		$a_01_14 = {68 74 6d 6c 5f 75 72 6c 3d } //01 00  html_url=
		$a_01_15 = {69 73 5f 68 74 6d 6c 3d } //01 00  is_html=
		$a_01_16 = {72 65 70 6c 61 63 65 73 3d } //01 00  replaces=
		$a_01_17 = {72 61 6e 64 6f 6d 6c 79 3d } //01 00  randomly=
		$a_01_18 = {6d 61 69 6e 5f 75 72 6c 3d } //01 00  main_url=
		$a_01_19 = {72 65 73 65 72 76 65 5f 75 72 6c 3d } //01 00  reserve_url=
		$a_01_20 = {43 6f 6e 66 69 67 20 4d 75 74 65 78 } //00 00  Config Mutex
	condition:
		any of ($a_*)
 
}
rule Rogue_Win32_Fakeinit_10{
	meta:
		description = "Rogue:Win32/Fakeinit,SIGNATURE_TYPE_PEHSTR,07 00 05 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {59 00 6f 00 75 00 72 00 20 00 43 00 6f 00 6d 00 70 00 75 00 74 00 65 00 72 00 20 00 6d 00 69 00 67 00 68 00 74 00 20 00 20 00 62 00 65 00 20 00 61 00 74 00 20 00 52 00 69 00 73 00 6b 00 21 00 00 00 } //01 00 
		$a_01_1 = {2f 00 62 00 75 00 79 00 2f 00 3f 00 63 00 6f 00 64 00 65 00 3d 00 00 00 } //01 00 
		$a_01_2 = {43 00 72 00 69 00 74 00 69 00 63 00 61 00 6c 00 00 00 00 00 48 00 69 00 67 00 68 00 00 00 00 00 4d 00 65 00 64 00 69 00 75 00 6d 00 00 00 } //01 00 
		$a_01_3 = {53 75 73 70 69 63 69 6f 75 73 00 00 49 6e 66 65 63 74 65 64 } //01 00 
		$a_01_4 = {56 00 69 00 72 00 75 00 73 00 65 00 73 00 20 00 68 00 61 00 76 00 65 00 20 00 62 00 65 00 65 00 6e 00 20 00 64 00 65 00 74 00 65 00 63 00 74 00 65 00 64 00 21 00 } //01 00  Viruses have been detected!
		$a_01_5 = {2d 00 20 00 53 00 70 00 61 00 6d 00 2d 00 6d 00 61 00 69 00 6c 00 69 00 6e 00 67 00 20 00 66 00 72 00 6f 00 6d 00 20 00 79 00 6f 00 75 00 72 00 20 00 50 00 43 00 2e 00 } //01 00  - Spam-mailing from your PC.
		$a_01_6 = {48 00 69 00 67 00 68 00 6c 00 79 00 20 00 72 00 65 00 63 00 6f 00 6d 00 6d 00 65 00 6e 00 64 00 65 00 64 00 20 00 74 00 6f 00 20 00 64 00 65 00 73 00 74 00 72 00 6f 00 79 00 20 00 74 00 68 00 65 00 6d 00 20 00 69 00 6d 00 6d 00 65 00 64 00 69 00 61 00 74 00 65 00 6c 00 79 00 2e 00 } //00 00  Highly recommended to destroy them immediately.
	condition:
		any of ($a_*)
 
}