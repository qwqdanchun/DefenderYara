
rule Trojan_Win32_Alureon_GL{
	meta:
		description = "Trojan:Win32/Alureon.GL,SIGNATURE_TYPE_PEHSTR_EXT,ffffffdc 00 ffffffc8 00 09 00 00 64 00 "
		
	strings :
		$a_01_0 = {6a 00 66 00 6c 00 73 00 64 00 6b 00 6a 00 66 00 30 00 30 00 31 00 2e 00 64 00 61 00 74 00 } //32 00 
		$a_01_1 = {67 72 6f 75 6e 64 74 61 73 6b 2e 63 6f 6d 3a 38 30 3b 73 6b 79 32 66 6f 72 63 65 2e 63 6f 6d 3a 38 30 3b 38 34 2e 31 36 2e 32 33 34 2e 31 30 33 3a 38 30 } //19 00 
		$a_01_2 = {8d 85 f8 fd ff ff 83 c4 18 8d 48 02 66 8b 10 83 c0 02 66 85 d2 75 f5 2b c1 d1 f8 4e f7 de 1b f6 83 e6 fa 83 c6 08 } //19 00 
		$a_01_3 = {66 8b 08 83 c0 02 66 85 c9 75 f5 8d bd d8 fd ff ff 2b c2 83 ef 02 66 8b 4f 02 83 c7 02 66 85 c9 75 f4 8b c8 c1 e9 02 8b f2 f3 a5 } //0a 00 
		$a_01_4 = {25 73 2f 25 73 2f 25 73 2f 25 73 2f 25 73 2f 25 64 2f 25 30 38 78 } //0a 00 
		$a_01_5 = {25 64 2e 25 64 2e 25 64 5f 25 64 2e 25 64 5f 25 64 } //0a 00 
		$a_01_6 = {30 30 33 00 31 2e 37 00 68 65 6c 6c 6f } //0a 00 
		$a_01_7 = {22 00 25 00 73 00 22 00 20 00 37 00 20 00 22 00 25 00 73 00 22 00 20 00 25 00 53 00 } //0a 00 
		$a_01_8 = {73 00 78 00 5f 00 72 00 75 00 6e 00 } //00 00 
		$a_00_9 = {5d 04 00 00 16 05 03 00 5c 22 00 00 1a 05 03 00 00 00 01 00 04 00 0c 00 88 21 42 65 65 62 6f 6e 65 2e 49 54 00 00 03 40 05 83 5c 00 04 00 80 10 00 00 32 e2 af e7 29 f8 b5 31 2e 35 a6 26 4c 09 00 80 80 10 00 00 32 e2 af e7 29 f8 b5 31 90 7d 4e 4c 4c 09 00 80 80 10 00 00 32 e2 af e7 29 f8 b5 31 94 b8 22 28 4c 09 00 80 5d 04 00 00 1a 05 03 00 5c 22 00 00 26 05 03 00 00 00 01 00 04 00 0c 00 88 21 42 65 65 62 6f 6e 65 2e 49 55 00 00 01 40 05 83 5c 00 04 00 80 10 00 00 32 e2 af e7 } //29 f8 
	condition:
		any of ($a_*)
 
}