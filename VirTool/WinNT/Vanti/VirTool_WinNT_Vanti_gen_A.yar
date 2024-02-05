
rule VirTool_WinNT_Vanti_gen_A{
	meta:
		description = "VirTool:WinNT/Vanti.gen!A,SIGNATURE_TYPE_PEHSTR,1e 00 1b 00 13 00 00 0f 00 "
		
	strings :
		$a_01_0 = {51 53 8b 5d 0c 83 65 fc 00 56 8b 73 60 57 89 75 f8 8b 46 0c 2d 07 00 22 00 74 74 6a 04 59 2b c1 74 54 2b c1 74 43 2b c1 } //0c 00 
		$a_01_1 = {74 27 2b c1 0f 85 8a 00 00 00 b9 80 00 00 c0 0f 32 a9 00 08 00 00 74 07 c7 45 fc 01 00 00 00 8b 46 08 8b 4d fc 89 08 eb 6b } //08 00 
		$a_01_2 = {8b 4e 08 8b 7e 10 8b 73 3c 0f 20 c0 89 45 0c 25 ff ff fe ff 0f 22 c0 fa 8b c1 c1 e9 02 f3 a5 8b c8 83 e1 03 f3 a4 fb 8b 45 0c 0f 22 c0 32 d2 8b cb } //0c 00 
		$a_01_3 = {ec 08 04 00 00 56 57 b9 00 01 00 00 33 c0 8d bd f8 fb ff ff 6a 01 f3 ab 8b 7d 10 8d 45 f8 ff 77 08 50 } //0f 00 
		$a_01_4 = {85 c0 59 74 0f 80 3e 00 74 0a 8b 45 08 83 20 00 33 c0 eb 25 ff 75 30 ff 75 2c ff 75 28 ff 75 24 ff 75 20 ff 75 1c ff 75 18 ff 75 14 57 ff 75 0c ff 75 08 } //08 00 
		$a_01_5 = {8b 73 60 57 89 75 f4 8b 46 0c 2d 07 00 22 00 0f 84 e0 00 00 00 6a 04 59 2b c1 0f 84 } //06 00 
		$a_01_6 = {85 c0 74 45 33 ff 89 75 08 8b 06 85 c0 74 16 01 45 08 ff 75 08 e8 } //07 00 
		$a_01_7 = {74 07 03 3e 8b 75 08 eb e4 8b 06 85 db 74 0f 85 c0 74 06 03 c7 01 03 eb 14 } //0a 00 
		$a_01_8 = {83 23 00 eb 0f 85 c0 74 07 03 c7 01 45 0c eb 04 83 65 0c 00 8b 06 8b de 85 c0 74 04 03 f0 eb 02 33 f6 85 f6 75 9f 5f } //0a 00 
		$a_01_9 = {85 c0 74 97 0f b7 4e 44 8b d1 33 c0 8b fb c1 e9 02 f3 ab 8b ca 83 e1 03 f3 aa 66 c7 03 2e 00 e9 77 ff ff ff } //0f 00 
		$a_01_10 = {74 1b 0f b7 4e 3c 8b d1 33 c0 8b fb c1 e9 02 f3 ab 8b ca 83 e1 03 f3 aa 66 c7 03 2e 00 66 8b 46 44 66 3d 0c 00 77 ad 66 85 c0 74 a8 0f b7 c0 8b 5e 46 50 53 } //06 00 
		$a_01_11 = {8b 51 f8 3b d7 76 19 3b d3 73 15 8b 51 fc 3b d7 76 0e 3b d3 73 0a 8b 11 3b d7 76 04 3b d3 72 13 } //0a 00 
		$a_01_12 = {33 c0 eb 77 8b 5d 08 83 65 08 00 66 83 7e 02 00 8d 04 98 89 45 f8 76 e8 8b 45 fc 83 c0 08 89 45 10 eb 03 8b 45 10 8b 48 04 8b 00 83 e8 0c 03 cf c1 e8 02 50 ff 75 f8 51 } //08 00 
		$a_01_13 = {85 c0 75 12 0f b7 46 02 83 45 10 28 ff 45 08 39 45 08 72 d2 eb ad 8b 4d 0c c1 e3 04 2b c3 89 01 2b c7 0f b7 4e 02 51 50 ff 75 fc } //0f 00 
		$a_01_14 = {83 c9 ff 33 c0 8d 95 b0 fe ff ff f2 ae f7 d1 2b f9 68 44 64 6b 20 8b f7 8b fa 8b d1 83 c9 ff f2 ae 8b ca 4f c1 e9 02 f3 a5 8b ca 8d 95 b0 fe ff ff 83 e1 03 f3 a4 8d bd ac fd ff ff 83 c9 ff f2 ae f7 d1 2b f9 8b f7 8b fa 8b d1 83 c9 ff f2 ae 8b ca 4f c1 e9 02 f3 a5 8b ca 83 e1 03 f3 a4 be 00 40 00 00 56 50 } //0a 00 
		$a_01_15 = {85 c0 89 45 28 0f 8c d9 00 00 00 83 65 2c 00 33 c0 39 03 6a 60 8b f3 0f 94 c0 89 45 30 58 39 45 20 0f 86 bd 00 00 00 3b 45 20 0f 83 b4 00 00 00 bf 50 0b 01 00 66 8b 07 66 85 c0 74 29 0f b7 c0 50 8d 87 f8 fd ff ff 50 8d 46 5e 50 } //06 00 
		$a_01_16 = {89 75 2c 03 36 83 7d 30 00 75 73 33 c0 39 06 0f 94 c0 89 45 30 8b c6 2b c3 83 c0 60 eb a3 83 7d 30 00 75 47 0f b7 4e 3c 8d 56 5e } //0a 00 
		$a_01_17 = {8b d9 33 c0 8b fa c1 e9 02 c7 46 04 10 00 00 00 f3 ab 8b cb 83 e1 03 f3 aa 0f b7 4e 44 8b d9 8d 7e 46 33 c0 c1 e9 02 f3 ab 8b cb 8b 5d 1c 83 e1 03 f3 aa 66 c7 46 46 2e 00 66 c7 02 2e 00 eb a0 } //08 00 
		$a_01_18 = {8a 10 8a ca 3a 16 75 1a 3a cb 74 12 8a 50 01 8a ca 3a 56 01 75 0c 40 40 46 46 3a cb 75 e2 33 c0 eb 05 1b c0 83 d8 ff 3b c3 74 10 81 c7 06 01 00 00 81 ff 48 3a 01 00 7c b6 eb 07 } //00 00 
	condition:
		any of ($a_*)
 
}