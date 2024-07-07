
rule TrojanSpy_Win32_Bancos_OS{
	meta:
		description = "TrojanSpy:Win32/Bancos.OS,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {75 00 73 00 65 00 72 00 5f 00 70 00 72 00 65 00 66 00 28 00 22 00 6e 00 65 00 74 00 77 00 6f 00 72 00 6b 00 2e 00 70 00 72 00 6f 00 78 00 79 00 2e 00 61 00 75 00 74 00 6f 00 63 00 6f 00 6e 00 66 00 69 00 67 00 5f 00 75 00 72 00 6c 00 22 00 2c 00 20 00 22 00 68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 63 00 62 00 61 00 2e 00 6c 00 32 00 63 00 72 00 61 00 7a 00 79 00 70 00 76 00 70 00 2e 00 63 00 6f 00 6d 00 2f 00 66 00 69 00 6c 00 65 00 2e 00 70 00 61 00 63 00 22 00 29 00 3b 00 00 00 } //1
		$a_01_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 64 00 69 00 61 00 6d 00 6f 00 6e 00 64 00 2e 00 69 00 6e 00 6f 00 76 00 61 00 6c 00 69 00 6e 00 6b 00 2e 00 6e 00 65 00 74 00 2f 00 77 00 61 00 62 00 2f 00 69 00 6e 00 64 00 65 00 78 00 32 00 2e 00 70 00 68 00 70 00 00 00 } //1
		$a_01_2 = {5c 00 77 00 75 00 75 00 61 00 75 00 63 00 74 00 63 00 2e 00 65 00 78 00 65 00 22 00 00 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}