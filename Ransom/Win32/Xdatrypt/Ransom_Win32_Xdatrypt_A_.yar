
rule Ransom_Win32_Xdatrypt_A_{
	meta:
		description = "Ransom:Win32/Xdatrypt.A!!Xdatrypt.gen!rsm,SIGNATURE_TYPE_ARHSTR_EXT,08 00 08 00 16 00 00 "
		
	strings :
		$a_80_0 = {45 6e 63 72 79 70 74 69 6f 6e 20 77 61 73 20 70 72 6f 64 75 73 65 64 20 75 73 69 6e 67 20 75 6e 69 71 75 65 20 70 75 62 6c 69 63 20 6b 65 79 20 66 6f 72 20 74 68 69 73 20 63 6f 6d 70 75 74 65 72 } //Encryption was prodused using unique public key for this computer  1
		$a_80_1 = {54 6f 20 72 65 74 72 69 65 76 65 20 74 68 65 20 70 72 69 76 61 74 65 20 6b 65 79 20 61 6e 64 20 74 6f 6f 6c 20 66 69 6e 64 20 79 6f 75 72 20 70 63 20 6b 65 79 20 66 69 6c 65 20 77 69 74 68 20 27 2e 6b 65 79 2e 7e 78 64 61 74 61 7e 27 20 65 78 74 65 6e 73 69 6f 6e } //To retrieve the private key and tool find your pc key file with '.key.~xdata~' extension  1
		$a_80_2 = {44 6f 20 6e 6f 74 20 77 6f 72 72 79 20 69 66 20 79 6f 75 20 64 69 64 20 6e 6f 74 20 66 69 6e 64 20 6b 65 79 20 66 69 6c 65 2c 20 61 6e 79 77 61 79 20 63 6f 6e 74 61 63 74 20 66 6f 72 20 73 75 70 70 6f 72 74 } //Do not worry if you did not find key file, anyway contact for support  1
		$a_80_3 = {28 65 67 2e 20 27 43 3a 2f 50 43 2d 54 54 54 35 34 4d 23 34 35 43 44 2e 6b 65 79 2e 7e 78 64 61 74 61 7e 27 29 } //(eg. 'C:/PC-TTT54M#45CD.key.~xdata~')  1
		$a_80_4 = {7b 62 62 31 39 38 38 37 35 2d 62 30 34 39 2d 34 63 35 33 2d 61 37 61 38 2d 66 63 32 62 34 30 30 63 63 30 36 64 7d } //{bb198875-b049-4c53-a7a8-fc2b400cc06d}  1
		$a_80_5 = {7b 31 34 46 35 33 41 36 45 2d 36 33 39 39 2d 46 46 41 34 2d 41 35 37 37 2d 41 37 46 34 41 31 33 37 36 39 36 33 7d } //{14F53A6E-6399-FFA4-A577-A7F4A1376963}  1
		$a_80_6 = {00 25 75 2e 25 75 2e 25 75 2e 25 75 00 } //  1
		$a_03_7 = {0f 44 d9 8b 08 8b 40 04 89 08 89 41 04 a1 ?? ?? ?? ?? 33 05 ?? ?? ?? ?? ff d0 } //1
		$a_03_8 = {8d 4d e8 33 05 ?? ?? ?? ?? 6a ff 6a 00 51 6a 02 ff d0 } //1
		$a_01_9 = {ff d0 89 45 08 3d b8 04 00 00 75 55 68 00 01 00 00 } //1
		$a_03_10 = {ff d0 8b 3d ?? ?? ?? ?? 8b 4c 24 0c 8b d3 e8 ?? ?? ff ff be 03 00 00 00 e8 ?? ?? ff ff 68 b8 0b 00 00 ff d7 83 ee 01 75 ef a1 ?? ?? ?? ?? 33 05 ?? ?? ?? ?? 68 c0 d4 01 00 ff d0 eb cb } //2
		$a_03_11 = {ff d0 3d 33 27 00 00 74 1b a1 ?? ?? ?? ?? 33 05 ?? ?? ?? ?? 56 ff d0 } //1
		$a_01_12 = {81 3a 69 6e 65 49 75 0c 8d 54 24 10 81 3a 6e 74 65 6c 74 02 } //1
		$a_01_13 = {81 3a 65 6e 74 69 75 0c 8d 54 24 10 81 3a 63 41 4d 44 74 02 } //1
		$a_03_14 = {5d 1e ee c7 44 24 ?? ff ff ff ff ff d0 8b 7c 24 ?? 6a 0a ff 15 } //2
		$a_03_15 = {6a 08 56 ff 73 ?? ff d0 ff 75 ?? 85 c0 a1 ?? ?? ?? ?? 75 ?? 33 05 ?? ?? ?? ?? ff d0 } //1
		$a_03_16 = {50 c7 44 24 ?? 00 00 00 00 66 c7 44 24 ?? 00 00 c7 44 24 ?? 02 00 00 8b ff d1 } //1
		$a_03_17 = {25 00 00 fe a9 89 5d f0 3d 00 00 fe a9 0f 84 ?? ?? 00 00 85 f6 0f 84 } //1
		$a_03_18 = {ff d0 56 66 83 7c 46 fe 5c a1 ?? ?? ?? ?? 75 ?? 33 05 ?? ?? ?? ?? ff d0 } //1
		$a_03_19 = {0f b6 0e 8d 76 01 33 c8 c1 e8 08 0f b6 c9 33 04 8d ?? ?? ?? ?? 83 ea 01 75 } //1
		$a_01_20 = {6a 01 6a 00 ba 2d 2e 10 9b 8b c8 } //1
		$a_03_21 = {74 09 56 e8 ?? ?? ff ff 83 c4 04 81 75 fc 45 36 27 18 8d 45 fc } //1
	condition:
		((#a_80_0  & 1)*1+(#a_80_1  & 1)*1+(#a_80_2  & 1)*1+(#a_80_3  & 1)*1+(#a_80_4  & 1)*1+(#a_80_5  & 1)*1+(#a_80_6  & 1)*1+(#a_03_7  & 1)*1+(#a_03_8  & 1)*1+(#a_01_9  & 1)*1+(#a_03_10  & 1)*2+(#a_03_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1+(#a_03_14  & 1)*2+(#a_03_15  & 1)*1+(#a_03_16  & 1)*1+(#a_03_17  & 1)*1+(#a_03_18  & 1)*1+(#a_03_19  & 1)*1+(#a_01_20  & 1)*1+(#a_03_21  & 1)*1) >=8
 
}