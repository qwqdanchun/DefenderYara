
rule Ransom_Win32_Reveton_B{
	meta:
		description = "Ransom:Win32/Reveton.B,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0b 00 0d 00 00 02 00 "
		
	strings :
		$a_01_0 = {8d 45 f8 50 6a 00 6a 00 68 94 80 40 00 6a 00 6a 00 e8 ed ba ff ff eb 3c 8b 43 0c } //02 00 
		$a_01_1 = {83 f8 28 0f 87 44 03 00 00 ff 24 85 f1 67 40 00 } //01 00 
		$a_01_2 = {2e 74 6d 70 2c 58 35 30 00 } //01 00 
		$a_01_3 = {63 74 66 6d 6f 6e 2e 6c 6e 6b 00 } //01 00 
		$a_01_4 = {25 73 79 73 74 65 6d 72 6f 6f 74 25 5c 73 79 73 74 65 6d 33 32 5c 63 74 66 6d 6f 6e 2e 65 78 65 00 } //01 00 
		$a_01_5 = {5c 52 75 6e 5c 63 74 66 6d 6f 6e 2e 65 78 65 00 } //01 00 
		$a_01_6 = {5c 53 45 4e 53 5c 50 61 72 61 6d 65 74 65 72 73 5c 53 65 72 76 69 63 65 44 6c 6c 00 } //01 00  卜久屓慐慲敭整獲卜牥楶散汄l
		$a_01_7 = {53 4f 46 54 57 41 52 45 5c 4c 49 44 00 } //01 00 
		$a_01_8 = {53 75 6e 63 68 20 49 4f 4b 00 } //01 00 
		$a_01_9 = {53 65 6e 64 20 52 65 63 76 20 43 6f 6d 70 6c 69 74 65 00 } //01 00 
		$a_01_10 = {46 30 30 30 38 38 38 0d 47 65 74 20 53 4d 20 4b 65 79 20 2d 20 } //01 00 
		$a_01_11 = {53 42 72 6f 77 73 65 72 20 2d 20 } //01 00  SBrowser - 
		$a_01_12 = {53 74 61 72 74 65 72 20 4f 4b 20 4e 61 6d 65 3a 20 } //00 00  Starter OK Name: 
	condition:
		any of ($a_*)
 
}