
rule Trojan_BAT_SpySnake_MB_MTB{
	meta:
		description = "Trojan:BAT/SpySnake.MB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 06 00 00 05 00 "
		
	strings :
		$a_01_0 = {57 9f a2 29 09 0f 00 00 00 00 00 00 00 00 00 00 01 00 00 00 54 00 00 00 1d 00 00 00 3d 00 00 00 b7 } //05 00 
		$a_01_1 = {39 63 35 35 30 66 30 32 2d 37 65 66 61 2d 34 65 63 39 2d 38 33 37 35 2d 31 35 34 33 36 37 62 39 61 36 30 36 } //01 00  9c550f02-7efa-4ec9-8375-154367b9a606
		$a_01_2 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggableAttribute
		$a_01_3 = {49 6e 76 6f 6b 65 } //01 00  Invoke
		$a_01_4 = {6d 77 4d 42 33 74 34 37 6f 64 59 77 56 51 62 45 54 4f } //01 00  mwMB3t47odYwVQbETO
		$a_01_5 = {53 00 74 00 61 00 74 00 5f 00 57 00 61 00 72 00 6e 00 } //00 00  Stat_Warn
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_SpySnake_MB_MTB_2{
	meta:
		description = "Trojan:BAT/SpySnake.MB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,17 00 17 00 07 00 00 05 00 "
		
	strings :
		$a_01_0 = {57 1d b6 09 09 0b 00 00 00 fa 01 33 00 16 00 00 01 00 00 00 62 00 00 00 0f 00 00 00 45 00 00 00 68 } //05 00 
		$a_01_1 = {37 34 38 30 32 64 39 65 2d 36 33 35 65 2d 34 62 35 38 2d 62 61 30 39 2d 62 35 66 35 36 38 61 65 38 34 36 65 } //05 00  74802d9e-635e-4b58-ba09-b5f568ae846e
		$a_01_2 = {47 61 6d 65 49 6e 74 65 72 66 61 63 65 2e 50 72 6f 70 65 72 74 69 65 73 } //05 00  GameInterface.Properties
		$a_01_3 = {45 78 30 35 2e 47 61 6d 65 49 6e 74 65 72 66 61 63 65 } //01 00  Ex05.GameInterface
		$a_01_4 = {54 69 63 54 61 63 54 6f 65 42 75 74 74 6f 6e } //01 00  TicTacToeButton
		$a_01_5 = {43 68 65 63 6b 52 69 67 68 74 4c 65 66 74 44 69 61 67 6f 6e 61 6c 53 74 61 74 65 } //01 00  CheckRightLeftDiagonalState
		$a_01_6 = {4f 4b 49 4a 55 48 59 47 54 46 } //00 00  OKIJUHYGTF
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_SpySnake_MB_MTB_3{
	meta:
		description = "Trojan:BAT/SpySnake.MB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 09 00 00 01 00 "
		
	strings :
		$a_80_0 = {47 65 74 43 6f 6e 73 6f 6c 65 57 69 6e 64 6f 77 } //GetConsoleWindow  01 00 
		$a_80_1 = {53 6c 65 65 70 } //Sleep  01 00 
		$a_80_2 = {57 65 62 43 6c 69 65 6e 74 } //WebClient  01 00 
		$a_00_3 = {0a 0b 72 01 00 00 70 73 08 00 00 0a 0c 07 08 } //01 00 
		$a_80_4 = {44 6f 77 6e 6c 6f 61 64 44 61 74 61 } //DownloadData  01 00 
		$a_02_5 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 63 00 64 00 6e 00 2e 00 64 00 69 00 73 00 63 00 6f 00 72 00 64 00 61 00 70 00 70 00 2e 00 63 00 6f 00 6d 00 2f 00 61 00 74 00 74 00 61 00 63 00 68 00 6d 00 65 00 6e 00 74 00 73 00 2f 00 90 02 60 2f 00 6d 00 61 00 72 00 69 00 6f 00 6a 00 6f 00 79 00 2e 00 70 00 6e 00 67 00 90 00 } //01 00 
		$a_02_6 = {68 74 74 70 73 3a 2f 2f 63 64 6e 2e 64 69 73 63 6f 72 64 61 70 70 2e 63 6f 6d 2f 61 74 74 61 63 68 6d 65 6e 74 73 2f 90 02 60 2f 6d 61 72 69 6f 6a 6f 79 2e 70 6e 67 90 00 } //01 00 
		$a_80_7 = {47 65 74 54 79 70 65 } //GetType  01 00 
		$a_80_8 = {61 6e 61 6e 61 6b 6f 79 7a } //ananakoyz  00 00 
	condition:
		any of ($a_*)
 
}