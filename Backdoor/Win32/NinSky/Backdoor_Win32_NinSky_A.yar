
rule Backdoor_Win32_NinSky_A{
	meta:
		description = "Backdoor:Win32/NinSky.A,SIGNATURE_TYPE_PEHSTR_EXT,49 00 49 00 09 00 00 32 00 "
		
	strings :
		$a_01_0 = {c7 45 f8 cc cc cc cc c7 45 fc cc cc cc cc 8b 45 08 89 45 fc c7 45 f8 00 00 00 00 eb 09 8b 4d f8 83 c1 01 89 4d f8 8b 55 f8 3b 55 10 7d 19 0f b6 45 0c 8b 4d fc 03 4d f8 0f b6 11 33 d0 8b 45 fc 03 45 f8 88 10 eb d6 } //0a 00 
		$a_01_1 = {53 6b 79 70 65 43 6f 6e 74 72 6f 6c 41 50 49 41 74 74 61 63 68 } //0a 00 
		$a_01_2 = {53 6b 79 70 65 43 6f 6e 74 72 6f 6c 41 50 49 44 69 73 63 6f 76 65 72 } //01 00 
		$a_01_3 = {5b 00 53 00 6b 00 79 00 70 00 65 00 5d 00 20 00 44 00 61 00 74 00 61 00 20 00 50 00 61 00 74 00 68 00 20 00 3a 00 } //01 00 
		$a_01_4 = {5b 00 53 00 6b 00 79 00 70 00 65 00 41 00 63 00 63 00 65 00 73 00 73 00 5d 00 20 00 53 00 6b 00 79 00 70 00 65 00 20 00 45 00 78 00 69 00 74 00 } //01 00 
		$a_01_5 = {5b 00 53 00 6b 00 79 00 70 00 65 00 4d 00 6f 00 6e 00 69 00 74 00 6f 00 72 00 5d 00 20 00 49 00 6e 00 69 00 74 00 69 00 61 00 6c 00 69 00 7a 00 65 00 } //01 00 
		$a_01_6 = {5b 00 53 00 6b 00 79 00 70 00 65 00 4d 00 6f 00 6e 00 69 00 74 00 6f 00 72 00 5d 00 20 00 57 00 61 00 69 00 74 00 20 00 53 00 6b 00 79 00 70 00 65 00 20 00 49 00 6e 00 69 00 74 00 69 00 61 00 6c 00 69 00 7a 00 65 00 2e 00 2e 00 2e 00 } //01 00 
		$a_01_7 = {5b 00 53 00 6b 00 79 00 70 00 65 00 41 00 63 00 63 00 65 00 73 00 73 00 5d 00 20 00 53 00 6b 00 79 00 70 00 65 00 20 00 41 00 63 00 63 00 65 00 73 00 73 00 65 00 64 00 2e 00 2e 00 } //01 00 
		$a_01_8 = {5b 00 53 00 6b 00 79 00 70 00 65 00 4d 00 65 00 73 00 73 00 61 00 67 00 65 00 5d 00 20 00 4c 00 6f 00 67 00 67 00 65 00 64 00 20 00 6f 00 75 00 74 00 2e 00 } //00 00 
		$a_00_9 = {87 10 00 00 37 5e 6f 31 87 11 d0 98 0f 12 bb 3a fe 80 00 00 87 10 00 } //00 ef 
	condition:
		any of ($a_*)
 
}