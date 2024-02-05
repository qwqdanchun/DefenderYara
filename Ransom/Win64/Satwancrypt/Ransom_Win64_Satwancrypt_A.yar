
rule Ransom_Win64_Satwancrypt_A{
	meta:
		description = "Ransom:Win64/Satwancrypt.A,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0d 00 00 01 00 "
		
	strings :
		$a_03_0 = {10 66 00 00 c7 43 90 01 01 20 00 00 00 90 00 } //03 00 
		$a_03_1 = {b9 25 00 00 00 e8 90 01 02 00 00 48 8d 55 90 01 01 b9 26 00 00 00 e8 90 01 02 00 00 41 8b ce 66 44 39 b5 f0 02 00 00 74 90 00 } //02 00 
		$a_03_2 = {3d bc ff 9f 00 0f 87 90 01 02 00 00 4d 85 c9 74 90 01 01 33 c9 42 8a 04 09 48 ff c1 88 44 0c 90 01 01 48 81 f9 02 01 00 00 72 90 00 } //02 00 
		$a_01_3 = {41 f6 c2 02 b8 00 f7 04 84 ba 00 f7 44 84 0f 45 c2 41 8b f9 41 f6 c2 04 74 04 0f ba e8 17 } //01 00 
		$a_80_4 = {00 2e 73 74 6e 00 } //  01 00 
		$a_80_5 = {00 2a 70 73 70 69 6d 61 67 65 2a 00 } //  01 00 
		$a_80_6 = {00 2a 69 6e 63 70 61 73 2a 00 } //  01 00 
		$a_80_7 = {53 3a 28 4d 4c 3b 3b 4e 52 4e 57 4e 58 3b 3b 3b 4c 57 29 } //S:(ML;;NRNWNX;;;LW)  01 00 
		$a_80_8 = {40 55 53 56 57 41 54 41 55 41 56 41 57 48 8d 6c } //@USVWATAUAVAWH�l  01 00 
		$a_80_9 = {00 61 65 69 6f 75 79 00 } //  01 00 
		$a_80_10 = {00 62 63 64 66 67 68 6b 6c 6d 6e 70 71 72 73 74 76 77 78 7a 00 } //  01 00 
		$a_80_11 = {72 64 20 2f 53 20 2f 51 20 22 25 73 22 } //rd /S /Q "%s"  01 00 
		$a_80_12 = {64 65 6c 20 2f 46 20 22 25 73 22 } //del /F "%s"  00 00 
	condition:
		any of ($a_*)
 
}