
rule Ransom_Win32_Natasa_A_{
	meta:
		description = "Ransom:Win32/Natasa.A!!Natasa.gen!A,SIGNATURE_TYPE_ARHSTR_EXT,06 00 06 00 16 00 00 01 00 "
		
	strings :
		$a_80_0 = {73 61 74 61 6e 61 } //satana  02 00 
		$a_80_1 = {74 68 72 65 61 64 41 64 6d 69 6e 46 6c 6f 6f 64 3a 20 25 73 20 25 73 20 25 73 } //threadAdminFlood: %s %s %s  01 00 
		$a_80_2 = {25 73 5c 56 53 53 41 44 4d 49 4e 2e 45 58 45 } //%s\VSSADMIN.EXE  01 00 
		$a_00_3 = {64 77 53 7a 42 54 43 } //01 00 
		$a_00_4 = {64 77 53 7a 4d 61 69 6c } //01 00 
		$a_00_5 = {64 77 4d 61 69 6c 53 65 6c 65 63 74 6f 72 } //01 00 
		$a_00_6 = {64 77 42 74 63 53 65 6c 65 63 74 6f 72 } //01 00 
		$a_00_7 = {5a 65 72 6f 53 65 63 4e 75 6d 3a 25 64 } //01 00 
		$a_00_8 = {46 69 72 73 74 5a 65 72 6f 3a 25 64 } //01 00 
		$a_00_9 = {4c 61 73 74 5a 65 72 6f 3a 25 64 } //02 00 
		$a_00_10 = {69 64 3d 25 64 26 63 6f 64 65 3d 25 64 26 73 64 61 74 61 3d 25 64 2e 25 64 2e 25 64 } //02 00 
		$a_00_11 = {25 64 26 6e 61 6d 65 3d 25 73 26 6d 64 35 3d 25 73 26 64 6c 65 6e 3d 25 73 } //01 00 
		$a_00_12 = {58 4f 52 20 6b 65 79 3d 30 78 25 58 } //01 00 
		$a_00_13 = {25 73 3a 20 45 58 43 45 50 54 21 21 } //01 00 
		$a_00_14 = {3d 3d 3d 3d 3d 3d 3d 45 45 45 45 45 45 45 45 45 45 45 45 45 45 3d 3d 3d 3d 3d 3d 3d 3d 3d } //01 00 
		$a_00_15 = {46 69 72 73 74 20 50 68 61 73 65 20 44 6f 6e 65 } //01 00 
		$a_00_16 = {54 77 6f 20 50 68 61 73 65 20 44 6f 6e 65 } //01 00 
		$a_00_17 = {56 4f 4c 55 4d 45 3a 46 69 6c 65 3a 20 25 73 } //01 00 
		$a_03_18 = {32 c2 32 c3 34 90 01 01 0f b6 d0 88 81 90 01 04 88 8a 90 01 04 41 81 f9 00 01 00 00 7c 90 00 } //01 00 
		$a_01_19 = {c6 04 02 00 c6 00 00 8a 14 06 2a d1 fe ca 88 14 07 41 40 3b 4d f8 76 e5 } //02 00 
		$a_03_20 = {58 83 e8 09 89 45 fc 8b 45 fc 83 e8 90 01 01 89 45 fc 68 90 01 02 00 00 8b 4d fc 8b 51 04 ff d2 90 00 } //01 00 
		$a_01_21 = {c6 44 03 fd 01 8b 4d ec c6 44 0b fe 55 8b 55 ec c6 44 13 ff aa } //00 00 
	condition:
		any of ($a_*)
 
}