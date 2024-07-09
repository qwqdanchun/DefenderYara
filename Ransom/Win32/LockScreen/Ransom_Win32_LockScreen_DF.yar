
rule Ransom_Win32_LockScreen_DF{
	meta:
		description = "Ransom:Win32/LockScreen.DF,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {50 6f 6c 69 63 65 [0-05] 52 65 70 6f 72 74 00 } //1
		$a_01_1 = {3c 6d 3e 50 72 65 73 73 20 45 53 43 20 61 6e 64 20 74 72 79 20 74 6f 20 63 6f 6e 6e 65 63 74 20 74 6f 20 74 68 65 20 49 6e 74 65 72 6e 65 74 2e } //1 <m>Press ESC and try to connect to the Internet.
		$a_01_2 = {68 2e 70 68 70 68 6d 61 69 6e } //1 h.phphmain
		$a_01_3 = {6c 6f 63 6b 2e 64 6c 6c 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}
rule Ransom_Win32_LockScreen_DF_2{
	meta:
		description = "Ransom:Win32/LockScreen.DF,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 08 00 00 "
		
	strings :
		$a_01_0 = {47 6c 6f 62 61 6c 5c 75 79 75 79 37 36 36 72 67 64 79 72 35 35 00 } //1 汇扯污畜畹㝹㘶杲祤㕲5
		$a_01_1 = {47 6c 6f 62 61 6c 5c 6f 75 38 36 67 65 35 38 67 79 00 } //1 汇扯污潜㡵朶㕥朸y
		$a_01_2 = {47 6c 6f 62 61 6c 5c 69 69 6f 79 38 38 68 67 79 36 00 } //1 汇扯污楜潩㡹核祧6
		$a_01_3 = {5c 00 42 00 61 00 73 00 65 00 4e 00 61 00 6d 00 65 00 64 00 4f 00 62 00 6a 00 65 00 63 00 74 00 73 00 5c 00 74 00 74 00 79 00 74 00 36 00 37 00 67 00 79 00 73 00 69 00 00 00 } //1
		$a_01_4 = {5c 00 42 00 61 00 73 00 65 00 4e 00 61 00 6d 00 65 00 64 00 4f 00 62 00 6a 00 65 00 63 00 74 00 73 00 5c 00 64 00 69 00 64 00 6f 00 6f 00 75 00 64 00 64 00 00 00 } //1
		$a_01_5 = {5c 00 42 00 61 00 73 00 65 00 4e 00 61 00 6d 00 65 00 64 00 4f 00 62 00 6a 00 65 00 63 00 74 00 73 00 5c 00 36 00 36 00 64 00 6a 00 38 00 75 00 67 00 64 00 6a 00 00 00 } //1
		$a_01_6 = {5c 00 74 00 65 00 73 00 74 00 5c 00 76 00 69 00 73 00 74 00 61 00 2e 00 64 00 6c 00 6c 00 00 00 } //1
		$a_01_7 = {5c 00 74 00 65 00 73 00 74 00 5c 00 37 00 2d 00 36 00 34 00 2e 00 64 00 6c 00 6c 00 00 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=3
 
}