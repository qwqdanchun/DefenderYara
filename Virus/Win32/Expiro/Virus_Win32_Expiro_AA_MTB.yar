
rule Virus_Win32_Expiro_AA_MTB{
	meta:
		description = "Virus:Win32/Expiro.AA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {e8 00 00 00 00 90 01 01 81 90 01 01 0c d0 08 00 90 01 01 00 00 00 00 90 01 01 81 90 01 01 bc 03 00 00 43 00 3c 27 81 90 01 01 a8 01 00 00 d2 2d cb 3b 81 90 01 01 70 03 00 00 b9 79 04 09 81 90 01 01 2c 02 00 00 5e 6f 7d 62 81 90 01 01 1c 03 00 00 a4 29 6f 54 81 90 01 01 f8 02 00 00 d7 6e e6 30 81 90 01 01 7c 03 00 00 fc 56 85 02 81 90 01 01 18 03 00 00 7b 3a d1 35 81 90 01 01 c0 02 00 00 fe 2c f8 6f 90 00 } //01 00 
		$a_03_1 = {04 f9 5d ee 18 81 90 01 01 88 00 00 00 79 6d d9 5c f7 90 01 01 38 03 00 00 81 90 01 01 58 31 6d 3f 09 81 90 01 01 d4 03 00 00 1c 66 0e 75 81 90 01 01 00 04 00 00 81 90 01 01 00 04 00 00 81 90 01 01 00 c0 08 00 90 00 } //01 00 
		$a_01_2 = {56 00 45 00 4a 00 43 00 4a 00 55 00 5a 00 4e 00 49 00 50 00 4e 00 52 00 44 00 4d 00 4e 00 50 00 54 00 57 00 4b 00 42 00 59 00 58 00 55 00 5a 00 4b 00 4d 00 58 00 51 00 41 00 51 00 47 00 48 00 61 00 31 00 30 00 34 00 38 00 64 00 33 00 65 00 64 00 66 00 32 00 36 00 66 00 65 00 64 00 34 00 35 00 35 00 63 00 32 00 36 00 34 00 63 00 30 00 } //01 00 
		$a_03_3 = {7b 00 22 00 6f 00 70 00 22 00 3a 00 20 00 22 00 68 00 73 00 22 00 2c 00 20 00 22 00 53 00 65 00 73 00 73 00 69 00 6f 00 6e 00 22 00 3a 00 20 00 7b 00 22 00 62 00 69 00 64 00 22 00 3a 00 20 00 22 00 90 02 40 22 00 2c 00 20 00 22 00 68 00 69 00 64 00 22 00 3a 00 20 00 22 00 90 02 40 22 00 2c 00 20 00 22 00 4d 00 61 00 69 00 6e 00 49 00 44 00 22 00 3a 00 20 00 31 00 2c 00 20 00 22 00 53 00 75 00 62 00 73 00 69 00 64 00 69 00 61 00 72 00 79 00 49 00 44 00 22 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}