
rule Ransom_Win32_WannaCrypt_A_rsm{
	meta:
		description = "Ransom:Win32/WannaCrypt.A!rsm,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {66 2e 77 6e 72 79 } //01 00  f.wnry
		$a_01_1 = {25 2e 31 66 20 42 54 43 } //01 00  %.1f BTC
		$a_01_2 = {40 57 61 6e 61 44 65 63 72 79 70 74 6f 72 40 2e 65 78 65 } //01 00  @WanaDecryptor@.exe
		$a_01_3 = {25 30 38 58 2e 65 6b 79 } //01 00  %08X.eky
		$a_01_4 = {25 30 38 58 2e 70 6b 79 } //01 00  %08X.pky
		$a_01_5 = {25 30 38 58 2e 72 65 73 } //00 00  %08X.res
	condition:
		any of ($a_*)
 
}
rule Ransom_Win32_WannaCrypt_A_rsm_2{
	meta:
		description = "Ransom:Win32/WannaCrypt.A!rsm,SIGNATURE_TYPE_PEHSTR_EXT,fffffff4 01 fffffff4 01 05 00 00 64 00 "
		
	strings :
		$a_01_0 = {5f 5f 54 52 45 45 49 44 5f 5f 50 4c 41 43 45 48 4f 4c 44 45 52 5f 5f } //64 00  __TREEID__PLACEHOLDER__
		$a_01_1 = {5f 5f 55 53 45 52 49 44 5f 5f 50 4c 41 43 45 48 4f 4c 44 45 52 5f 5f } //64 00  __USERID__PLACEHOLDER__
		$a_01_2 = {5f 5f 54 52 45 45 50 41 54 48 5f 52 45 50 4c 41 43 45 5f 5f } //64 00  __TREEPATH_REPLACE__
		$a_01_3 = {74 61 73 6b 73 63 68 65 2e 65 78 65 } //64 00  tasksche.exe
		$a_01_4 = {71 65 72 69 75 77 6a 68 72 66 } //00 00  qeriuwjhrf
	condition:
		any of ($a_*)
 
}
rule Ransom_Win32_WannaCrypt_A_rsm_3{
	meta:
		description = "Ransom:Win32/WannaCrypt.A!rsm,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 0a 00 00 01 00 "
		
	strings :
		$a_00_0 = {57 41 4e 41 43 52 59 21 00 00 00 00 25 00 73 00 5c 00 25 00 73 00 00 00 43 6c 6f 73 65 48 61 6e 64 6c 65 00 44 65 6c 65 74 65 46 69 6c 65 57 00 } //01 00 
		$a_00_1 = {74 61 73 6b 73 63 68 65 2e 65 78 65 00 00 00 00 54 61 73 6b 53 74 61 72 74 00 00 00 74 2e 77 6e 72 79 00 00 69 63 61 63 6c 73 20 2e 20 2f 67 72 61 6e 74 20 45 76 65 72 79 6f 6e 65 3a 46 20 2f } //01 00 
		$a_02_2 = {6d 73 67 2f 6d 5f 6b 6f 72 65 61 6e 2e 77 6e 72 79 0a 00 90 02 70 6d 73 67 2f 6d 5f 6c 61 74 76 69 61 6e 2e 77 6e 72 79 0a 00 20 00 90 00 } //01 00 
		$a_00_3 = {25 30 38 58 2e 65 6b 79 00 00 00 00 25 30 38 58 2e 70 6b 79 00 00 00 00 25 30 38 58 2e 72 65 73 } //01 00 
		$a_00_4 = {74 61 73 6b 64 6c 2e 65 78 65 00 00 25 73 0a 00 66 2e 77 6e 72 79 00 00 61 74 00 00 63 6d 64 2e } //01 00 
		$a_00_5 = {75 2e 77 6e 72 79 00 00 25 2e 31 66 20 42 54 43 } //01 00 
		$a_00_6 = {6b 67 70 74 62 65 69 6c 63 71 00 54 61 73 6b 53 74 61 72 74 00 } //01 00 
		$a_00_7 = {4d 73 57 69 6e 5a 6f 6e 65 73 43 61 63 68 65 43 6f 75 6e 74 65 72 4d 75 74 65 78 57 00 63 6d 64 2e 65 78 65 20 2f 63 20 72 65 67 20 61 64 64 20 } //01 00 
		$a_01_8 = {5d c0 cd 6d da d7 d4 92 1e 13 82 34 6a 70 8d 8f 7c f7 04 92 55 7f f1 a2 27 b2 9e 41 ac 90 80 91 18 93 c2 b1 7b ad 2b f3 ff af db 2b 51 be 1d a3 } //01 00 
		$a_00_9 = {77 64 00 00 57 00 61 00 6e 00 61 00 43 00 72 00 79 00 70 00 74 00 30 00 72 00 00 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Ransom_Win32_WannaCrypt_A_rsm_4{
	meta:
		description = "Ransom:Win32/WannaCrypt.A!rsm,SIGNATURE_TYPE_PEHSTR,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {6c 61 75 6e 63 68 65 72 2e 64 6c 6c 00 50 6c 61 79 47 61 6d 65 00 } //01 00  慬湵档牥搮汬倀慬䝹浡e
		$a_01_1 = {6d 73 73 65 63 73 76 63 2e 65 78 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}