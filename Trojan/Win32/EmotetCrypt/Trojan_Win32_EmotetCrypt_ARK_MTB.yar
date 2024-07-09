
rule Trojan_Win32_EmotetCrypt_ARK_MTB{
	meta:
		description = "Trojan:Win32/EmotetCrypt.ARK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 03 00 00 "
		
	strings :
		$a_03_0 = {f7 f1 8b 2d ?? ?? ?? ?? 8b fa 0f b6 04 37 03 c3 33 d2 f7 f1 8a 0c 37 8b da 8a 04 33 88 0c 33 88 04 37 0f b6 14 33 } //1
		$a_03_1 = {8b 45 08 8b 4d f8 8b 15 ?? ?? ?? ?? 03 c1 0f b6 4d ff 8a 0c 11 30 08 ff 45 f8 8b 45 f8 3b 45 0c 7c } //1
		$a_03_2 = {0f b6 13 03 c2 99 b9 e3 03 00 00 f7 f9 a1 ?? ?? ?? ?? 45 0f b6 d2 8a 0c 02 30 4d ff 83 6c 24 14 01 75 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=1
 
}
rule Trojan_Win32_EmotetCrypt_ARK_MTB_2{
	meta:
		description = "Trojan:Win32/EmotetCrypt.ARK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 07 00 00 "
		
	strings :
		$a_01_0 = {8a 0c 02 8b 44 24 14 8b 74 24 1c 30 0c 30 40 3b 44 24 20 89 44 24 14 0f 8c } //1
		$a_01_1 = {8a 14 0a 03 c6 30 10 46 3b 75 0c 89 74 24 14 0f 8c } //1
		$a_03_2 = {8a 0c 11 30 08 ff 44 24 14 8b 44 24 14 3b 44 24 24 0f 8c ?? ?? ?? ?? 8b 44 24 28 8a 4c 24 12 8a 54 24 13 5f 5e 5d 5b 88 08 } //1
		$a_03_3 = {8b 4c 24 44 8b 44 24 4c 8b 15 ?? ?? ?? ?? 03 c1 0f b6 4c 24 41 8a 0c 11 30 08 83 c4 30 ff 44 24 14 8b 44 24 14 3b 44 24 20 0f 8c 3c ff ff ff } //1
		$a_01_4 = {0f b6 44 0b ff 03 d5 03 c2 99 bd f3 02 00 00 f7 fd 0f b6 ea 8a 54 0b ff 8d 04 2b 88 54 24 20 8a 10 88 54 0b ff 8a 54 24 20 88 10 8b 44 24 10 40 99 f7 fe 81 f9 f3 02 00 00 0f } //1
		$a_01_5 = {8a 14 11 8b 44 24 14 8b 4c 24 1c 30 14 08 8b 4c 24 20 40 3b c1 89 44 24 14 0f } //1
		$a_01_6 = {8a 0c 02 8b 44 24 20 8a 14 03 32 d1 88 14 03 8b 44 24 24 43 3b d8 0f } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=1
 
}
rule Trojan_Win32_EmotetCrypt_ARK_MTB_3{
	meta:
		description = "Trojan:Win32/EmotetCrypt.ARK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 2d 00 00 "
		
	strings :
		$a_03_0 = {8a 14 08 32 14 2e 8b 4c 24 2c 88 14 08 [0-1f] 72 } //1
		$a_01_1 = {8b 06 83 ee fc 83 e8 33 c1 c8 08 29 d8 83 e8 01 8d 18 c1 c3 09 d1 cb 6a 00 8f 02 01 02 } //1
		$a_01_2 = {81 e1 ff 00 00 00 03 c1 b9 7b 04 00 00 99 f7 f9 8a 03 83 c4 0c 8a 54 14 14 32 c2 88 03 43 4d } //1
		$a_03_3 = {0f b6 84 34 ?? ?? ?? ?? 0f b6 cb 03 c1 99 b9 ?? ?? ?? ?? f7 f9 83 c5 01 0f b6 94 14 90 1b 00 30 55 ff [0-4f] 0f 85 } //1
		$a_03_4 = {99 f7 f9 8a 03 [0-3f] 8a 94 14 ?? ?? ?? ?? 32 c2 88 03 90 0a 8f 00 8a 84 34 90 1b 01 81 e1 [0-04] 03 c1 b9 } //1
		$a_03_5 = {0f b6 84 34 ?? ?? ?? ?? 0f b6 cb 03 c1 99 b9 ?? ?? ?? ?? f7 f9 8d 4c 24 14 [0-05] c7 84 24 ?? ?? ?? ?? ff ff ff ff 0f b6 94 14 90 1b 00 30 55 ff } //1
		$a_03_6 = {33 d2 8a 94 0d ?? ?? ?? ?? 03 c2 99 f7 bd ?? ?? ?? ?? 8a 85 ?? ?? ?? ?? 32 84 15 90 1b 00 88 85 90 1b 02 8b 4d 10 03 8d ?? ?? ?? ?? 8a 95 90 1b 02 88 11 8b 85 90 1b 05 83 c0 01 89 85 90 1b 05 e9 } //1
		$a_03_7 = {0f b6 84 34 ?? ?? ?? ?? 0f b6 c9 03 c1 99 b9 ?? ?? ?? ?? f7 f9 8d 4c 24 18 8a 9c 14 90 1b 00 32 5d 00 [0-1f] 88 5d 00 } //1
		$a_03_8 = {33 d2 8a 54 04 [0-04] 8b c2 03 c1 b9 ?? ?? ?? ?? 99 f7 f9 8a 5c 14 90 1b 00 8b 54 24 1c 32 1a } //1
		$a_01_9 = {0f b6 01 0f b6 ca 03 c1 99 8b cb f7 f9 8b 4d e8 33 db 53 53 8a 44 15 00 32 01 } //1
		$a_01_10 = {08 0f b6 44 2c 2c 0f b6 c9 03 c1 99 8b cb f7 f9 8b 44 24 20 8a 5c 14 2c 8b 54 24 24 32 1c 02 } //1
		$a_03_11 = {8a 44 0c 34 b9 ?? ?? ?? ?? 03 c2 99 f7 f9 8a 4c 24 17 [0-05] 8a 54 14 34 32 ca } //1
		$a_01_12 = {03 c1 99 b9 57 2b 01 00 f7 f9 8a 5c 24 13 8b 44 24 14 8a 54 14 18 32 d3 88 55 00 } //1
		$a_01_13 = {8a 04 0e 81 e2 ff 00 00 00 03 c2 99 f7 fd 8a 04 0a 8b 54 24 18 32 04 1a } //1
		$a_03_14 = {81 e1 ff 00 00 00 [0-0f] 8a 84 14 ?? ?? ?? ?? 03 c1 b9 ?? ?? ?? ?? 99 f7 f9 8a 4c 24 13 8b 84 24 ?? ?? ?? ?? 8a 94 14 90 1b 01 32 ca } //1
		$a_01_15 = {0f b6 cb 03 c1 99 b9 57 2b 01 00 f7 f9 83 c5 01 0f b6 54 14 18 32 54 24 13 83 bc 24 84 2b 01 00 00 88 55 ff 75 92 } //1
		$a_03_16 = {8b 4c 24 1c 0f b6 44 0c [0-04] 0f b6 d3 03 c2 99 b9 4a 2f 01 00 f7 f9 8a 5c 24 1b 32 5c 14 90 1b 00 } //1
		$a_01_17 = {0f b6 44 04 28 0f b6 cb 03 c1 99 b9 4a 2f 01 00 f7 f9 8a 5c 24 17 32 5c 14 28 } //1
		$a_03_18 = {0f b6 44 0c [0-04] 0f b6 d3 03 c2 99 b9 ?? ?? ?? ?? f7 f9 8a 5c 24 1b 32 5c 14 90 1b 00 3b fe 0f } //1
		$a_01_19 = {32 14 01 83 c0 01 83 6c 24 14 01 88 50 ff 89 44 24 10 0f 85 24 ff ff ff } //1
		$a_03_20 = {41 8a 8c 0d 8c 00 00 00 8b 55 80 32 0c 3a 88 0f 47 [0-1f] 75 } //1
		$a_01_21 = {8a 54 14 14 8a 1c 0f 32 d3 88 11 41 4d 75 94 } //1
		$a_01_22 = {0f b6 00 0f b6 d2 03 c2 99 f7 fb 8a 04 0a 8b 55 0c 32 04 3a 88 07 } //1
		$a_03_23 = {8a 14 01 8b 4c 24 1c 32 54 0c 20 40 88 50 ff [0-1f] 0f } //1
		$a_03_24 = {8a 0c 02 8b 54 24 1c 32 4c 14 20 83 c0 01 [0-1f] 0f 85 } //1
		$a_03_25 = {8a 14 2e 32 c2 88 06 46 4b 75 a4 90 0a 4f 00 8a 44 3c ?? 81 [0-1f] f7 [0-0f] 8a 44 14 90 1b 01 } //1
		$a_01_26 = {0f b6 04 0f 0f b6 d2 03 c2 33 d2 f7 35 50 b1 49 00 8a 04 0a 32 04 2b 88 45 00 } //1
		$a_03_27 = {8b 00 8b ea 8b 54 24 1c 8a 14 10 32 14 2e 8b 6c 24 2c 88 14 28 [0-1f] 72 } //1
		$a_03_28 = {8a 04 17 8a 14 2e 32 c2 8b 54 24 2c 88 04 17 [0-0f] 40 [0-0f] 72 } //1
		$a_03_29 = {8a 14 01 8a 1d ?? ?? ?? ?? 2a d3 88 10 40 4e 75 } //1
		$a_01_30 = {0f b6 d2 03 c2 99 f7 fb 8a 1c 29 8a 44 14 14 32 c3 88 01 } //1
		$a_01_31 = {8b 00 8b fa 8b 54 24 1c 8a 14 10 32 14 37 88 14 18 } //1
		$a_03_32 = {0f b6 8c 15 ?? ?? ?? ?? 03 c1 b9 ?? ?? ?? ?? 99 f7 f9 8b 8d ?? ?? ?? ?? 0f b6 84 15 90 1b 00 32 44 1f ff ff 4d 0c 88 43 ff 75 } //1
		$a_03_33 = {8a 1c 06 2a 1d ?? ?? ?? ?? 2a d9 02 da 88 18 40 4f 75 ?? 5e 5b 5f c3 } //1
		$a_03_34 = {33 d2 f7 35 ?? ?? ?? ?? 8a 04 0a 8b 54 24 28 32 04 2a 45 88 45 ff 8b 44 24 [0-04] 48 89 44 24 90 1b 01 75 } //1
		$a_01_35 = {0f b6 00 0f b6 d2 03 c2 33 d2 f7 f1 8b 4d f8 8a 04 32 32 04 39 88 07 } //1
		$a_03_36 = {88 04 33 0f b6 09 0f b6 c0 03 c1 33 d2 f7 35 ?? ?? ?? ?? 8b 4d f4 8a 04 32 32 04 39 88 07 } //1
		$a_01_37 = {8a 14 33 8a 44 24 2c 8b 4c 24 20 02 d0 8b 44 24 28 32 14 01 88 10 } //1
		$a_01_38 = {8a 14 3a 02 d0 8b 44 24 24 32 14 01 40 89 44 24 24 88 50 ff } //1
		$a_01_39 = {0f b6 04 0a 8b 54 24 10 02 c3 32 44 32 ff ff 4c 24 14 88 46 ff 75 } //1
		$a_01_40 = {8a 04 0a 8b 54 24 14 32 04 2a 45 88 45 ff ff 4c 24 20 75 } //1
		$a_03_41 = {0f b6 0c 0a [0-0f] 33 d2 f7 35 34 60 41 00 [0-2f] 0f b6 09 33 c1 8b 4d 18 03 4d dc 88 01 } //1
		$a_03_42 = {8a 14 08 8b 44 24 18 30 14 28 [0-0f] 45 3b e8 0f 8c 70 } //1
		$a_01_43 = {8a 14 0a 03 c6 30 10 46 3b 75 0c 89 74 24 14 7c } //1
		$a_01_44 = {8a 14 02 8b 44 24 14 8b 4c 24 1c 30 14 08 40 3b 44 24 20 89 44 24 14 0f } //1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1+(#a_03_5  & 1)*1+(#a_03_6  & 1)*1+(#a_03_7  & 1)*1+(#a_03_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_03_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1+(#a_03_14  & 1)*1+(#a_01_15  & 1)*1+(#a_03_16  & 1)*1+(#a_01_17  & 1)*1+(#a_03_18  & 1)*1+(#a_01_19  & 1)*1+(#a_03_20  & 1)*1+(#a_01_21  & 1)*1+(#a_01_22  & 1)*1+(#a_03_23  & 1)*1+(#a_03_24  & 1)*1+(#a_03_25  & 1)*1+(#a_01_26  & 1)*1+(#a_03_27  & 1)*1+(#a_03_28  & 1)*1+(#a_03_29  & 1)*1+(#a_01_30  & 1)*1+(#a_01_31  & 1)*1+(#a_03_32  & 1)*1+(#a_03_33  & 1)*1+(#a_03_34  & 1)*1+(#a_01_35  & 1)*1+(#a_03_36  & 1)*1+(#a_01_37  & 1)*1+(#a_01_38  & 1)*1+(#a_01_39  & 1)*1+(#a_01_40  & 1)*1+(#a_03_41  & 1)*1+(#a_03_42  & 1)*1+(#a_01_43  & 1)*1+(#a_01_44  & 1)*1) >=1
 
}
rule Trojan_Win32_EmotetCrypt_ARK_MTB_4{
	meta:
		description = "Trojan:Win32/EmotetCrypt.ARK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 29 00 00 "
		
	strings :
		$a_03_0 = {f7 f7 8b fa 8a 94 3d ?? ?? ?? ?? 88 11 8d 84 3d 90 1b 00 88 18 8b 45 fc 40 3d ?? ?? ?? ?? 89 45 fc 72 90 0a 8f 00 8d 8c 05 90 1b 00 f7 75 0c [0-0a] 0f b6 14 02 0f b6 c3 03 fa 33 d2 03 c7 bf 90 1b 02 } //5
		$a_03_1 = {83 c2 01 89 95 ?? ?? ?? ?? 8b 85 90 1b 00 3b 85 ?? ?? ?? ?? 73 ?? eb 90 0a 6f 00 c7 85 90 1b 02 ?? ?? ?? ?? c7 85 90 1b 00 00 00 00 00 eb [0-05] 8b 85 90 1b 00 8a 8d 90 1b 00 88 8c 05 [0-05] 8b 95 90 1b 00 } //2
		$a_03_2 = {03 c2 99 f7 bd ?? ?? ?? ?? 8a 85 ?? ?? ?? ?? 32 84 15 ?? ?? ?? ?? 90 0a 4f 00 8a 94 0d 90 1b 02 } //3
		$a_01_3 = {69 72 6f 30 68 33 5a 75 49 41 23 6a 51 21 26 37 63 48 71 41 78 23 21 25 55 34 43 4b 67 65 6a 4b 67 72 7a 79 } //4 iro0h3ZuIA#jQ!&7cHqAx#!%U4CKgejKgrzy
		$a_01_4 = {43 5a 35 67 69 33 6a 48 } //1 CZ5gi3jH
		$a_01_5 = {77 52 4f 73 53 4d 39 76 6c 77 33 42 62 6c 43 4e 31 33 44 72 45 4c 71 54 33 47 50 50 45 64 51 6c 51 38 50 4d 61 42 } //4 wROsSM9vlw3BblCN13DrELqT3GPPEdQlQ8PMaB
		$a_01_6 = {37 53 44 53 69 53 36 48 44 30 39 50 74 72 75 4f 75 6e 69 30 70 32 77 36 77 57 38 76 79 43 76 37 58 69 7a } //4 7SDSiS6HD09PtruOuni0p2w6wW8vyCv7Xiz
		$a_01_7 = {53 69 34 72 50 67 58 42 57 69 39 58 58 66 44 5a 54 64 63 4e 34 71 63 4e 6e 78 62 68 4e 53 61 56 43 4a 6f 69 34 } //5 Si4rPgXBWi9XXfDZTdcN4qcNnxbhNSaVCJoi4
		$a_01_8 = {65 76 61 47 34 52 31 30 34 4e 55 59 62 76 62 32 75 33 36 61 67 41 50 72 35 31 72 48 57 75 67 6c 6a 30 5a 56 54 } //5 evaG4R104NUYbvb2u36agAPr51rHWuglj0ZVT
		$a_01_9 = {73 66 52 31 72 49 54 4f 79 52 34 33 4e 65 69 75 46 32 35 6a 6d 77 35 50 49 4e 34 66 54 4d 51 4c 56 51 4c 64 41 6b 62 } //5 sfR1rITOyR43NeiuF25jmw5PIN4fTMQLVQLdAkb
		$a_01_10 = {49 39 23 23 31 30 65 7b 68 7d 41 52 32 30 4e 32 7b 68 41 71 42 7d 58 24 68 74 59 56 6a 7e 73 71 7c 36 4c 37 44 48 64 78 7c 4d 6b 35 24 62 73 4c 24 54 68 4b 37 70 58 34 25 48 43 61 56 7c 6f 23 6c 5a 4c 56 6c 4e 7d 30 53 71 7e 7a 7b 58 7a } //5 I9##10e{h}AR20N2{hAqB}X$htYVj~sq|6L7DHdx|Mk5$bsL$ThK7pX4%HCaV|o#lZLVlN}0Sq~z{Xz
		$a_01_11 = {31 63 39 64 4c 4f 43 6b 7e 63 58 50 30 36 47 42 33 7a 48 6f 75 4f 4b 7d 79 46 7b 45 77 4c 69 6e 55 73 24 32 30 6d 6d 33 33 43 37 4a 64 6b 67 43 4d 46 6e 6d 77 6c 64 57 67 6f 71 57 50 50 65 6f 55 53 49 3f 7e 37 53 71 59 68 74 } //5 1c9dLOCk~cXP06GB3zHouOK}yF{EwLinUs$20mm33C7JdkgCMFnmwldWgoqWPPeoUSI?~7SqYht
		$a_01_12 = {6b 6e 59 35 6d 59 38 36 7e 62 7b 40 70 79 7d 46 59 4e 5a 57 4e 52 32 79 73 59 65 33 6e 70 65 2a 67 2a 41 58 30 35 70 4f 37 71 73 34 7e 4e 47 66 30 3f 42 34 3f 59 57 50 48 24 7d 79 70 7e 64 70 6a 53 } //5 knY5mY86~b{@py}FYNZWNR2ysYe3npe*g*AX05pO7qs4~NGf0?B4?YWPH$}yp~dpjS
		$a_01_13 = {45 4c 4e 55 25 43 46 71 4b 32 53 66 38 77 78 59 59 6a 58 62 7b 42 5a 55 74 42 64 76 7e 4f 75 54 4d 64 43 79 67 4b 58 69 34 30 59 50 4a 40 2a 41 6a 4e 2a 78 39 } //5 ELNU%CFqK2Sf8wxYYjXb{BZUtBdv~OuTMdCygKXi40YPJ@*AjN*x9
		$a_01_14 = {30 57 6d 66 4c 6a 4e 51 49 71 55 74 77 74 76 61 64 6c 78 4e 58 43 3f 79 7e 78 62 65 4b 7e 24 75 4c 6b 4f 51 61 25 3f 7e 57 6a 34 61 33 23 4c 75 } //5 0WmfLjNQIqUtwtvadlxNXC?y~xbeK~$uLkOQa%?~Wj4a3#Lu
		$a_01_15 = {64 6c 78 4e 58 43 3f 79 7e 78 62 65 4b 7e 24 75 4c 6b 4f 51 61 25 3f 7e 57 6a 34 61 33 23 4c 75 } //5 dlxNXC?y~xbeK~$uLkOQa%?~Wj4a3#Lu
		$a_01_16 = {54 6b 6c 51 36 5a 72 25 37 50 62 24 37 72 2a 30 72 48 70 55 68 41 65 78 6a 49 44 34 6a 34 51 43 32 6b 6a 49 46 7b 47 64 52 32 48 42 32 6c 38 4a 67 69 4d 4e 25 62 6d 35 34 6a 69 53 64 2a 55 24 4d 4f 77 4e 40 5a 72 6e 31 75 39 40 47 24 56 5a 4c 74 6b 65 68 75 75 } //5 TklQ6Zr%7Pb$7r*0rHpUhAexjID4j4QC2kjIF{GdR2HB2l8JgiMN%bm54jiSd*U$MOwN@Zrn1u9@G$VZLtkehuu
		$a_01_17 = {44 7d 59 24 7b 45 6c 50 44 71 67 56 35 38 25 62 4b 54 39 34 25 47 4a 50 4f 51 45 39 43 6e 41 75 68 53 7a 6e 63 48 70 46 76 75 66 44 34 25 6a 72 51 64 49 30 38 6f 30 41 74 36 69 24 4e 3f 61 4c 44 41 61 4e 24 } //5 D}Y${ElPDqgV58%bKT94%GJPOQE9CnAuhSzncHpFvufD4%jrQdI08o0At6i$N?aLDAaN$
		$a_01_18 = {39 7a 56 61 72 36 64 6b 70 44 7c 38 6d 52 46 63 25 58 2a 7a 5a 56 35 42 53 46 58 62 6d 4e 68 32 6b 23 41 50 71 75 50 70 2a 34 54 44 30 65 49 7b 4e 32 3f 51 36 69 23 3f 7d 31 53 43 77 6d 58 78 66 62 42 23 4e 34 48 36 6e 44 } //5 9zVar6dkpD|8mRFc%X*zZV5BSFXbmNh2k#APquPp*4TD0eI{N2?Q6i#?}1SCwmXxfbB#N4H6nD
		$a_01_19 = {35 24 25 7a 4d 78 7e 4b 53 4f 69 3f 67 7e 24 77 4c 68 43 79 37 4d 30 51 45 32 4d 61 51 2a 44 42 57 3f 72 39 44 6e 3f 75 25 4e 77 47 41 23 6d 53 68 37 6f 58 4d 53 7c 7c 25 2a 53 6b 54 79 23 67 7b 42 43 53 72 4d 78 3f 5a 71 7a 55 } //5 5$%zMx~KSOi?g~$wLhCy7M0QE2MaQ*DBW?r9Dn?u%NwGA#mSh7oXMS||%*SkTy#g{BCSrMx?ZqzU
		$a_01_20 = {4e 49 39 50 4a 36 62 66 50 59 7a 62 47 39 44 48 6c 70 4e 63 32 61 6a 76 59 49 54 55 48 73 66 64 46 50 30 49 6e 67 50 4e 57 71 31 79 74 61 34 45 41 4f 34 30 46 75 76 4a 33 } //5 NI9PJ6bfPYzbG9DHlpNc2ajvYITUHsfdFP0IngPNWq1yta4EAO40FuvJ3
		$a_01_21 = {75 79 66 68 68 72 74 37 38 75 65 67 68 73 64 6a 66 6b 67 61 64 68 66 6a 77 67 64 66 72 65 75 44 53 41 72 74 44 } //4 uyfhhrt78ueghsdjfkgadhfjwgdfreuDSArtD
		$a_01_22 = {6c 57 6e 6a 21 70 79 37 4e 55 41 26 6e 34 44 34 40 77 7a 62 6f 6e 40 6c 42 25 51 69 4d 6d 30 4a 41 6d 21 65 6e 4d } //5 lWnj!py7NUA&n4D4@wzbon@lB%QiMm0JAm!enM
		$a_01_23 = {6c 25 77 37 39 4d 5f 6e 2a 47 50 6a 75 5f 44 38 54 75 3e 4c 6f 72 76 6d 59 43 57 6b 70 59 68 78 36 5a 46 40 26 67 47 34 61 68 70 2a 2a 64 74 57 70 34 4d 51 43 55 56 6d 68 52 21 52 45 67 37 6d 75 77 24 78 6d 78 49 6d 29 6a 62 74 54 2b 62 63 47 62 72 6e 6e 6e 4f 2a 57 23 72 4f 56 37 4d 62 62 66 5e 76 46 } //5 l%w79M_n*GPju_D8Tu>LorvmYCWkpYhx6ZF@&gG4ahp**dtWp4MQCUVmhR!REg7muw$xmxIm)jbtT+bcGbrnnnO*W#rOV7Mbbf^vF
		$a_01_24 = {78 32 31 61 71 65 53 4e 41 51 56 49 6e 4b 5e 6a 38 41 48 54 26 46 46 6f 4e 6e 4c 6b 57 43 79 37 35 4b 59 78 72 2b 57 64 48 28 78 62 30 4f 26 43 50 29 31 24 61 48 5a 21 63 33 78 6a 6f 47 7a 28 47 35 52 69 65 47 26 71 77 39 4e 42 74 23 6b 34 40 3e 66 6b 38 77 48 4f 71 26 56 23 25 42 25 66 50 35 70 44 36 53 } //5 x21aqeSNAQVInK^j8AHT&FFoNnLkWCy75KYxr+WdH(xb0O&CP)1$aHZ!c3xjoGz(G5RieG&qw9NBt#k4@>fk8wHOq&V#%B%fP5pD6S
		$a_01_25 = {48 40 6f 7a 79 6f 67 71 39 68 32 57 50 61 35 6f 6f 38 33 62 3e 78 54 44 7a 48 74 45 55 61 72 72 56 73 54 36 43 26 41 32 33 56 44 24 56 2b 5a 42 74 72 52 50 38 49 75 64 26 75 52 75 34 4a 79 29 71 5f 62 76 61 30 49 2b 69 78 5a 75 28 65 72 34 55 2a 45 23 24 25 35 31 6d 75 73 52 39 64 65 26 39 4e 57 24 4e 44 5e 55 35 57 } //5 H@ozyogq9h2WPa5oo83b>xTDzHtEUarrVsT6C&A23VD$V+ZBtrRP8Iud&uRu4Jy)q_bva0I+ixZu(er4U*E#$%51musR9de&9NW$ND^U5W
		$a_01_26 = {53 2a 52 37 44 42 32 28 44 48 51 58 39 57 43 63 6a 47 58 3e 7a 6c 59 55 40 65 50 4b 44 4d 65 6e 32 66 28 71 4b 4f 5a 6e 5f 26 59 6f 40 76 3e 66 66 54 21 36 6d 24 55 71 40 30 36 5e 76 4e 63 39 68 35 66 55 4e 6e 73 79 68 49 78 6b 29 35 44 49 3e 26 5a 5a 3c 77 58 69 42 65 51 40 58 65 26 54 70 54 25 31 48 73 32 58 21 4a 4a 74 26 6a } //5 S*R7DB2(DHQX9WCcjGX>zlYU@ePKDMen2f(qKOZn_&Yo@v>ffT!6m$Uq@06^vNc9h5fUNnsyhIxk)5DI>&ZZ<wXiBeQ@Xe&TpT%1Hs2X!JJt&j
		$a_01_27 = {4b 4d 34 4c 53 31 48 3c 2a 56 72 32 57 63 70 73 62 36 44 3c 72 69 28 74 4c 6b 79 35 61 6b 79 58 67 57 79 49 24 36 } //4 KM4LS1H<*Vr2Wcpsb6D<ri(tLky5akyXgWyI$6
		$a_01_28 = {53 44 41 53 51 46 64 64 65 66 67 73 68 64 53 53 53 67 66 64 74 45 67 68 66 49 49 54 46 44 53 53 53 53 53 2b 33 45 45 } //1 SDASQFddefgshdSSSgfdtEghfIITFDSSSSS+3EE
		$a_01_29 = {36 72 42 48 70 6a 29 33 6a 77 4f 55 41 69 42 63 74 28 6c 34 5e 73 70 5f 38 48 62 2b 30 52 37 53 66 50 31 68 4d 5a 3e 75 46 73 77 4a 5a 68 } //5 6rBHpj)3jwOUAiBct(l4^sp_8Hb+0R7SfP1hMZ>uFswJZh
		$a_01_30 = {72 6f 7a 4c 70 69 71 3e 58 65 73 36 67 4a 40 32 70 35 70 34 70 52 21 65 41 63 7a 39 74 2a 53 72 54 3e 67 39 70 4e 44 61 6a 5e 52 } //5 rozLpiq>Xes6gJ@2p5p4pR!eAcz9t*SrT>g9pNDaj^R
		$a_01_31 = {30 41 5a 6b 76 70 52 67 3f 24 31 71 47 65 65 2b 56 28 49 79 54 35 2b 28 42 58 74 57 73 4b 35 54 28 43 4d 77 42 6e 37 54 48 34 6e 34 39 75 3e 51 50 76 74 48 58 46 52 39 57 30 23 53 79 54 33 61 29 61 78 7a 3f 2a 3e 41 37 69 70 49 6f 4a 69 25 6a 42 51 67 76 68 70 2a 40 36 6b 39 70 68 61 49 5f 3e 55 31 51 32 35 68 4a 4b 43 58 2b 49 58 62 6f 40 } //5 0AZkvpRg?$1qGee+V(IyT5+(BXtWsK5T(CMwBn7TH4n49u>QPvtHXFR9W0#SyT3a)axz?*>A7ipIoJi%jBQgvhp*@6k9phaI_>U1Q25hJKCX+IXbo@
		$a_01_32 = {35 6d 33 74 53 65 24 3e 77 79 5f 4c 28 6b 3f 32 41 43 7a 71 5a 62 35 51 65 28 54 2a 53 75 70 4a 48 33 4c 25 40 44 71 59 70 4f 40 26 48 57 34 31 6d 5a 3c 3f 58 4e 3e 50 3e 73 77 4b 76 32 75 53 25 55 69 63 79 73 45 52 70 58 77 4d } //5 5m3tSe$>wy_L(k?2ACzqZb5Qe(T*SupJH3L%@DqYpO@&HW41mZ<?XN>P>swKv2uS%UicysERpXwM
		$a_01_33 = {39 3c 73 30 52 79 69 54 4e 23 34 5f 6e 57 35 77 4a 6b 52 74 40 42 47 32 3f 23 76 67 29 21 5a 45 42 72 48 53 23 6a 3f 6a 34 69 49 78 54 53 3c 51 4c 34 29 3c } //5 9<s0RyiTN#4_nW5wJkRt@BG2?#vg)!ZEBrHS#j?j4iIxTS<QL4)<
		$a_01_34 = {76 30 54 66 23 21 45 61 6e 71 4d 75 4d 30 34 34 74 36 73 67 68 61 6f 77 56 35 76 30 26 40 4f 4c 43 59 2b 73 65 4f 68 37 6d 65 4a 45 33 65 57 6a 50 52 41 6a 2b 46 7a 4a 41 2b 6a 33 2b 4e 26 52 4b 2a 23 66 30 6d 76 68 6c 6a 6d 28 } //5 v0Tf#!EanqMuM044t6sghaowV5v0&@OLCY+seOh7meJE3eWjPRAj+FzJA+j3+N&RK*#f0mvhljm(
		$a_01_35 = {2a 52 71 44 47 30 33 61 5a 40 21 36 58 44 6f 63 6c 3c 5a 21 39 4a 58 47 5f 2b 3c 76 24 37 5e 56 76 79 4c 29 71 78 65 59 70 47 75 41 73 70 75 3f 4f 29 3c 6b 23 6c 61 44 43 30 74 29 55 45 74 57 36 39 5f 4e 23 3f 52 59 48 4c 2a 79 61 6a 35 4d 24 3c 31 54 29 3f 46 59 54 52 36 62 28 2a 5e 59 41 6c 4f 51 75 64 41 4e 73 } //5 *RqDG03aZ@!6XDocl<Z!9JXG_+<v$7^VvyL)qxeYpGuAspu?O)<k#laDC0t)UEtW69_N#?RYHL*yaj5M$<1T)?FYTR6b(*^YAlOQudANs
		$a_01_36 = {46 24 21 77 4a 58 35 5f 72 71 3c 54 28 51 73 4a 4f 2b 78 65 42 39 4b 41 33 59 46 43 5f 45 72 66 49 6a 76 73 5a } //5 F$!wJX5_rq<T(QsJO+xeB9KA3YFC_ErfIjvsZ
		$a_01_37 = {52 57 55 75 57 35 67 53 40 68 66 77 4b 29 79 62 31 6d 67 43 59 42 5a 55 26 6e 52 49 57 54 41 69 7a 6e 70 2a 23 26 59 3f 54 6a 4a 68 3f 7a 79 52 55 4a 67 54 76 23 5e 49 3c 5f 24 78 66 51 29 73 4e } //5 RWUuW5gS@hfwK)yb1mgCYBZU&nRIWTAiznp*#&Y?TjJh?zyRUJgTv#^I<_$xfQ)sN
		$a_01_38 = {21 6d 54 51 37 67 21 74 3f 7a 74 67 4b 72 4b 4b 24 25 3e 48 59 46 4e 30 66 58 5f 78 5e 64 71 26 32 71 59 55 4a 3c 28 71 76 6b 24 75 2b 30 38 55 49 37 30 47 59 62 74 3f 67 73 6f 2a 4d 70 6c 71 4d 68 41 35 54 57 64 76 2a 74 74 2b 35 72 } //5 !mTQ7g!t?ztgKrKK$%>HYFN0fX_x^dq&2qYUJ<(qvk$u+08UI70GYbt?gso*MplqMhA5TWdv*tt+5r
		$a_01_39 = {64 4c 40 3f 52 29 24 52 77 3e 4d 5e 36 33 71 4a 32 6c 4d 50 34 32 59 4c 65 34 32 6e 59 6a 56 61 68 6d 4a 63 52 39 4d 43 79 59 5f 46 26 4f 73 7a 26 48 26 5e 67 68 51 2a 3e 38 6d 47 } //5 dL@?R)$Rw>M^63qJ2lMP42YLe42nYjVahmJcR9MCyY_F&Osz&H&^ghQ*>8mG
		$a_01_40 = {2a 46 4c 72 59 34 62 4f 25 34 54 68 24 4a 38 47 74 30 7a 2a 7a 4b 69 42 29 59 62 23 6d 47 4e 79 73 55 6a 3c 3e 67 49 30 4a 3e 78 78 6e 50 4e 58 54 72 65 40 3c 49 38 62 4a 77 31 4d 6a 4c 36 71 38 73 47 37 72 79 39 5e 43 6b 29 72 29 36 44 61 2b 6f 6c 39 40 4b } //5 *FLrY4bO%4Th$J8Gt0z*zKiB)Yb#mGNysUj<>gI0J>xxnPNXTre@<I8bJw1MjL6q8sG7ry9^Ck)r)6Da+ol9@K
	condition:
		((#a_03_0  & 1)*5+(#a_03_1  & 1)*2+(#a_03_2  & 1)*3+(#a_01_3  & 1)*4+(#a_01_4  & 1)*1+(#a_01_5  & 1)*4+(#a_01_6  & 1)*4+(#a_01_7  & 1)*5+(#a_01_8  & 1)*5+(#a_01_9  & 1)*5+(#a_01_10  & 1)*5+(#a_01_11  & 1)*5+(#a_01_12  & 1)*5+(#a_01_13  & 1)*5+(#a_01_14  & 1)*5+(#a_01_15  & 1)*5+(#a_01_16  & 1)*5+(#a_01_17  & 1)*5+(#a_01_18  & 1)*5+(#a_01_19  & 1)*5+(#a_01_20  & 1)*5+(#a_01_21  & 1)*4+(#a_01_22  & 1)*5+(#a_01_23  & 1)*5+(#a_01_24  & 1)*5+(#a_01_25  & 1)*5+(#a_01_26  & 1)*5+(#a_01_27  & 1)*4+(#a_01_28  & 1)*1+(#a_01_29  & 1)*5+(#a_01_30  & 1)*5+(#a_01_31  & 1)*5+(#a_01_32  & 1)*5+(#a_01_33  & 1)*5+(#a_01_34  & 1)*5+(#a_01_35  & 1)*5+(#a_01_36  & 1)*5+(#a_01_37  & 1)*5+(#a_01_38  & 1)*5+(#a_01_39  & 1)*5+(#a_01_40  & 1)*5) >=5
 
}