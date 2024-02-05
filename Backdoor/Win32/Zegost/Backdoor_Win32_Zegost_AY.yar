
rule Backdoor_Win32_Zegost_AY{
	meta:
		description = "Backdoor:Win32/Zegost.AY,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 0a 00 00 01 00 "
		
	strings :
		$a_01_0 = {c7 45 f8 0a 00 00 00 50 53 8d 85 38 fe ff ff 53 50 8d 47 01 50 89 5d fc 89 bd 3c fe ff ff 89 b5 38 fe ff ff ff 15 } //01 00 
		$a_01_1 = {63 3a 5c 00 22 25 73 22 2c 75 70 64 61 74 65 00 5c 63 73 72 73 73 2e 65 78 65 00 00 25 73 5c 72 75 6e 64 6c 6c 33 32 2e 65 78 65 } //01 00 
		$a_03_2 = {25 73 5c 72 75 6e 64 6c 6c 33 32 2e 65 78 65 00 5c 63 73 72 73 73 2e 65 78 65 00 00 22 25 73 22 2c 90 03 06 08 75 70 64 61 74 65 49 6e 69 74 53 6b 69 6e 90 02 04 63 3a 5c 90 00 } //01 00 
		$a_01_3 = {5c 73 74 61 72 74 2e 6c 6e 6b 00 } //01 00 
		$a_01_4 = {25 73 5c 64 61 74 61 2e 6d 64 62 00 } //01 00 
		$a_01_5 = {54 57 39 36 61 57 78 73 59 53 38 30 4c 6a 41 67 4b 47 4e 76 62 58 42 68 64 47 6c 69 62 47 55 70 } //01 00 
		$a_01_6 = {55 30 39 47 56 46 64 42 55 6b 56 63 51 57 68 75 54 47 46 69 58 46 59 7a 54 47 6c 30 5a 51 3d 3d } //01 00 
		$a_01_7 = {25 73 20 25 73 2c 41 4c 53 54 53 5f 45 78 65 63 75 74 65 41 63 74 69 6f 6e 00 } //01 00 
		$a_03_8 = {5c 5c 2e 5c 6d 6f 6f 6e 90 02 08 63 6d 64 2e 65 78 65 20 2f 63 20 72 64 20 2f 71 20 2f 73 20 22 63 3a 5c 25 73 22 90 00 } //01 00 
		$a_01_9 = {5c 36 43 34 44 41 36 46 42 5c 73 76 63 68 73 6f 74 2e 65 78 65 } //00 00 
		$a_00_10 = {87 10 00 } //00 f8 
	condition:
		any of ($a_*)
 
}