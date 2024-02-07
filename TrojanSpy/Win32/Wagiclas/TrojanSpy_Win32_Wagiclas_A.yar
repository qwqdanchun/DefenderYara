
rule TrojanSpy_Win32_Wagiclas_A{
	meta:
		description = "TrojanSpy:Win32/Wagiclas.A,SIGNATURE_TYPE_PEHSTR_EXT,ffffffb8 01 ffffff9a 01 0a 00 00 2c 01 "
		
	strings :
		$a_03_0 = {c1 e2 06 03 c2 33 d2 8a 53 02 0f b6 92 90 01 03 00 c1 e2 0c 03 c2 33 d2 8a 53 03 0f b6 92 90 01 03 00 c1 e2 12 90 00 } //32 00 
		$a_01_1 = {47 6c 68 6b 6c 61 73 4b 66 7a 38 72 78 32 68 54 65 41 5a 39 4d 79 4a 6b 70 6d } //19 00  GlhklasKfz8rx2hTeAZ9MyJkpm
		$a_01_2 = {68 38 75 4e 4c 77 47 77 71 63 33 72 55 32 6f 68 4e } //19 00  h8uNLwGwqc3rU2ohN
		$a_01_3 = {42 34 6c 62 49 67 61 76 6c 6d 53 63 4b 48 66 43 } //1e 00  B4lbIgavlmScKHfC
		$a_01_4 = {47 6c 68 6b 6c 61 73 4b 66 7a 38 72 78 32 68 54 65 41 5a 39 4d 79 4a 6b 70 6d 78 35 63 56 64 78 66 4a 36 70 76 46 50 77 37 70 39 42 50 43 } //1e 00  GlhklasKfz8rx2hTeAZ9MyJkpmx5cVdxfJ6pvFPw7p9BPC
		$a_01_5 = {4c 31 51 53 50 69 71 57 50 34 37 36 36 59 71 4d 70 6d 76 5a 46 73 61 52 49 55 4d } //14 00  L1QSPiqWP4766YqMpmvZFsaRIUM
		$a_01_6 = {64 78 35 45 46 4f 57 6f 43 65 61 4f 4f 5a 56 37 32 42 } //14 00  dx5EFOWoCeaOOZV72B
		$a_01_7 = {53 41 31 6c 48 50 73 6e 39 6f 55 7a 2b 5a 4b 65 } //14 00  SA1lHPsn9oUz+ZKe
		$a_01_8 = {53 6f 77 41 41 39 5a 77 44 7a 35 6a 71 42 4f } //14 00  SowAA9ZwDz5jqBO
		$a_01_9 = {53 55 42 50 4b 54 46 4a 61 6f 43 } //00 00  SUBPKTFJaoC
		$a_01_10 = {87 10 00 00 61 6a 7e 42 1d 17 0b 83 f8 d4 9e 04 7e fd 03 00 5d 04 00 00 c8 ce 02 80 5c 26 00 00 c9 ce 02 80 00 00 01 00 08 00 10 00 ad 61 47 42 69 6e 48 6f 73 74 2e 41 21 6c 64 72 00 00 03 40 05 82 70 00 04 00 80 10 00 00 5e ce a9 02 92 dd 65 3a 17 84 } //17 ec 
	condition:
		any of ($a_*)
 
}