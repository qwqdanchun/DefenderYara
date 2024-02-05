
rule PWS_Win32_Dyzap_F{
	meta:
		description = "PWS:Win32/Dyzap.F,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 13 00 00 01 00 "
		
	strings :
		$a_01_0 = {7e 0f 0f b6 16 8a 4c 14 38 88 0e 48 46 85 c0 7f f1 } //01 00 
		$a_01_1 = {c1 e9 10 25 00 00 ff ff 0b c1 33 d2 b9 19 00 00 00 f7 f1 8d 42 41 66 0f be d0 66 89 14 77 46 83 fe 0f } //01 00 
		$a_01_2 = {71 77 65 72 65 72 74 68 77 65 62 66 73 64 76 6a 61 66 2b } //01 00 
		$a_01_3 = {eb 0a 33 c9 c6 00 05 eb 05 0f 23 c0 eb f9 } //01 00 
		$a_01_4 = {6a 33 c1 e2 00 c1 cf 00 e8 00 00 00 00 83 04 24 09 87 ed 87 e4 cb } //01 00 
		$a_01_5 = {c6 02 da eb 05 0f 22 c0 eb f9 } //01 00 
		$a_01_6 = {eb 0b 33 d2 c6 02 da 90 eb 05 0f 22 c0 eb f9 } //01 00 
		$a_01_7 = {85 c0 74 10 ff 37 83 ef 08 c1 cf 00 c1 fe 00 83 e8 01 eb ec } //01 00 
		$a_01_8 = {8d 45 f4 99 52 50 6a 00 6a 00 8d 45 e4 99 52 8b 55 08 50 51 52 6a 04 56 57 } //01 00 
		$a_01_9 = {30 14 31 40 83 f8 08 72 02 33 c0 41 3b cf 72 } //01 00 
		$a_01_10 = {30 1c 30 41 83 f9 08 72 02 33 c9 40 3b c7 72 } //01 00 
		$a_03_11 = {68 b8 0b 00 00 ff d1 8b 86 90 01 04 8d 95 dc fc ff ff 52 c7 85 90 01 04 73 65 78 65 ff d0 8d 4c 00 02 90 00 } //01 00 
		$a_01_12 = {8b 8e d8 00 00 00 ff d1 5f b8 39 01 00 c0 } //01 00 
		$a_01_13 = {0f 22 c0 0f 30 bf 08 00 00 00 eb 04 0f 32 74 } //01 00 
		$a_03_14 = {5f 48 89 45 90 01 01 e8 00 00 00 00 c7 44 24 04 23 00 00 00 83 04 24 0d cb 90 00 } //01 00 
		$a_03_15 = {30 04 11 42 8b 46 90 01 01 3b d0 72 ef 90 00 } //01 00 
		$a_01_16 = {80 7a 02 64 75 10 80 7a 01 73 75 0a 80 3a 2e 75 05 8b 6a 0c 03 e8 47 83 c2 28 3b f9 7c ca } //01 00 
		$a_01_17 = {8b 86 d8 00 00 00 ff d0 b8 39 01 00 c0 5e } //01 00 
		$a_01_18 = {81 ff c8 00 00 00 7d 18 8b 8e 00 01 00 00 6a 64 ff d1 } //00 00 
	condition:
		any of ($a_*)
 
}