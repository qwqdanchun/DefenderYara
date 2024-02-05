
rule TrojanClicker_Win32_Notodar_A_{
	meta:
		description = "TrojanClicker:Win32/Notodar.A!!Notodar.gen!B,SIGNATURE_TYPE_ARHSTR_EXT,04 00 04 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {33 c5 89 45 fc 33 c0 83 7d 0c 01 75 61 57 8d 7d f0 ab ab 66 ab 6a 09 8d 45 f0 50 68 } //01 00 
		$a_01_1 = {64 00 65 00 62 00 72 00 6f 00 76 00 6f 00 72 00 64 00 61 00 2e 00 63 00 6f 00 6d 00 2f 00 61 00 61 00 2f 00 } //01 00 
		$a_01_2 = {72 00 75 00 6d 00 6f 00 6c 00 6f 00 74 00 74 00 72 00 61 00 2e 00 63 00 6f 00 6d 00 2f 00 61 00 61 00 2f 00 } //01 00 
		$a_03_3 = {52 00 65 00 66 00 65 00 72 00 65 00 72 00 3a 00 20 00 90 02 07 45 00 4d 00 42 00 45 00 44 00 90 02 04 4f 00 42 00 4a 00 45 00 43 00 54 00 90 02 08 49 00 46 00 52 00 41 00 4d 00 45 00 90 00 } //01 00 
		$a_03_4 = {77 00 77 00 77 00 90 02 0a 3a 00 2f 00 2f 00 90 01 02 31 00 30 00 30 00 90 02 08 25 53 90 01 02 65 00 78 00 65 00 66 00 69 00 6c 00 65 00 90 00 } //01 00 
		$a_03_5 = {33 db c7 44 24 10 03 00 00 00 39 5c 24 18 7e 90 01 01 85 db 78 06 3b 5c 24 18 7c 05 e8 90 01 04 8b 44 24 14 ff 34 98 e8 90 01 04 59 89 44 24 10 83 f8 05 75 90 00 } //01 00 
		$a_01_6 = {59 89 44 24 10 83 f8 05 75 0a 57 ff d6 43 3b 5c 24 18 7c d1 ff 74 24 10 e8 } //01 00 
		$a_01_7 = {8b 4d f8 2b 4e 08 8b 45 fc 1b 46 0c 85 c0 77 29 72 08 81 f9 00 8c 86 47 77 1f 53 ff 36 ff d7 85 c0 75 d3 56 e8 } //01 00 
		$a_01_8 = {74 0d 8b 08 8d 55 cc 52 50 ff 51 24 8b 45 ec 39 7d d8 7f 46 39 5d d4 75 41 39 5d d0 75 3c 39 5d cc 75 37 c6 45 fc 01 3b c3 74 06 8b 08 50 ff 51 08 } //05 00 
	condition:
		any of ($a_*)
 
}