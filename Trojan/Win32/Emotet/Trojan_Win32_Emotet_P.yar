
rule Trojan_Win32_Emotet_P{
	meta:
		description = "Trojan:Win32/Emotet.P,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 02 00 00 0a 00 "
		
	strings :
		$a_03_0 = {7c 75 47 54 4a 76 46 7a 54 68 4d 53 55 6a 39 5a 66 2e 70 64 62 90 09 18 00 52 53 44 53 90 00 } //0a 00 
		$a_03_1 = {6b 6f 6c 73 64 65 33 32 2e 64 6c 6c 90 09 18 00 52 53 44 53 90 00 } //00 00 
		$a_00_2 = {78 4b 00 00 28 00 28 00 01 00 } //00 28 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Emotet_P_2{
	meta:
		description = "Trojan:Win32/Emotet.P,SIGNATURE_TYPE_PEHSTR_EXT,28 00 28 00 01 00 00 28 00 "
		
	strings :
		$a_03_0 = {54 89 e0 83 e8 10 31 c9 89 1d 90 01 04 01 d8 83 c8 01 83 c1 04 83 f8 00 74 24 8f 05 90 01 04 01 0d 90 01 04 8f 05 90 01 04 83 f9 00 0f 85 90 01 04 85 c0 74 05 b8 ff 00 00 00 90 00 } //00 00 
		$a_00_1 = {78 cb 00 00 02 00 02 00 02 00 00 01 00 6b 02 8b 44 24 2c 89 } //44 24 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Emotet_P_3{
	meta:
		description = "Trojan:Win32/Emotet.P,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_02_0 = {8b 44 24 2c 89 44 24 20 89 4c 24 1c 89 54 24 18 89 5c 24 14 89 7c 24 10 89 74 24 0c 8b 44 24 0c 8b 0c 85 90 01 04 8b 54 24 24 39 d1 89 44 24 08 89 4c 24 04 73 6d 8b 44 24 04 b9 3e 00 00 00 8b 54 24 14 81 e2 90 01 04 89 54 24 28 c7 44 24 2c 00 00 00 00 89 04 24 31 d2 f7 f1 8b 4c 24 1c 8b 34 24 8a 1c 31 8b 7c 24 24 90 00 } //01 00 
		$a_02_1 = {83 f7 ff 8a 7c 24 3b 80 c7 82 89 7c 24 34 8a 0c 15 90 01 04 00 fb 28 cb 8b 54 24 18 88 1c 32 83 c6 3e 8b 7c 24 24 39 fe 89 74 24 04 72 9d eb 08 8d 65 f4 5f 5b 5e 5d c3 8b 44 24 08 83 c0 01 83 f8 3e 89 44 24 0c 74 e8 e9 63 ff ff ff 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Emotet_P_4{
	meta:
		description = "Trojan:Win32/Emotet.P,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 1e 00 00 04 00 "
		
	strings :
		$a_03_0 = {ff d0 c7 84 24 88 00 00 00 00 01 00 00 8d 8c 24 90 01 01 00 00 00 8b 15 90 01 04 51 8b 4c 24 90 01 01 51 89 44 24 90 01 01 ff d2 90 00 } //03 00 
		$a_03_1 = {ff d0 8b 0d 90 01 04 50 89 44 24 90 01 01 ff d1 90 00 } //03 00 
		$a_03_2 = {40 04 00 00 00 c7 90 01 01 44 02 92 00 00 c7 90 01 01 48 00 d0 00 00 90 00 } //01 00 
		$a_00_3 = {54 45 51 55 49 4c 41 42 4f 4f 4d 42 4f 4f 4d } //01 00  TEQUILABOOMBOOM
		$a_00_4 = {43 3a 5c 53 79 6d 62 6f 6c 73 5c 61 61 67 6d 6d 63 2e 70 64 62 } //01 00  C:\Symbols\aagmmc.pdb
		$a_00_5 = {4b 4c 4f 4e 45 5f 58 36 34 2d 50 43 } //01 00  KLONE_X64-PC
		$a_00_6 = {43 3a 5c 74 61 6b 65 5f 73 63 72 65 65 6e 73 68 6f 74 2e 70 73 31 } //01 00  C:\take_screenshot.ps1
		$a_00_7 = {43 3a 5c 65 6d 61 69 6c 2e 64 6f 63 } //01 00  C:\email.doc
		$a_00_8 = {43 3a 5c 31 32 33 5c 65 6d 61 69 6c 2e 64 6f 63 } //01 00  C:\123\email.doc
		$a_00_9 = {43 3a 5c 61 5c 66 6f 6f 62 61 72 2e 62 6d 70 } //03 00  C:\a\foobar.bmp
		$a_03_10 = {8b 44 24 08 66 8b 08 8b 54 24 18 81 ca 90 01 04 8b 74 24 10 89 74 24 2c 89 54 24 28 66 81 f9 4d 5a 90 00 } //02 00 
		$a_03_11 = {d3 e2 89 54 24 54 8b 54 24 24 8b 74 24 14 89 72 54 89 42 58 8b 44 24 20 35 90 01 04 89 44 24 54 81 c6 90 01 02 00 00 89 74 24 18 eb 90 00 } //01 00 
		$a_01_12 = {01 f0 8b 00 8b 37 8b bc 24 84 00 00 00 33 01 01 df 89 e1 89 41 08 } //01 00 
		$a_03_13 = {8d 44 24 73 8b 4c 24 5c 81 f1 90 01 04 89 8c 24 b8 00 00 00 90 00 } //01 00 
		$a_01_14 = {8b 44 24 1c 89 44 24 38 8b 7c 24 24 83 c7 58 89 7c 24 20 39 c7 } //01 00 
		$a_03_15 = {8b 44 24 20 35 90 01 04 8b 4c 24 1c 8b 54 24 30 29 d1 0f 95 c3 8a 7c 24 1b 20 df 8b 74 24 28 89 74 24 4c 89 44 24 48 90 00 } //01 00 
		$a_03_16 = {89 44 24 2c 8b 44 24 2c 89 44 24 28 8b 44 24 20 8b 4c 24 24 35 90 01 04 09 c8 c7 44 24 2c 00 00 00 00 89 44 24 0c 74 db eb 00 90 00 } //02 00 
		$a_01_17 = {8b 44 24 34 89 e1 8d 54 24 64 89 51 0c 8d 54 24 58 89 51 04 8b 54 24 20 89 11 c7 41 08 00 00 00 00 ff d0 } //01 00 
		$a_03_18 = {8b 54 24 30 81 c2 90 01 04 8b 7c 24 2c 83 d7 00 89 7c 24 7c 89 54 24 78 90 00 } //03 00 
		$a_03_19 = {c6 44 24 77 61 8b 8c 24 c0 00 00 00 8b 54 24 44 8b 0c 8a 89 8c 24 c4 00 00 00 69 8c 24 d0 00 00 00 90 01 04 c7 44 24 68 00 00 00 00 c7 44 24 70 90 01 04 39 c8 74 a4 90 00 } //01 00 
		$a_01_20 = {75 02 eb 00 31 c0 8b 4c 24 14 c7 01 00 a2 00 00 } //03 00 
		$a_03_21 = {8a 08 8a 54 24 13 28 d1 8b 44 24 18 8b 74 24 1c bf 90 01 04 f7 e7 69 f6 90 01 04 01 f2 89 44 24 18 89 54 24 1c 8b 44 24 04 8b 54 24 0c 88 0c 10 90 00 } //01 00 
		$a_03_22 = {ff 75 08 53 ff 36 ff 15 90 01 04 89 46 04 85 c0 74 0c 33 c0 c7 46 0c 03 00 00 00 40 eb 0a ff 36 ff 15 90 00 } //03 00 
		$a_03_23 = {83 7d e0 27 0f 84 90 01 02 00 00 83 7d e0 28 0f 84 90 01 02 00 00 83 7d e0 29 0f 84 90 01 02 00 00 83 7d e0 2a 0f 84 90 01 02 00 00 83 7d e0 33 0f 84 90 01 02 00 00 83 7d e0 34 0f 84 90 01 02 00 00 83 7d e0 35 90 00 } //02 00 
		$a_01_24 = {74 3b 33 f6 8b 0b 8d 5b 04 33 4d 08 0f b6 c1 66 89 07 } //01 00 
		$a_01_25 = {f7 75 f8 8b d8 03 d6 f7 d3 eb 06 80 3a 2c 74 18 4a 3b d6 77 f6 } //02 00 
		$a_03_26 = {03 f7 81 fb 00 fa 00 00 73 08 ff 15 90 01 04 33 f0 83 c7 12 43 81 ff 00 00 00 90 90 72 e2 33 c0 81 fe 00 00 00 08 90 00 } //01 00 
		$a_03_27 = {74 16 8b cf 2b ce 8b 06 35 90 01 04 43 89 04 31 8d 76 04 3b da 72 ee 90 00 } //03 00 
		$a_01_28 = {75 ee 6a 2e 58 66 89 02 03 d1 6a 44 58 6a 4c } //02 00 
		$a_03_29 = {83 7e 0c 04 89 7d fc 0f 44 d8 39 4d 10 74 1d 8d 45 fc b9 90 01 04 50 68 90 01 04 6a 04 5a e8 90 01 02 ff ff 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}