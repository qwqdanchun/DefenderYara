
rule Backdoor_Win32_Goggpac{
	meta:
		description = "Backdoor:Win32/Goggpac,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 08 00 00 03 00 "
		
	strings :
		$a_03_0 = {68 3c 04 00 00 a1 90 01 04 50 e8 90 01 04 6a 00 57 68 1e 04 00 00 90 00 } //01 00 
		$a_01_1 = {76 33 66 bf 01 00 0f b7 c7 8b 55 fc 0f b6 44 02 ff 66 89 45 fa 8d 45 f4 66 8b 55 fa 66 83 f2 } //01 00 
		$a_01_2 = {6a 04 68 00 30 00 00 8b 45 e4 8b 40 50 50 8b 45 e4 8b 40 34 50 8b 45 d0 50 e8 } //01 00 
		$a_03_3 = {8b d7 66 81 f2 90 01 02 88 50 01 c6 00 01 8d 95 90 00 } //01 00 
		$a_01_4 = {79 74 69 72 75 63 65 53 20 74 65 6e 72 65 74 6e 49 20 74 66 6f 73 67 6e 69 4b 00 } //01 00 
		$a_01_5 = {65 78 65 2e 65 63 69 76 72 65 73 65 72 61 77 6d 76 00 } //01 00 
		$a_01_6 = {63 61 70 47 65 74 44 72 69 76 65 72 44 65 73 63 72 69 70 74 69 6f 6e 41 00 } //01 00 
		$a_01_7 = {2e 2f 44 52 41 54 2f } //00 00  ./DRAT/
	condition:
		any of ($a_*)
 
}