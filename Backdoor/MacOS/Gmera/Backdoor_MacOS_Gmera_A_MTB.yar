
rule Backdoor_MacOS_Gmera_A_MTB{
	meta:
		description = "Backdoor:MacOS/Gmera.A!MTB,SIGNATURE_TYPE_MACHOHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {73 74 61 72 74 65 72 61 70 70 } //01 00 
		$a_00_1 = {7a 6d 6f 64 6c 6f 61 64 20 7a 73 68 2f 6e 65 74 2f 74 63 70 20 26 26 20 7a 74 63 70 20 31 39 33 2e 33 37 2e 32 31 34 2e 33 34 20 32 35 37 33 34 20 26 26 20 7a 73 68 } //01 00 
		$a_00_2 = {05 bd 4e 00 00 48 b9 65 63 68 6f 20 27 00 00 48 89 0c 07 48 b9 00 00 00 00 00 00 00 e6 48 89 4c 07 08 48 8b 05 a1 4e 00 00 48 b9 12 00 00 00 00 00 00 d0 48 89 0c 07 48 8d 15 34 21 00 00 48 be 00 00 00 00 00 00 00 80 48 09 f2 48 89 54 07 08 48 8b 05 7b 4e 00 00 48 81 c1 7e 0b 00 00 48 89 0c 07 48 8d 0d 29 21 00 00 48 09 f1 48 89 4c 07 08 e8 2c 00 00 00 48 89 5d e8 48 89 45 f0 } //02 00 
		$a_00_3 = {49 79 45 67 4c 32 4a 70 62 69 39 69 59 58 4e 6f 43 67 70 6d 64 57 35 6a 64 47 6c 76 62 69 42 79 5a 57 31 76 64 6d 56 66 63 33 42 6c 59 31 39 6a 61 47 46 79 4b 43 6c 37 43 69 41 67 49 43 42 6c 59 32 68 76 49 43 49 6b 4d 53 49 67 66 43 42 30 63 69 41 74 5a 47 4d 67 4a 31 73 36 59 57 78 75 64 57 30 36 58 53 35 63 63 69 63 67 66 43 42 30 63 69 41 6e 57 7a 70 31 63 48 42 6c 63 6a 70 64 4a 79 41 6e 57 7a 70 73 62 33 64 6c 63 6a 70 64 4a 77 70 39 43 67 70 33 61 47 39 68 62 57 6b 39 49 69 51 6f 63 6d 56 74 62 33 5a 6c 58 33 4e 77 5a 57 4e 66 59 32 68 68 63 69 42 67 64 32 68 76 59 57 31 70 59 43 6b 69 43 6d } //00 00 
		$a_00_4 = {5d 04 00 } //00 31 
	condition:
		any of ($a_*)
 
}