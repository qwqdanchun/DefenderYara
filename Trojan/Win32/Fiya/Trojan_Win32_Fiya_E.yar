
rule Trojan_Win32_Fiya_E{
	meta:
		description = "Trojan:Win32/Fiya.E,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 11 00 00 01 00 "
		
	strings :
		$a_03_0 = {8b d0 83 e2 01 8a 92 90 01 04 30 14 08 40 3b 45 08 72 ec 90 00 } //01 00 
		$a_01_1 = {70 61 73 73 3d 65 72 61 69 6a 6f 6b 6c 34 38 39 69 6f 68 6a 34 6b 72 64 73 } //01 00 
		$a_03_2 = {74 47 bf ff 00 00 00 e8 90 01 04 99 f7 ff ff b5 4c fc ff ff 30 95 ef fc ff ff 90 00 } //01 00 
		$a_01_3 = {6e 6f 74 69 66 69 63 61 74 65 2e 70 68 70 } //01 00 
		$a_03_4 = {8b c8 83 e1 01 8a 91 90 01 04 30 94 90 01 03 ff ff 40 3b 90 01 01 72 e9 90 00 } //01 00 
		$a_03_5 = {8d 74 18 04 83 c4 04 85 f6 74 18 8d 4d fc 51 6a 40 68 14 04 00 00 53 ff 15 90 01 04 8b 55 08 52 ff d6 90 00 } //01 00 
		$a_03_6 = {80 38 4b 57 8d 78 01 0f 85 90 01 04 80 3f 4b 0f 85 90 01 04 8b 47 01 8a 4f 05 90 00 } //01 00 
		$a_01_7 = {99 b9 ff 00 00 00 f7 f9 ff 74 24 18 30 54 24 5f 8d 44 24 5f } //01 00 
		$a_03_8 = {8a 01 30 02 41 8b c1 2d 90 01 04 3b c6 76 05 b9 90 01 04 47 42 3b fb 72 e5 90 00 } //01 00 
		$a_03_9 = {8b 47 3c 8b 4c 38 78 8b 44 39 20 8b 54 39 18 03 cf 03 c7 89 45 90 01 01 8b 41 24 03 c7 90 00 } //01 00 
		$a_03_10 = {73 2f 8b 4d 90 01 01 0f be 11 8b 45 90 01 01 0f be 08 33 ca 8b 55 90 01 01 88 0a 8b 45 90 01 01 83 c0 01 90 00 } //01 00 
		$a_03_11 = {8b 48 28 89 4d 90 01 01 8b 45 90 01 01 03 45 90 01 01 6a 00 6a 01 ff 75 90 01 01 ff d0 90 00 } //01 00 
		$a_03_12 = {8a 19 30 1a 41 8b d9 2b df 3b 5d 90 01 01 76 02 8b cf 40 42 3b c6 72 ea 90 00 } //01 00 
		$a_03_13 = {6a 04 8d 85 90 01 02 ff ff 50 53 c7 85 90 01 02 ff ff b3 15 cf a1 90 00 } //01 00 
		$a_03_14 = {c6 02 01 8d 5c 1e 90 01 01 8b c6 3b f3 73 2d 33 f6 80 38 90 01 01 75 17 90 00 } //01 00 
		$a_01_15 = {81 3e b3 15 cf a1 74 0b 4a 4e 83 fa 04 77 f1 } //01 00 
		$a_03_16 = {8a 18 30 19 40 8b d8 2b de 3b 5d 90 01 01 76 02 8b c6 47 41 3b fa 72 ea 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}