
rule VirTool_WinNT_Ellhide_gen_A{
	meta:
		description = "VirTool:WinNT/Ellhide.gen!A,SIGNATURE_TYPE_PEHSTR,3c 00 32 00 09 00 00 0f 00 "
		
	strings :
		$a_01_0 = {85 c0 75 23 01 7e 28 8b 45 f8 89 75 08 11 5e 2c 01 46 30 8b 45 fc 11 46 34 33 db 33 ff 03 36 89 5d f8 89 5d fc } //0f 00 
		$a_01_1 = {eb 25 8b 46 28 8b 4e 2c 03 f8 8b 46 30 13 d9 01 45 f8 8b 4e 34 11 4d fc 83 7d 10 00 75 11 8b 0e 8b 45 08 03 f1 01 08 } //0f 00 
		$a_01_2 = {83 7d 10 00 75 16 eb 89 3b 75 0c 75 09 c7 45 14 22 00 00 c0 eb 06 8b 45 08 83 20 00 8b 45 14 } //0f 00 
		$a_01_3 = {8b 41 3c 83 c1 50 eb 35 8b 4d 08 8b 41 3c 83 c1 68 eb 2a 8b 4d 08 8b 41 08 83 c1 0c eb 1f 8b 4d 08 8b 41 3c 83 c1 5e eb 14 8b 4d 08 8b } //0f 00 
		$a_01_4 = {41 3c 83 c1 44 eb 09 8b 4d 08 8b 41 3c 83 c1 40 83 7d 10 00 75 02 8b c1 5d c2 0c 00 55 8b ec 8b 55 0c 33 c9 33 c0 2b d1 74 1c 4a 74 0e 4a 4a 75 } //0f 00 
		$a_01_5 = {1e 8b 4d 08 8b 01 83 c1 04 eb 14 8b 4d 08 8b 41 14 83 c1 18 eb 09 8b 4d 08 8b 41 0c 83 c1 10 83 } //0f 00 
		$a_01_6 = {8b 6d 0c b8 14 00 22 00 3b e8 77 41 74 37 81 ed 04 00 22 00 74 27 83 ed 04 74 1a 83 ed 04 74 0d 83 ed 04 75 67 56 e8 } //0f 00 
		$a_01_7 = {8b 75 08 57 6a 01 8b 4e 04 5a 33 c0 6a 03 89 4d f4 89 45 fc c7 45 dc 18 00 00 00 89 45 e0 c7 45 e8 40 00 00 00 89 45 e4 } //0f 00 
		$a_01_8 = {89 45 ec 89 45 f0 89 45 f8 b9 52 01 00 00 5f 03 d1 83 c1 06 5c 78 34 46 75 f8 89 46 0c 89 06 8d 45 f4 50 8d 45 fc ff 76 08 50 } //00 00 
	condition:
		any of ($a_*)
 
}