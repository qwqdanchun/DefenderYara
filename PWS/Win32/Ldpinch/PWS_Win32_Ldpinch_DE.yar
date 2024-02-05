
rule PWS_Win32_Ldpinch_DE{
	meta:
		description = "PWS:Win32/Ldpinch.DE,SIGNATURE_TYPE_PEHSTR,0f 00 0f 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {46 52 4f 4d 20 6d 6f 7a 5f 6c 6f 67 69 6e 73 00 } //01 00 
		$a_01_1 = {25 00 73 00 5c 00 25 00 73 00 25 00 69 00 5c 00 65 00 6e 00 63 00 50 00 77 00 64 00 2e 00 6a 00 73 00 64 00 } //01 00 
		$a_01_2 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 25 00 73 00 5c 00 25 00 73 00 2d 00 51 00 74 00 } //01 00 
		$a_01_3 = {25 00 73 00 5c 00 6d 00 62 00 68 00 64 00 2e 00 77 00 61 00 6c 00 6c 00 65 00 74 00 2e 00 61 00 65 00 73 00 } //01 00 
		$a_01_4 = {25 00 73 00 5c 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 6e 00 65 00 74 00 7a 00 5c 00 4d 00 61 00 69 00 6c 00 69 00 6e 00 67 00 5c 00 44 00 61 00 74 00 65 00 6e 00 5c 00 6d 00 61 00 69 00 6c 00 69 00 6e 00 67 00 2e 00 76 00 64 00 74 00 } //01 00 
		$a_01_5 = {25 00 73 00 5c 00 51 00 75 00 70 00 5a 00 69 00 6c 00 6c 00 61 00 5c 00 70 00 72 00 6f 00 66 00 69 00 6c 00 65 00 73 00 5c 00 64 00 65 00 66 00 61 00 75 00 6c 00 74 00 5c 00 62 00 72 00 6f 00 77 00 73 00 65 00 64 00 61 00 74 00 61 00 2e 00 64 00 62 00 } //01 00 
		$a_01_6 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 43 00 69 00 70 00 68 00 72 00 65 00 78 00 5c 00 43 00 6f 00 69 00 6e 00 56 00 61 00 75 00 6c 00 74 00 2f 00 42 00 69 00 74 00 63 00 6f 00 69 00 6e 00 5c 00 72 00 65 00 63 00 65 00 6e 00 74 00 73 00 } //0a 00 
		$a_01_7 = {83 c4 0c 57 57 68 9d 61 8a fa 57 e8 } //00 00 
		$a_01_8 = {00 67 16 00 00 e4 e1 f2 50 54 da 97 } //a2 d7 
	condition:
		any of ($a_*)
 
}