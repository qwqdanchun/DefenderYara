
rule Trojan_Win32_BHO_DI_dll{
	meta:
		description = "Trojan:Win32/BHO.DI!dll,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {3c 30 7c 20 3c 39 7e 18 3c 40 7e 18 3c 46 7e 0c 3c 60 7e 10 3c 66 7f 0c 83 e8 57 c3 83 e8 37 c3 83 e8 30 c3 } //1
		$a_01_1 = {32 65 61 73 79 2e 00 00 77 2e 67 6f 00 00 00 00 69 73 6f 00 63 6f 6d 2f 00 } //1
		$a_01_2 = {be a9 ca d0 00 00 00 00 c0 b4 d7 d4 a3 ba b1 b1 00 } //1
		$a_01_3 = {7b 00 37 00 33 00 41 00 37 00 46 00 46 00 41 00 37 00 2d 00 41 00 41 00 33 00 41 00 2d 00 34 00 39 00 45 00 35 00 2d 00 41 00 37 00 37 00 37 00 2d 00 37 00 31 00 33 00 42 00 37 00 44 00 42 00 37 00 38 00 45 00 39 00 43 00 7d 00 } //2 {73A7FFA7-AA3A-49E5-A777-713B7DB78E9C}
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*2) >=4
 
}