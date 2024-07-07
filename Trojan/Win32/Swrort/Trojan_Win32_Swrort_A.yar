
rule Trojan_Win32_Swrort_A{
	meta:
		description = "Trojan:Win32/Swrort.A,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 0c 00 00 "
		
	strings :
		$a_01_0 = {5d 68 33 32 00 00 68 77 73 32 5f 54 68 4c 77 26 07 ff d5 b8 90 01 00 00 29 c4 54 50 68 29 80 6b 00 ff d5 } //1
		$a_01_1 = {e3 3c 49 8b 34 8b 01 d6 31 ff 31 c0 ac c1 cf 0d 01 c7 38 e0 75 f4 03 7d f8 3b 7d 24 75 e2 } //1
		$a_03_2 = {89 e6 6a 10 56 57 68 90 01 04 ff d5 90 09 05 00 68 02 00 90 00 } //1
		$a_03_3 = {68 58 a4 53 e5 90 05 01 02 90 90 90 18 90 05 01 02 90 90 ff d5 90 00 } //1
		$a_03_4 = {68 a6 95 bd 9d 90 05 01 02 90 90 90 18 90 05 01 02 90 90 ff d5 90 00 } //1
		$a_01_5 = {68 ad 13 6c dd 68 02 00 00 50 89 e6 6a 10 56 57 68 99 a5 74 61 ff d5 } //65526
		$a_01_6 = {79 3a 5c 78 36 34 5c 52 65 6c 65 61 73 65 5c 61 70 69 68 6f 6f 6b 36 34 2e 70 64 62 } //65436 y:\x64\Release\apihook64.pdb
		$a_01_7 = {79 3a 5c 52 65 6c 65 61 73 65 5c 61 70 69 68 6f 6f 6b 2e 70 64 62 } //65436 y:\Release\apihook.pdb
		$a_81_8 = {4d 61 6c 77 61 72 65 62 79 74 65 73 20 41 6e 74 69 2d 45 78 70 6c 6f 69 74 20 2d 20 45 78 70 6c 6f 69 74 20 54 65 73 74 } //65436 Malwarebytes Anti-Exploit - Exploit Test
		$a_02_9 = {20 00 4d 00 61 00 6c 00 77 00 61 00 72 00 65 00 62 00 79 00 74 00 65 00 73 00 20 00 41 00 6e 00 74 00 69 00 2d 00 45 00 78 00 70 00 6c 00 6f 00 69 00 74 00 20 00 69 00 73 00 20 00 90 02 20 77 00 6f 00 72 00 6b 00 69 00 6e 00 67 00 20 00 63 00 6f 00 72 00 72 00 65 00 63 00 74 00 6c 00 79 00 90 00 } //65436
		$a_01_10 = {44 3a 5c 6a 65 6e 6b 69 6e 73 5c 77 6f 72 6b 73 70 61 63 65 5c 4d 69 6e 65 72 76 61 5f 47 65 6e 65 72 61 74 65 49 6e 73 74 61 6c 6c 65 72 73 2d 42 49 4f 43 4f 4d 50 47 4c 41 55 4b 41 5c 45 6e 64 50 6f 69 6e 74 5c 42 49 4e 5c 52 65 6c 65 61 73 65 5c 72 6d 6d 70 61 2e 70 64 62 } //65436 D:\jenkins\workspace\Minerva_GenerateInstallers-BIOCOMPGLAUKA\EndPoint\BIN\Release\rmmpa.pdb
		$a_01_11 = {64 3a 5c 54 46 53 5c 4d 69 6e 65 72 76 61 5c 44 45 56 2d 62 72 61 6e 63 68 2d 33 2e 32 2e 31 31 39 2d 53 41 4e 54 41 4e 44 45 52 5c 45 6e 64 50 6f 69 6e 74 5c 42 49 4e 5c 52 65 6c 65 61 73 65 5c 72 6d 6d 70 61 2e 70 64 62 } //65436 d:\TFS\Minerva\DEV-branch-3.2.119-SANTANDER\EndPoint\BIN\Release\rmmpa.pdb
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1+(#a_01_5  & 1)*65526+(#a_01_6  & 1)*65436+(#a_01_7  & 1)*65436+(#a_81_8  & 1)*65436+(#a_02_9  & 1)*65436+(#a_01_10  & 1)*65436+(#a_01_11  & 1)*65436) >=2
 
}