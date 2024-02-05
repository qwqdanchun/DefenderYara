
rule VirTool_Win32_Obfuscator_AIG{
	meta:
		description = "VirTool:Win32/Obfuscator.AIG,SIGNATURE_TYPE_PEHSTR_EXT,64 00 0a 00 14 00 00 0a 00 "
		
	strings :
		$a_01_0 = {90 90 90 38 9c 05 3c f4 ff ff 75 27 8a 94 05 3d f4 ff ff b1 d8 3a d1 75 1a 8a 94 05 3e f4 ff ff b1 54 3a d1 75 0d 8a 94 05 3f f4 ff ff b1 55 3a d1 74 0a 40 } //0a 00 
		$a_01_1 = {90 90 90 38 1c 30 75 1e 8a 54 30 01 b1 d8 3a d1 75 14 8a 54 30 02 b1 54 3a d1 75 0a 8a 54 30 03 b1 55 3a d1 74 0a 40 } //0a 00 
		$a_01_2 = {90 90 90 38 0c 30 75 18 b2 d8 38 54 30 01 75 10 b2 54 38 54 30 02 75 08 b2 55 38 54 30 03 74 07 40 3b c3 } //0a 00 
		$a_03_3 = {c6 85 e0 fd ff ff 45 c6 85 e1 fd ff ff d8 c6 85 e2 fd ff ff 54 c6 85 e3 fd ff ff 55 90 02 0f 33 c0 89 85 e5 fd ff ff 88 85 e9 fd ff ff 90 00 } //0a 00 
		$a_01_4 = {90 33 c0 8d 7d f5 c6 45 f0 45 c6 45 f1 d8 c6 45 f2 54 c6 45 f3 55 ab aa 90 90 } //0a 00 
		$a_01_5 = {90 c6 45 f0 45 c6 45 f1 d8 c6 45 f2 54 c6 45 f3 55 c6 45 f4 00 33 c0 } //0a 00 
		$a_01_6 = {38 0c 30 75 18 b2 d8 38 54 30 01 75 10 b2 54 38 54 30 02 75 08 b2 55 38 54 30 03 } //0a 00 
		$a_03_7 = {33 c0 8d 7d dd c6 45 d8 a6 c6 45 da 34 c6 45 dc d1 33 f6 ab aa 8b 3d 90 01 02 40 00 89 75 d4 3b fb 0f 86 90 01 02 00 00 a1 90 01 02 40 00 8a 0c 30 3a 4d d8 75 12 8a 4c 30 02 3a 4d da 75 09 90 00 } //0a 00 
		$a_01_8 = {90 90 90 90 33 c0 8d 7d d9 ab 33 f6 39 1d c8 50 40 00 aa 89 75 e0 0f 86 2b 01 00 00 a1 cc 50 40 00 0f b6 0c 30 0f b6 54 30 02 8d 79 01 3b d7 75 24 0f b6 54 30 04 8d 79 02 3b d7 75 18 0f b6 54 30 06 8d 79 03 3b d7 75 0c 0f b6 54 30 08 83 c1 04 3b d1 74 11 } //0a 00 
		$a_01_9 = {33 d2 8a 14 01 8b f2 33 d2 8a 54 01 02 8d 7e 01 3b d7 75 27 33 d2 8d 7e 02 8a 54 01 04 3b d7 75 1a 33 d2 8d 7e 03 8a 54 01 06 3b d7 75 0d 33 d2 83 c6 04 8a 54 01 08 3b d6 74 0d 8b 15 a8 50 40 00 40 3b c2 } //0a 00 
		$a_03_10 = {40 00 33 c9 8a 0d 90 01 02 40 00 33 c1 8b 15 90 01 02 40 00 86 82 90 01 02 40 00 81 3d 90 01 02 40 00 56 08 00 00 7d 1c a1 90 01 02 40 00 83 c0 01 a3 90 01 02 40 00 6a 01 e8 90 01 02 ff ff 83 c4 04 e9 0f 02 00 00 b9 90 01 01 e4 40 00 ff d1 90 00 } //0a 00 
		$a_03_11 = {a1 68 60 40 00 b9 90 01 01 02 00 00 03 c6 8d bd 90 01 02 ff ff 8d 70 0a f3 a5 66 a5 8b f0 8d 7d 90 01 01 a5 a5 66 a5 33 c0 8a 4d 90 01 01 30 8c 90 01 03 ff ff 40 3d 90 01 01 09 00 00 7c 90 01 01 8d 85 90 01 02 ff ff ff d0 90 00 } //0a 00 
		$a_03_12 = {61 40 00 50 e8 90 01 01 fd ff ff 59 8b 0d 90 01 01 61 40 00 81 f9 90 01 01 08 00 00 88 81 90 01 01 61 40 00 7d 14 41 6a 01 89 0d 90 01 01 61 40 00 e8 90 01 01 fd ff ff 59 e9 90 01 02 00 00 b8 90 01 01 61 40 00 ff d0 c6 45 90 01 02 c6 45 90 01 02 c6 45 90 00 } //05 00 
		$a_01_13 = {90 90 90 0f be c0 74 1f c7 45 fc 00 00 eb 13 c7 46 10 00 00 03 c2 eb 02 75 17 f6 c4 44 } //05 00 
		$a_01_14 = {38 0c 30 75 16 38 54 30 01 75 10 b3 65 38 5c 30 02 75 08 b3 54 38 5c 30 03 74 07 } //04 00 
		$a_01_15 = {45 d8 54 55 } //05 00 
		$a_01_16 = {00 00 00 00 00 4a 65 22 d5 } //01 00 
		$a_01_17 = {90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 eb } //01 00 
		$a_01_18 = {90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 e8 } //01 00 
		$a_01_19 = {90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 e9 } //00 00 
	condition:
		any of ($a_*)
 
}