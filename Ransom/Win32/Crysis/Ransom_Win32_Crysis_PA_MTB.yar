
rule Ransom_Win32_Crysis_PA_MTB{
	meta:
		description = "Ransom:Win32/Crysis.PA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 0c 00 00 01 00 "
		
	strings :
		$a_00_0 = {51 c7 04 24 00 00 00 00 83 04 24 04 8a 44 24 14 8b 4c 24 08 8a d0 80 e2 f0 02 d2 02 d2 08 11 8b 0c 24 8a d0 d2 e2 8b 4c 24 0c c0 e0 06 80 e2 c0 08 11 8b 4c 24 10 08 01 59 c2 10 00 } //01 00 
		$a_02_1 = {8b 11 0f b6 0c 1a 8d 04 1a 0f b6 50 01 88 54 24 90 01 01 0f b6 50 03 88 4c 24 90 01 01 0f b6 48 02 52 8d 44 24 90 01 01 88 4c 24 90 01 01 50 8d 4c 24 90 01 01 51 8d 54 24 90 01 01 52 e8 90 01 04 8a 44 24 90 01 01 0f b6 4c 24 90 01 01 0f b6 54 24 90 01 01 88 04 3e 46 88 0c 3e 46 88 14 3e 90 00 } //01 00 
		$a_02_2 = {8b 0a 0f b6 54 29 01 8a 04 29 03 cd 88 54 24 90 01 01 0f b6 51 02 88 54 24 90 01 01 8a 51 03 89 5c 24 90 01 01 83 44 24 90 01 01 02 89 5c 24 90 01 01 83 44 24 90 01 01 04 8b 4c 24 90 01 01 8a da d2 e3 8b 4c 24 90 01 01 80 e3 c0 90 00 } //01 00 
		$a_02_3 = {0a d8 8a c2 d2 e0 c0 e2 06 0a 54 24 90 01 01 88 1c 3e 24 c0 0a 44 24 90 01 01 80 ea 02 88 44 3e 01 88 54 24 90 01 01 80 44 24 90 01 01 02 8a 4c 24 90 01 01 8b 44 24 90 01 01 88 4c 3e 02 83 c5 04 83 c6 03 3b 28 72 90 00 } //01 00 
		$a_02_4 = {8a 14 08 88 55 90 01 01 8b 45 90 01 01 8b 08 8b 55 90 01 01 8a 44 11 01 88 45 90 01 01 8b 4d 90 01 01 8b 11 8b 45 90 01 01 8a 4c 02 02 88 4d 90 01 01 8b 55 90 01 01 8b 02 8b 4d 90 01 01 8a 54 08 03 88 55 90 01 01 0f b6 45 90 01 01 0f b6 4d 90 01 01 c1 e1 02 90 00 } //01 00 
		$a_02_5 = {81 e1 c0 00 00 00 0b c1 88 45 90 01 01 0f b6 55 90 01 01 0f b6 45 90 01 01 c1 e0 04 25 c0 00 00 00 0b d0 88 55 90 01 01 0f b6 4d 90 01 01 0f b6 55 90 01 01 c1 e2 06 81 e2 c0 00 00 00 0b ca 88 4d 90 01 01 90 02 03 8b 45 90 01 01 03 45 90 01 01 8a 4d 90 01 01 88 08 8b 55 90 01 01 83 c2 01 89 55 90 01 01 8b 45 90 01 01 03 45 90 01 01 8a 4d 90 01 01 88 08 90 00 } //01 00 
		$a_02_6 = {8a d0 d2 e2 8b 4d 90 01 01 80 e2 c0 08 11 90 02 64 8b 4d 90 01 01 8a d0 80 e2 90 01 01 c0 e2 04 08 11 90 02 64 8b 4d 90 01 01 d2 e0 8b 4d 90 01 01 24 c0 08 01 90 00 } //01 00 
		$a_02_7 = {8a 08 88 4d 90 01 01 8a 48 01 88 4d 90 01 01 8a 48 02 0f b6 40 03 50 8d 45 90 01 01 50 8d 45 90 01 01 50 8d 45 90 01 01 50 88 4d 90 01 01 e8 90 01 04 8a 45 90 01 01 83 45 90 01 01 04 88 04 3e 8a 45 90 01 01 83 c4 10 46 88 04 3e 8a 45 90 01 01 46 88 04 3e 90 00 } //01 00 
		$a_02_8 = {8a d8 d2 e3 80 e3 c0 08 1a 90 02 64 8a c8 80 e1 fc c0 e1 04 08 0f 90 02 64 8b 4d 90 01 01 d2 e0 5b 24 c0 08 06 90 00 } //01 00 
		$a_02_9 = {8a 08 88 4d 90 01 01 8a 48 01 88 4d 90 01 01 8a 48 02 8a 40 03 8d 75 90 01 01 8d 7d 90 01 01 8d 55 90 01 01 88 4d 90 01 01 e8 90 01 04 8b 45 90 01 01 8a 4d 90 01 01 83 45 90 01 01 04 88 0c 03 8a 4d 90 01 01 43 88 0c 03 8a 4d 90 01 01 43 88 0c 03 90 00 } //01 00 
		$a_02_10 = {33 c9 8b 54 24 90 01 01 8b 02 0f b6 5c 28 01 8a 14 28 03 c5 88 5c 24 90 01 01 0f b6 58 02 8a 40 03 88 5c 24 90 01 01 89 4c 24 90 01 01 83 44 24 90 01 01 02 89 4c 24 90 01 01 83 44 24 90 01 01 04 8b 4c 24 90 01 01 8a d8 d2 e3 8b 4c 24 90 01 01 46 46 90 00 } //01 00 
		$a_02_11 = {80 e3 c0 0a da 8a d0 d2 e2 88 5c 3e 90 01 01 8b 5c 24 90 01 01 c0 e0 06 0a 44 24 90 01 01 80 e2 c0 0a 54 24 90 01 01 83 c5 04 88 54 3e 90 01 01 88 04 3e 46 3b 2b 72 90 00 } //00 00 
		$a_00_12 = {5d } //04 00 
	condition:
		any of ($a_*)
 
}