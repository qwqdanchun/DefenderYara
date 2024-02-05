
rule Trojan_Win32_Lokibot_SIS_MTB{
	meta:
		description = "Trojan:Win32/Lokibot.SIS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 16 00 00 01 00 "
		
	strings :
		$a_02_0 = {8b 45 fc 8b 4d 08 0f b7 14 41 0f b6 8a 90 01 04 c1 e1 04 8b 55 fc 8b 45 08 0f b7 54 50 02 0f b6 82 90 01 04 0b c8 8b 45 fc 99 2b c2 d1 f8 88 4c 05 ec 90 00 } //01 00 
		$a_01_1 = {72 35 2c 36 36 36 51 36 fa 36 30 37 78 37 87 37 a6 37 } //01 00 
		$a_01_2 = {0f b6 45 ff 33 45 f8 88 45 ff 0f b6 45 ff 2d d8 00 00 00 88 45 ff } //01 00 
		$a_01_3 = {0f b6 45 ff c1 f8 06 0f b6 4d ff c1 e1 02 0b c1 88 45 ff } //01 00 
		$a_01_4 = {0f b6 7d db c1 e7 05 89 f1 09 f9 88 4d db 0f b6 75 db 89 f1 83 f1 36 88 4d db } //01 00 
		$a_01_5 = {0f b6 4d db 83 c1 2b 88 4d db 8b 75 dc 0f b6 7d db 89 f9 31 f1 88 4d db 8b 75 dc } //01 00 
		$a_01_6 = {0f b6 45 ff 33 45 f8 88 45 ff 0f b6 45 ff f7 d0 88 45 ff 0f b6 45 ff 83 e8 61 } //01 00 
		$a_01_7 = {83 7d 10 00 75 0c c7 45 fc 18 03 09 80 e9 7f 04 00 00 8b 4d 10 83 79 04 01 73 0c c7 45 fc 18 03 } //01 00 
		$a_01_8 = {89 45 e4 e8 f8 e5 ff ef 8b 4d f4 8d 15 08 c9 00 10 89 14 24 89 4c 24 04 89 44 24 08 8b 45 e4 89 } //01 00 
		$a_01_9 = {24 01 10 0f b6 3d f4 24 01 10 89 f9 29 f1 88 0d f4 24 01 10 8b 35 f0 24 01 10 0f b6 3d f4 } //01 00 
		$a_01_10 = {88 45 ff 0f b6 45 ff 33 45 f8 88 45 ff 0f b6 45 ff f7 d0 88 45 ff } //01 00 
		$a_01_11 = {29 f1 88 4d df 0f b6 75 df 89 f1 83 f1 6f 88 4d df 0f b6 75 df 89 f1 81 e9 ab } //01 00 
		$a_01_12 = {09 81 e9 49 54 53 46 0f 95 c3 0f b6 d3 83 fa 00 } //01 00 
		$a_01_13 = {83 c1 44 8b 55 0c 8b 75 08 89 34 24 89 54 24 04 } //01 00 
		$a_01_14 = {3e a6 c5 64 26 a8 df a2 4d 60 ca 24 db 29 da 9c a4 a5 e4 fc 55 eb a4 c0 7b 62 9c 5b 49 62 c2 d0 } //01 00 
		$a_01_15 = {e8 2b fb ff ff 83 c4 08 8b e5 5d c2 08 00 cc cc 55 8b ec 51 6a 20 e8 35 ea ff ff 83 c4 04 89 45 } //01 00 
		$a_01_16 = {89 45 fc 8b 4d 0c 51 8b 55 08 52 68 04 55 01 10 e8 8b ea ff ff 83 c4 0c 83 7d 0c 00 75 07 b8 03 } //01 00 
		$a_01_17 = {8b 40 1c 8b 4d ec 89 0c 24 8d 4d f0 89 4c 24 04 ff d0 83 ec 08 89 45 e4 8b 45 ec 8b 00 8b 40 08 } //01 00 
		$a_01_18 = {c4 04 89 45 fc 8b 4d 0c 51 8b 55 08 52 68 ec 55 01 10 e8 b9 e7 ff ff 83 c4 0c 83 7d 0c 00 75 07 } //01 00 
		$a_01_19 = {10 8d 43 04 6a 16 50 e8 91 f3 ff ff 83 c4 0c 85 c0 0f 85 9c 08 00 00 c6 43 03 06 33 c0 e9 47 08 } //01 00 
		$a_01_20 = {7c e2 ff ff 83 c4 08 50 68 c0 ba 02 10 e8 6e e2 ff ff 83 c4 08 8b 45 f8 83 c0 01 8b 4d 08 89 41 } //01 00 
		$a_01_21 = {8b 4d 0c 89 4d ec 8b 55 f8 3b 55 f0 73 19 8b 45 f8 8b 4d ec 0f b7 14 41 85 d2 74 0b 8b 45 f8 83 } //00 00 
	condition:
		any of ($a_*)
 
}