
rule Backdoor_Win32_Coulomb_A{
	meta:
		description = "Backdoor:Win32/Coulomb.A,SIGNATURE_TYPE_PEHSTR,0c 00 0c 00 08 00 00 "
		
	strings :
		$a_01_0 = {64 2e 65 78 65 00 00 00 53 6f 66 74 77 61 72 65 5c 43 6f 75 6c 6f 6d 62 5c 46 50 61 72 61 6d 00 6f 70 65 6e 00 00 00 00 41 58 4c 6f 61 64 65 72 00 00 00 00 5c 00 00 00 78 7c 63 6f 6d 6c 6f 61 64 7c 25 73 } //5
		$a_01_1 = {27 6c 6f 61 64 65 72 32 20 43 6c 61 73 73 27 0d 0a 09 09 7b 0d 0a 09 09 09 50 72 6f 67 49 44 20 3d 20 73 20 27 43 6f 6d 6c 6f 61 64 2e 6c 6f 61 64 65 72 32 2e 31 27 0d 0a 09 09 09 56 65 72 73 69 6f 6e 49 6e 64 65 70 65 6e 64 65 6e 74 50 72 6f 67 49 44 20 3d 20 73 20 27 43 6f 6d 6c 6f 61 64 2e 6c 6f 61 64 65 72 32 27 27 } //5
		$a_01_2 = {43 00 6f 00 6d 00 70 00 61 00 6e 00 79 00 4e 00 61 00 6d 00 65 00 00 00 00 00 43 00 6f 00 75 00 6c 00 6f 00 6d 00 62 00 20 00 4c 00 74 00 64 00 00 00 54 00 16 00 01 00 46 00 69 00 6c 00 65 00 44 00 65 00 73 00 63 00 72 00 69 00 70 00 74 00 69 00 6f 00 6e 00 00 00 00 00 43 00 6f 00 6e 00 74 00 65 00 6e 00 74 00 20 00 41 00 63 00 63 00 65 00 73 00 73 00 20 00 50 00 6c 00 75 00 67 00 69 00 6e 00 00 00 38 00 0c 00 01 00 46 00 69 00 6c 00 65 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 00 00 00 00 31 00 2c 00 20 00 30 00 2c 00 20 00 30 00 2c 00 20 00 31 00 30 00 00 00 30 00 08 00 01 00 49 00 6e 00 74 00 65 00 72 00 6e 00 61 00 6c 00 4e 00 61 00 6d 00 65 00 00 00 43 00 4f 00 4d 00 4c 00 4f 00 41 00 44 00 00 } //3
		$a_01_3 = {2e 69 70 62 69 6c 6c 2e 63 6f 6d 2f } //2 .ipbill.com/
		$a_01_4 = {68 74 74 70 3a 2f 2f 32 31 37 2e 37 33 2e 36 } //2 http://217.73.6
		$a_01_5 = {32 36 36 46 39 34 38 41 2d 33 44 45 45 2d 34 32 37 30 2d 38 46 35 35 2d 45 37 39 41 43 43 44 35 36 39 46 41 } //1 266F948A-3DEE-4270-8F55-E79ACCD569FA
		$a_01_6 = {41 44 37 46 41 46 42 30 2d 31 36 44 36 2d 34 30 43 33 2d 41 46 32 37 2d 35 38 35 44 36 45 36 34 35 33 46 44 } //1 AD7FAFB0-16D6-40C3-AF27-585D6E6453FD
		$a_01_7 = {39 45 31 30 38 39 42 43 2d 31 41 45 38 2d 34 36 38 35 2d 38 44 37 37 2d 36 37 32 31 45 35 43 33 31 38 41 38 } //1 9E1089BC-1AE8-4685-8D77-6721E5C318A8
	condition:
		((#a_01_0  & 1)*5+(#a_01_1  & 1)*5+(#a_01_2  & 1)*3+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=12
 
}