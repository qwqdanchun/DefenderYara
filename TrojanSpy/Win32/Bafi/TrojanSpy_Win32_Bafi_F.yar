
rule TrojanSpy_Win32_Bafi_F{
	meta:
		description = "TrojanSpy:Win32/Bafi.F,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 0a 00 00 0a 00 "
		
	strings :
		$a_03_0 = {0f b6 45 ff 02 98 90 01 04 40 25 0f 00 00 80 79 05 48 83 c8 f0 40 8b 90 01 01 88 45 ff 90 17 03 04 03 08 8a 44 39 02 8a 04 39 8b 45 08 8d 34 01 8a 06 32 c3 88 04 11 8a 90 17 03 03 02 01 5c 39 02 1c 39 1e 41 3b 4d f8 7c 90 00 } //0a 00 
		$a_03_1 = {81 e1 0f 00 00 80 79 05 49 83 c9 f0 41 90 03 18 18 8a 90 01 02 90 03 08 08 32 90 01 01 88 90 01 03 88 90 01 03 32 90 01 01 88 90 01 02 90 03 08 08 32 90 01 01 88 90 01 03 8a 90 01 03 32 90 01 01 8b 90 03 03 03 90 01 01 90 01 02 88 90 01 02 8a 90 17 03 03 03 03 90 01 03 90 01 04 90 01 05 3b 90 01 01 90 13 0f b6 90 03 03 03 90 01 02 90 01 03 02 90 00 } //01 00 
		$a_01_2 = {f1 f4 6d 2e 11 1f b2 b0 a2 75 e5 fc 51 09 2a 92 6c 6f f7 b8 98 a6 3a 38 74 47 0b 22 f0 a8 cd 35 9e a1 d3 94 a8 b6 3c 3a 28 fb 7d 94 6f 27 56 be } //01 00 
		$a_01_3 = {e0 e3 9c 5d e0 ee e1 df 71 44 16 2d a6 5e 75 dd 52 55 11 d2 7e 8c 44 42 4a 1d 5d 74 82 3a 5f c7 1f 22 52 13 29 37 bf bd ab 7e fe 15 e8 a0 e9 51 } //01 00 
		$a_01_4 = {f1 f4 6d 2e 11 1f b2 b0 a2 75 e5 fc 51 09 2a 92 1c 1f 47 08 48 56 8a 88 84 57 0d 24 ff b7 c0 28 bd c0 b4 75 de ec f1 ef 70 43 0a 21 fb b3 ce 36 } //01 00 
		$a_01_5 = {46 6b 1a 2d bc 38 9d 73 89 9e cd e9 63 1a 39 3d 68 8d f1 04 fd 79 4b 21 c9 de 95 b1 48 ff 95 99 c4 e9 de f1 e2 5e 6e 44 be d3 9a b6 49 00 92 96 } //01 00 
		$a_01_6 = {36 5b 0a 1d cc 48 8d 63 99 ae bd d9 73 2a 09 0d 38 5d 0a 1d dd 59 7e 54 b8 cd 8c a8 76 2d 42 46 7e a3 ce e1 1d 99 24 fa f3 08 43 5f aa 61 3f 43 } //01 00 
		$a_01_7 = {8d 90 c9 8a b5 c3 1e 1c 4e 21 31 48 8d 45 6e d6 a8 ab d2 93 af bd 10 0e 52 25 27 3e c3 7b 1c 84 1b 1e 4b 0c 22 30 b9 b7 aa 7d f5 0c 1e d6 b0 18 } //01 00 
		$a_01_8 = {9d a0 d9 9a a5 b3 2e 2c 3e 11 41 58 fd b5 9e 06 88 8b f2 b3 8f 9d 30 2e 32 05 47 5e a3 5b 3c a4 6b 6e 1b dc 72 80 49 47 1a ed 65 7c 8e 46 20 88 } //01 00 
		$a_01_9 = {9c 9f d8 99 a4 b2 2d 2b 3d 10 42 59 f2 aa 89 f1 be c1 bc 7d d1 df f2 f0 70 43 05 1c e5 9d f2 5a d4 d7 8c 4d e5 f3 f4 f2 67 3a 30 47 d3 8b e5 4d } //00 00 
	condition:
		any of ($a_*)
 
}