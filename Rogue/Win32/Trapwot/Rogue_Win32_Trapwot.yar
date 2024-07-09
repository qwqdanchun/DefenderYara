
rule Rogue_Win32_Trapwot{
	meta:
		description = "Rogue:Win32/Trapwot,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 05 00 00 "
		
	strings :
		$a_03_0 = {75 67 67 63 3a 2f 2f [0-10] 2f 76 7a 74 2f 63 63 70 2e 72 6b 72 } //10
		$a_01_1 = {6a 76 61 76 61 72 67 00 } //1 癪癡牡g
		$a_01_2 = {56 61 67 72 65 61 72 67 } //1 Vagrearg
		$a_01_3 = {50 65 72 6e 67 72 43 65 62 70 72 66 66 4e } //1 PerngrCebprffN
		$a_01_4 = {54 72 67 47 72 7a 63 43 6e 67 75 4e } //1 TrgGrzcCnguN
	condition:
		((#a_03_0  & 1)*10+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=12
 
}
rule Rogue_Win32_Trapwot_2{
	meta:
		description = "Rogue:Win32/Trapwot,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 04 00 00 "
		
	strings :
		$a_03_0 = {83 c7 14 80 3f 4d 75 ?? 80 7f 01 5a 75 ?? 3b 5d 08 73 } //4
		$a_01_1 = {b8 4f ec c4 4e f7 e1 c1 ea 03 6b d2 1a 2b ca 0f be 55 ff 3b ca 75 } //1
		$a_01_2 = {2f 67 65 74 5f 74 77 6f 2e 70 68 70 3f } //1 /get_two.php?
		$a_01_3 = {52 75 6e 49 6e 76 61 6c 69 64 53 69 67 6e 61 74 75 72 65 73 00 00 00 00 43 68 65 63 6b 45 78 65 53 69 67 6e 61 74 75 72 65 73 00 00 6e 6f 00 } //1
	condition:
		((#a_03_0  & 1)*4+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=6
 
}
rule Rogue_Win32_Trapwot_3{
	meta:
		description = "Rogue:Win32/Trapwot,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_01_0 = {b8 4f ec c4 4e f7 e1 c1 ea 03 6b d2 1a 2b ca 0f be 55 ff 3b ca 75 } //3
		$a_03_1 = {6a 2e 51 e8 ?? ?? ?? ?? 83 c4 08 3b c7 74 ?? 8d 95 ?? ?? ?? ?? 2b c2 83 f8 0a 75 ?? 50 6a 04 6a 05 8b c2 6a 03 50 e8 } //1
		$a_03_2 = {6a 2e 50 e8 ?? ?? ?? ?? 83 c4 08 ?? ?? (0f 84 ?? ?? ??|?? 74 ?? 8d) 8d ?? ?? ?? ?? 2b c1 83 f8 0a 90 03 05 04 0f 85 ?? ?? ?? ?? 75 ?? 50 6a 07 6a 03 8b d1 6a 02 52 e8 } //1
		$a_01_3 = {8b 4e 10 8b 44 31 10 83 c4 0c a8 03 ba 00 00 00 00 0f 95 c2 83 e0 fc 83 c1 fc 8d 04 90 3b c1 } //3
		$a_03_4 = {6a 04 68 00 30 00 00 50 6a 00 8b ?? ff 15 ?? ?? ?? ?? 89 ?? 8b 4c ?? 54 51 53 50 e8 ?? ?? ?? ?? 8b ?? 03 40 3c 90 09 08 00 [0-01] 8b ?? 3c 8b 44 ?? 50 } //3
	condition:
		((#a_01_0  & 1)*3+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*3+(#a_03_4  & 1)*3) >=4
 
}
rule Rogue_Win32_Trapwot_4{
	meta:
		description = "Rogue:Win32/Trapwot,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {6f 00 6e 00 4c 00 6f 00 61 00 64 00 65 00 64 00 00 00 00 00 73 00 74 00 6f 00 70 00 53 00 63 00 61 00 6e 00 00 00 00 00 73 00 74 00 61 00 72 00 74 00 53 00 65 00 61 00 72 00 63 00 68 00 00 00 62 00 75 00 79 00 50 00 72 00 6f 00 64 00 75 00 63 00 74 00 00 00 } //1
		$a_01_1 = {53 00 63 00 61 00 6e 00 20 00 66 00 6f 00 72 00 20 00 76 00 69 00 72 00 75 00 73 00 65 00 73 00 00 00 } //1
		$a_01_2 = {70 61 72 74 74 77 6f 2e 64 6c 6c 00 45 6e 74 72 79 50 6f 69 6e 74 00 } //4
		$a_01_3 = {42 00 6c 00 6f 00 63 00 6b 00 65 00 64 00 53 00 68 00 75 00 74 00 64 00 6f 00 77 00 6e 00 52 00 65 00 73 00 6f 00 6c 00 76 00 65 00 72 00 00 00 53 00 65 00 53 00 68 00 75 00 74 00 64 00 6f 00 77 00 6e 00 50 00 72 00 69 00 76 00 69 00 6c 00 65 00 67 00 65 00 } //1
		$a_01_4 = {6f 00 70 00 65 00 6e 00 50 00 72 00 6f 00 74 00 65 00 63 00 74 00 00 00 6f 00 70 00 65 00 6e 00 53 00 68 00 6f 00 70 00 } //1
		$a_01_5 = {73 00 74 00 6f 00 70 00 53 00 63 00 61 00 6e 00 00 00 00 00 67 00 65 00 74 00 41 00 64 00 76 00 49 00 64 00 00 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*4+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}
rule Rogue_Win32_Trapwot_5{
	meta:
		description = "Rogue:Win32/Trapwot,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 09 00 00 "
		
	strings :
		$a_03_0 = {8b 4f 10 8b 44 39 10 83 c4 0c a8 03 ba 00 00 00 00 0f 95 c2 83 e0 fc 83 c1 fc 8d 04 90 90 3b c1 90 13 80 3b 4d (75 ?? 0f 85|?? ?? ?? ?? 80) 7b 01 5a (|) 75 0f 85 } //16
		$a_03_1 = {8b 4e 10 8b 44 31 10 83 c4 0c a8 03 ba 00 00 00 00 0f 95 c2 83 e0 fc 83 c1 fc 8d 04 90 90 3b c1 90 13 80 ?? 4d (75 ?? 0f 85|?? ?? ?? ?? 80) ?? 01 5a (|) 75 0f 85 } //16
		$a_03_2 = {8b 4e 10 8b 44 31 10 83 c4 0c a8 03 ba 00 00 00 00 0f 95 c2 83 e0 fc 83 c1 fc 8d 04 90 90 3b c1 90 13 ?? ?? ?? 90 13 55 8b ec 8b 45 08 80 38 4d [0-03] 75 ?? 80 78 01 5a } //16
		$a_03_3 = {8b 4e 10 8b 44 31 10 83 c4 0c a8 03 ba 00 00 00 00 0f 95 c2 83 e0 fc 83 c1 fc 8d 04 90 90 3b c1 90 13 ?? ?? ?? 90 13 55 8b ec 8b 45 08 80 78 01 5a [0-03] 75 ?? 80 38 4d } //16
		$a_03_4 = {8b 4e 10 8b 44 31 10 83 c4 0c a8 03 ba 00 00 00 00 0f 95 c2 83 e0 fc 83 c1 fc 8d 04 90 90 3b c1 90 13 ?? ?? ?? 90 13 55 8b ec 8b 45 08 [0-03] 90 04 01 02 b9 ba 4d 5a 00 00 66 39 90 04 01 02 08 10 } //16
		$a_01_5 = {b8 4f ec c4 4e f7 e1 c1 ea 03 6b d2 1a 2b ca 0f be 55 ff 3b ca 75 } //1
		$a_03_6 = {6a 2e 51 e8 ?? ?? ?? ?? 83 c4 08 3b c7 74 ?? 8d 95 ?? ?? ?? ?? 2b c2 83 f8 0a 75 ?? 50 6a 04 6a 05 8b c2 6a 03 50 e8 } //1
		$a_03_7 = {6a 2e 50 e8 ?? ?? ?? ?? 83 c4 08 ?? ?? (0f 84 ?? ?? ??|?? 74 ?? 8d) 8d ?? ?? ?? ?? 2b c1 83 f8 0a 90 03 05 04 0f 85 ?? ?? ?? ?? 75 ?? 50 6a 07 6a 03 8b d1 6a 02 52 e8 } //1
		$a_03_8 = {67 65 74 5f 74 77 6f 3f 76 3d [0-02] 26 61 3d [0-03] 26 75 3d ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 26 69 3d } //1
	condition:
		((#a_03_0  & 1)*16+(#a_03_1  & 1)*16+(#a_03_2  & 1)*16+(#a_03_3  & 1)*16+(#a_03_4  & 1)*16+(#a_01_5  & 1)*1+(#a_03_6  & 1)*1+(#a_03_7  & 1)*1+(#a_03_8  & 1)*1) >=2
 
}
rule Rogue_Win32_Trapwot_6{
	meta:
		description = "Rogue:Win32/Trapwot,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 0f 00 00 "
		
	strings :
		$a_01_0 = {b8 4f ec c4 4e f7 e1 c1 ea 03 6b d2 1a 2b ca 0f be 55 ff 3b ca 75 } //3
		$a_03_1 = {6a 2e 51 e8 ?? ?? ?? ?? 83 c4 08 3b c7 74 ?? 8d 95 ?? ?? ?? ?? 2b c2 83 f8 0a 75 ?? 50 6a 04 6a 05 8b c2 6a 03 50 e8 } //1
		$a_03_2 = {6a 2e 50 e8 ?? ?? ?? ?? 83 c4 08 ?? ?? (0f 84 ?? ?? ??|?? 74 ?? 8d) 8d ?? ?? ?? ?? 2b c1 83 f8 0a 90 03 05 04 0f 85 ?? ?? ?? ?? 75 ?? 50 6a 07 6a 03 8b d1 6a 02 52 e8 } //1
		$a_01_3 = {8b 4e 10 8b 44 31 10 83 c4 0c a8 03 ba 00 00 00 00 0f 95 c2 83 e0 fc 83 c1 fc 8d 04 90 3b c1 } //3
		$a_23_4 = {8b ec 8b 45 08 90 02 70 b9 90 01 04 66 33 08 ba 90 01 04 66 3b ca 90 00 03 } //3
		$a_55_5 = {ec 8b 45 08 90 01 03 0f b7 08 81 f1 90 01 04 81 e9 90 01 04 74 90 00 03 00 1f 23 55 8b ec 8b 45 08 56 8b } //6400
		$a_48_6 = {02 30 ba 90 01 04 66 33 10 b9 90 01 04 66 3b d1 90 00 03 00 15 23 0f b7 08 81 e9 90 01 04 81 f9 90 01 04 90 04 01 02 75 74 90 00 03 00 15 23 0f b7 10 81 ea 90 01 04 81 fa 90 01 04 90 04 01 02 75 74 90 00 03 00 1d 23 55 8b ec 8b 45 08 56 8b f1 b9 90 02 54 ba 90 01 04 66 33 10 b9 90 01 04 66 3b d1 90 00 03 00 26 23 66 3b ca 74 90 01 01 b9 90 01 04 66 33 08 ba 90 01 04 66 3b ca 75 90 01 01 b9 90 01 04 66 39 48 90 01 01 74 90 00 03 00 26 23 66 3b d1 74 90 01 01 ba 90 01 04 66 33 10 b9 90 01 04 66 3b d1 75 90 01 01 ba 90 01 04 66 39 50 90 01 01 74 } //4081
		$a_00_7 = {23 23 66 } //144 ##f
		$a_90_8 = {01 ba 90 01 04 66 33 10 bf 90 01 04 66 3b d7 75 90 01 01 ba 90 01 04 66 3b ca 74 90 00 03 00 23 23 66 3b d7 74 90 01 01 ba 90 01 04 66 33 10 bf 90 01 04 66 3b d7 75 90 01 01 ba 90 01 04 66 3b ca 74 90 00 03 00 1b 23 66 8b 38 ba 90 01 04 66 2b fa ba 90 01 04 66 33 fa ba 90 01 04 66 3b fa 75 90 00 00 00 78 32 02 00 04 00 04 00 12 00 00 03 00 16 01 } //-13765
		$a_c4_9 = {f7 e1 c1 ea 03 6b d2 1a 2b ca 0f be 55 ff 3b ca 75 01 00 2b 03 6a 2e 51 e8 90 01 04 83 c4 08 3b c7 74 90 01 01 8d 95 90 01 04 2b c2 83 f8 0a 75 90 01 01 50 6a 04 6a 05 8b c2 6a 03 50 e8 90 00 01 00 3e 03 6a 2e 50 e8 90 01 04 83 c4 08 90 01 02 90 03 05 04 0f 84 90 01 04 74 90 01 01 8d 8d 90 01 04 2b c1 83 f8 0a 90 03 05 04 0f 85 90 01 04 75 90 01 01 50 6a 07 6a 03 8b d1 6a 02 52 e8 90 00 03 00 1f 01 8b 4e 10 8b 44 31 10 83 c4 0c a8 03 ba 00 00 00 00 0f 95 c2 83 e0 fc 83 c1 fc 8d 04 90 3b c1 01 00 16 23 0f b6 10 83 ea 90 01 01 83 fa 90 01 01 90 03 02 01 0f 85 75 90 00 01 00 15 23 8a 10 80 f2 90 01 01 80 fa 90 01 01 90 03 02 01 0f 85 75 90 00 01 00 15 23 8a 10 80 ea 90 01 01 80 fa 90 01 01 90 03 02 01 } //20408
		$a_90_10 = {01 00 15 23 8a 08 80 f1 90 01 01 80 f9 90 01 01 90 03 02 01 0f 85 75 90 00 01 00 15 23 8a 10 80 c2 90 01 01 80 fa 90 01 01 90 03 02 01 0f 85 75 90 00 01 00 1a 23 8a 10 80 f2 90 01 01 80 ea 90 01 01 80 fa 90 01 01 90 03 02 01 0f 85 75 90 00 01 00 1a 23 8a 10 80 f2 90 01 01 80 c2 90 01 01 80 fa 90 01 01 90 03 02 01 0f 85 75 90 00 02 00 17 23 0f b6 50 } //-31473
		$a_90_11 = {01 83 fa 90 01 01 90 03 02 01 0f 85 75 90 00 02 00 16 23 8a 50 01 80 f2 90 01 01 80 fa 90 01 01 90 03 02 01 0f 85 75 90 00 02 00 16 23 8a 50 01 80 c2 90 01 01 80 fa 90 01 01 90 03 02 01 0f 85 75 90 00 02 00 16 23 8a 48 01 80 e9 90 02 02 80 f9 90 01 01 90 03 02 01 0f 85 75 90 00 02 00 16 23 8a 50 01 80 ea 90 01 01 80 fa 90 01 01 90 03 02 01 0f 85 75 90 00 02 00 1b 23 8a 50 01 80 f2 90 01 01 80 ea 90 01 01 80 fa 90 01 01 90 03 02 01 0f 85 75 90 00 02 00 1b 23 8a 50 01 80 f2 90 01 01 80 c2 90 01 01 80 fa 90 01 01 90 03 02 01 0f 85 75 90 00 00 00 7e 15 00 00 3b 74 5c 4c 5b 67 3f 07 64 a0 71 ab a0 1c 30 9d 00 00 00 00 62 7e 15 00 00 8e f8 bb db 7b 7a a6 a2 89 b2 e6 34 86 d7 5a 13 00 00 00 00 62 80 } //-31999
		$a_db_13 = {3f fc b5 30 5a 00 10 00 80 87 10 00 00 66 c7 8d 2a 4c 85 f5 36 8f ca 46 12 4f 36 00 00 e7 2c 00 00 00 00 28 00 a3 c7 0f 93 ec 0f 0b bc e6 1a ac 1e fe 88 88 33 33 bf 8f c7 17 77 e3 0f 0f 93 ec 0f 0b bc e6 1a ac 1e fe 88 88 33 33 bf 5f 18 00 00 0b 00 5c 44 65 66 65 6e 64 65 72 20 50 52 4f 20 32 30 31 35 2e 6c 6e 6b 5f 18 00 00 16 00 5c 44 65 66 65 6e 64 65 72 20 50 52 4f 20 32 30 31 35 2e 6c 6e 6b 5f 18 00 00 19 00 5c 44 65 66 } //-7158
		$a_65_14 = {20 50 52 4f 20 32 30 31 35 2e 6c 6e 6b 5f 1c 00 00 0b 00 5c 4d 61 6c 77 61 72 65 20 44 65 66 65 6e 64 65 72 20 32 30 31 35 2e 6c 6e 6b 5f 1c 00 00 16 00 5c 4d 61 6c 77 61 72 65 20 44 65 66 65 6e 64 65 72 20 32 30 31 35 2e 6c 6e 6b 5f 1c 00 00 19 00 5c 4d 61 6c 77 61 72 65 20 44 65 66 65 6e 64 65 72 } //28261
	condition:
		((#a_01_0  & 1)*3+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*3+(#a_23_4  & 1)*3+(#a_55_5  & 1)*6400+(#a_48_6  & 1)*4081+(#a_00_7  & 1)*144+(#a_90_8  & 1)*-13765+(#a_c4_9  & 1)*20408+(#a_90_10  & 1)*-31473+(#a_90_11  & 1)*-31999+(#a_db_13  & 1)*-7158+(#a_65_14  & 1)*28261) >=4
 
}
rule Rogue_Win32_Trapwot_7{
	meta:
		description = "Rogue:Win32/Trapwot,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 12 00 00 "
		
	strings :
		$a_01_0 = {b8 4f ec c4 4e f7 e1 c1 ea 03 6b d2 1a 2b ca 0f be 55 ff 3b ca 75 } //3
		$a_03_1 = {6a 2e 51 e8 ?? ?? ?? ?? 83 c4 08 3b c7 74 ?? 8d 95 ?? ?? ?? ?? 2b c2 83 f8 0a 75 ?? 50 6a 04 6a 05 8b c2 6a 03 50 e8 } //1
		$a_03_2 = {6a 2e 50 e8 ?? ?? ?? ?? 83 c4 08 ?? ?? (0f 84 ?? ?? ??|?? 74 ?? 8d) 8d ?? ?? ?? ?? 2b c1 83 f8 0a 90 03 05 04 0f 85 ?? ?? ?? ?? 75 ?? 50 6a 07 6a 03 8b d1 6a 02 52 e8 } //1
		$a_01_3 = {8b 4e 10 8b 44 31 10 83 c4 0c a8 03 ba 00 00 00 00 0f 95 c2 83 e0 fc 83 c1 fc 8d 04 90 3b c1 } //3
		$a_23_4 = {b6 10 83 ea 90 01 01 83 fa 90 01 01 90 03 02 01 0f 85 75 90 00 01 } //1
		$a_8a_5 = {80 f2 90 01 01 80 fa 90 01 01 90 03 02 01 0f 85 75 90 00 01 00 15 23 8a 10 80 ea 90 01 01 80 fa 90 01 01 } //5376
		$a_01_6 = {0f 85 } //912
		$a_8a_8 = {80 f1 90 01 01 80 f9 90 01 01 90 03 02 01 0f 85 75 90 00 01 00 15 23 8a 10 80 c2 90 01 01 80 fa 90 01 01 } //5376
		$a_01_9 = {0f 85 } //912
		$a_8a_11 = {80 f2 90 01 01 80 ea 90 01 01 80 fa 90 01 01 90 03 02 01 0f 85 75 90 00 01 00 1a 23 8a 10 80 f2 90 01 01 } //6656
		$a_01_12 = {01 80 fa 90 01 01 90 03 02 01 0f 85 75 90 00 02 00 17 23 0f b6 50 01 83 ea 90 01 01 83 fa 90 01 01 90 03 02 01 0f 85 75 90 00 02 00 16 23 8a 50 01 80 f2 90 01 01 80 fa 90 01 01 90 03 02 01 0f 85 75 90 00 02 00 16 23 8a 50 01 80 c2 90 01 01 80 fa 90 01 01 90 03 02 01 0f 85 75 90 00 02 00 16 23 8a 48 01 80 e9 90 02 02 80 f9 90 01 01 90 03 02 01 0f 85 75 90 00 02 00 16 23 8a 50 01 80 ea 90 01 01 80 fa 90 01 01 90 03 02 01 0f 85 75 } //-15744
		$a_00_13 = {1b 23 } //144 ⌛
		$a_80_14 = {90 } //�  20618
		$a_ea_15 = {01 01 80 fa 90 01 01 90 03 02 01 0f 85 75 90 00 02 00 1b 23 8a 50 01 80 f2 90 01 01 80 c2 90 01 01 80 fa 90 01 01 90 03 02 01 0f 85 75 90 00 00 00 7e 15 00 00 3b 74 5c 4c 5b 67 3f 07 64 a0 71 ab a0 1c 30 9d 00 00 00 00 62 7e 15 00 00 8e f8 bb db 7b 7a a6 a2 89 b2 e6 34 86 d7 5a 13 00 00 00 00 62 80 10 00 00 ad 65 0a e4 8f db 13 3f fc b5 30 5a 00 10 00 80 87 10 00 00 66 c7 8d 2a 4c } //257
		$a_8f_16 = {46 12 4f 36 00 00 e7 2c 00 00 00 00 28 00 a3 c7 0f 93 ec 0f 0b bc e6 1a ac 1e fe 88 88 33 33 bf 8f c7 17 77 e3 0f 0f 93 ec 0f 0b bc e6 1a ac 1e fe 88 88 33 33 bf } //-2683
	condition:
		((#a_01_0  & 1)*3+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*3+(#a_23_4  & 1)*1+(#a_8a_5  & 1)*5376+(#a_01_6  & 1)*912+(#a_8a_8  & 1)*5376+(#a_01_9  & 1)*912+(#a_8a_11  & 1)*6656+(#a_01_12  & 1)*-15744+(#a_00_13  & 1)*144+(#a_80_14  & 1)*20618+(#a_ea_15  & 1)*257+(#a_8f_16  & 1)*-2683) >=4
 
}
rule Rogue_Win32_Trapwot_8{
	meta:
		description = "Rogue:Win32/Trapwot,SIGNATURE_TYPE_PEHSTR,05 00 05 00 06 00 00 "
		
	strings :
		$a_01_0 = {7b 41 31 34 45 46 33 46 46 2d 45 42 38 39 2d 34 46 46 38 2d 42 38 37 30 2d 46 30 35 38 43 31 41 42 46 43 34 35 7d } //2 {A14EF3FF-EB89-4FF8-B870-F058C1ABFC45}
		$a_01_1 = {2f 2f 65 3a 76 62 73 63 72 69 70 74 20 2f 2f 42 20 2f 2f 4e 4f 4c 4f 47 4f 20 22 41 56 20 4e 61 6d 65 22 20 22 7b 38 45 35 43 41 44 43 33 2d 32 43 34 31 2d 34 38 38 36 2d 42 32 31 31 2d 39 43 31 44 35 39 45 44 44 33 30 46 7d 22 } //2 //e:vbscript //B //NOLOGO "AV Name" "{8E5CADC3-2C41-4886-B211-9C1D59EDD30F}"
		$a_01_2 = {44 65 66 65 6e 64 65 72 20 50 52 4f 20 32 30 31 35 20 69 6e 73 74 61 6c 6c 61 74 69 6f 6e 20 53 65 74 75 70 } //1 Defender PRO 2015 installation Setup
		$a_01_3 = {44 65 66 65 6e 64 72 76 50 72 6f 2e 65 78 65 } //1 DefendrvPro.exe
		$a_01_4 = {4d 61 6c 77 61 72 65 20 44 65 66 65 6e 64 65 72 20 32 30 31 35 20 69 6e 73 74 61 6c 6c 61 74 69 6f 6e 20 53 65 74 75 70 } //1 Malware Defender 2015 installation Setup
		$a_01_5 = {4d 44 65 66 65 6e 64 65 72 2e 65 78 65 } //1 MDefender.exe
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=5
 
}