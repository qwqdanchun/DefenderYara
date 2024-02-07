
rule Backdoor_Win64_Vedratve_A_dha{
	meta:
		description = "Backdoor:Win64/Vedratve.A!dha,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 06 00 00 08 00 "
		
	strings :
		$a_01_0 = {74 65 81 38 44 22 33 11 75 54 83 78 04 01 48 8b c8 75 36 } //02 00 
		$a_01_1 = {48 89 8c 24 70 02 00 00 85 ff 74 3d 8b 56 08 48 83 64 24 20 00 4c 8d 84 24 70 02 00 00 48 03 d0 4d 8b cc 48 8b cb ff 15 } //01 00 
		$a_01_2 = {80 7c 19 ed 33 75 37 80 7c 19 ee c0 75 30 80 7c 19 ef 48 75 29 } //01 00 
		$a_01_3 = {80 7c 19 f0 8d 75 22 80 7c 19 f1 0d 75 1b 80 7c 19 f6 c7 } //01 00 
		$a_01_4 = {80 7c 19 d7 c5 75 37 80 7c 19 d8 0f 75 30 } //01 00 
		$a_01_5 = {80 7c 19 d9 84 75 29 80 7c 19 de 48 75 22 80 7c 19 df 8d 75 1b } //00 00 
		$a_00_6 = {78 13 01 00 0f 00 0f 00 0a 00 } //00 04 
	condition:
		any of ($a_*)
 
}
rule Backdoor_Win64_Vedratve_A_dha_2{
	meta:
		description = "Backdoor:Win64/Vedratve.A!dha,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 0a 00 00 04 00 "
		
	strings :
		$a_01_0 = {00 52 75 6e 42 61 63 6b 44 6f 6f 72 00 } //04 00 
		$a_01_1 = {00 31 34 34 2e 32 31 34 2e 32 35 2e 31 36 39 00 } //02 00 
		$a_01_2 = {62 6b 73 65 72 76 69 63 65 64 6c 6c 49 53 } //02 00  bkservicedllIS
		$a_01_3 = {6d 33 32 5c 73 79 73 74 65 6d 6d 61 69 6c 75 70 6c 69 6e 65 2e 64 6c 6c } //02 00  m32\systemmailupline.dll
		$a_01_4 = {5b 44 65 63 72 79 70 74 49 45 48 74 74 70 41 75 74 68 50 61 73 73 77 6f 72 64 73 5d } //02 00  [DecryptIEHttpAuthPasswords]
		$a_01_5 = {54 4d 42 4d 53 52 56 2e 65 78 65 00 00 00 00 00 46 52 57 4b 5f 45 56 45 4e 54 5f 53 46 43 54 4c 43 4f 4d 5f 45 58 49 54 00 } //02 00 
		$a_01_6 = {53 74 61 72 74 20 74 68 65 20 62 61 63 6b 64 6f 6f 72 20 2e 2e 2e 2e 20 00 } //02 00 
		$a_01_7 = {69 6e 6a 65 63 74 20 70 72 6f 63 20 73 65 6e 64 20 69 65 20 70 72 6f 78 79 20 } //02 00  inject proc send ie proxy 
		$a_01_8 = {70 72 6f 78 79 20 75 73 65 72 20 61 6e 64 20 70 61 73 73 77 6f 72 64 20 72 65 63 76 } //01 00  proxy user and password recv
		$a_01_9 = {5b 6e 64 31 32 33 5d 0d 0a } //00 00 
		$a_00_10 = {5d 04 00 00 3b b1 03 80 5c 27 00 } //00 3c 
	condition:
		any of ($a_*)
 
}