
rule VirTool_WinNT_Hackdef_gen_A{
	meta:
		description = "VirTool:WinNT/Hackdef.gen!A,SIGNATURE_TYPE_PEHSTR,18 00 14 00 1a 00 00 02 00 "
		
	strings :
		$a_01_0 = {5c 5c 2e 5c 48 78 44 65 66 44 72 69 76 65 72 } //02 00  \\.\HxDefDriver
		$a_01_1 = {5c 5c 2e 5c 6d 61 69 6c 73 6c 6f 74 5c 68 78 64 65 66 2d 72 6b 31 30 30 73 } //02 00  \\.\mailslot\hxdef-rk100s
		$a_01_2 = {5c 5c 2e 5c 6d 61 69 6c 73 6c 6f 74 5c 68 78 64 65 66 2d 72 6b 31 30 30 73 30 41 43 45 45 37 36 31 } //02 00  \\.\mailslot\hxdef-rk100s0ACEE761
		$a_01_3 = {50 72 65 66 65 74 63 68 5c 2a 2e 70 66 } //02 00  Prefetch\*.pf
		$a_01_4 = {5c 5c 2e 5c 6d 61 69 6c 73 6c 6f 74 5c 68 78 64 65 66 2d 72 6b 63 } //02 00  \\.\mailslot\hxdef-rkc
		$a_01_5 = {5c 5c 2e 5c 6d 61 69 6c 73 6c 6f 74 5c 68 78 64 65 66 2d 72 6b 62 } //02 00  \\.\mailslot\hxdef-rkb
		$a_01_6 = {5c 5c 2e 5c 6d 61 69 6c 73 6c 6f 74 5c 68 78 64 65 66 2d 72 6b 73 } //02 00  \\.\mailslot\hxdef-rks
		$a_01_7 = {2d 3a 49 4e 53 54 41 4c 4c 4f 4e 4c 59 } //02 00  -:INSTALLONLY
		$a_01_8 = {2d 3a 52 45 46 52 45 53 48 } //02 00  -:REFRESH
		$a_01_9 = {2d 3a 4e 4f 53 45 52 56 49 43 45 } //02 00  -:NOSERVICE
		$a_01_10 = {2d 3a 55 4e 49 4e 53 54 41 4c 4c } //02 00  -:UNINSTALL
		$a_01_11 = {2d 3a 42 44 3a 2d } //02 00  -:BD:-
		$a_01_12 = {47 48 61 6e 64 6c 65 73 20 76 31 2e 30 20 66 6f 72 20 47 4b 69 74 20 62 79 20 67 72 61 79 2c 74 68 78 20 66 6f 72 20 48 6f 6c 79 5f 46 61 74 68 65 72 20 26 26 20 52 61 74 74 65 72 2f 32 39 41 } //05 00  GHandles v1.0 for GKit by gray,thx for Holy_Father && Ratter/29A
		$a_01_13 = {5c 00 44 00 6f 00 73 00 44 00 65 00 76 00 69 00 63 00 65 00 73 00 5c 00 48 00 78 00 44 00 65 00 66 00 44 00 72 00 69 00 76 00 65 00 72 00 } //05 00  \DosDevices\HxDefDriver
		$a_01_14 = {5c 00 44 00 65 00 76 00 69 00 63 00 65 00 5c 00 48 00 78 00 44 00 65 00 66 00 44 00 72 00 69 00 76 00 65 00 72 00 } //03 00  \Device\HxDefDriver
		$a_01_15 = {5a 77 44 75 70 6c 69 63 61 74 65 54 6f 6b 65 6e } //03 00  ZwDuplicateToken
		$a_01_16 = {5a 77 4f 70 65 6e 50 72 6f 63 65 73 73 54 6f 6b 65 6e } //05 00  ZwOpenProcessToken
		$a_01_17 = {8b 4d e8 89 4d f4 c7 45 f8 00 00 00 00 8d 55 f4 52 8d 45 d0 50 68 ff 0f 1f 20 00 8d 4d a0 51 ff 15 } //05 00 
		$a_01_18 = {ff 75 f0 ff 15 f4 07 01 00 85 c0 7c 4d 8d 45 d0 50 6a 01 8d 45 b8 53 50 68 ff 00 0f 00 ff 75 0c ff 15 } //05 00 
		$a_01_19 = {85 c0 7c 27 8d 45 d0 6a 08 50 6a 09 ff 75 dc 89 5d d4 ff 15 } //05 00 
		$a_01_20 = {85 c0 7c 7a 8d 45 b4 50 68 ff 00 0f 00 8b 4d f0 51 ff 15 } //05 00 
		$a_01_21 = {85 c0 7c 30 c7 45 c8 00 00 00 00 6a 08 8d 55 c4 52 6a 09 8b 45 a0 50 ff 15 } //05 00 
		$a_01_22 = {85 c0 7c 09 8b 4d b0 c7 01 01 00 00 00 8b 55 c4 52 ff 15 } //06 00 
		$a_01_23 = {89 45 e8 8d 45 e8 50 8d 45 b8 50 68 ff 0f 1f 00 8d 45 e4 50 89 55 0c 89 4f 1c c7 45 b8 18 00 00 00 38 39 5d bc 89 5d c0 89 5d c4 89 5d c8 89 5d cc 89 5d ec } //04 00 
		$a_01_24 = {85 c0 7c 4d 8d 45 d0 50 6a 01 53 8d 45 b8 50 68 ff 00 0f 00 ff 75 f0 ff 15 } //04 00 
		$a_01_25 = {85 c0 7c 27 6a 08 8d 45 d0 50 6a 09 ff 75 e4 89 5d d4 ff 15 } //00 00 
	condition:
		any of ($a_*)
 
}