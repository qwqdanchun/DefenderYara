
rule TrojanSpy_Win32_Bancos_AAD{
	meta:
		description = "TrojanSpy:Win32/Bancos.AAD,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 05 00 00 "
		
	strings :
		$a_03_0 = {63 6f 6d 6d 61 6e 64 2e 63 6f 6d 20 2f 63 20 72 65 67 73 76 72 33 32 20 43 3a 5c 57 49 4e 44 4f 57 53 5c 6e 65 74 90 02 02 2e 64 6c 6c 20 2f 73 90 00 } //2
		$a_03_1 = {63 6f 6d 6d 61 6e 64 2e 63 6f 6d 20 2f 63 20 72 65 67 73 76 72 33 32 20 43 3a 5c 57 49 4e 44 4f 57 53 5c 69 74 6d 6e 74 90 02 02 2e 64 6c 6c 20 2f 73 90 00 } //2
		$a_03_2 = {63 6f 6d 6d 61 6e 64 2e 63 6f 6d 20 2f 63 20 72 65 67 73 76 72 33 32 20 2f 75 20 2f 73 20 2f 63 20 69 74 90 02 02 2e 64 6c 6c 20 2f 73 90 00 } //2
		$a_01_3 = {54 65 72 6d 69 6e 6f 75 20 64 6f 77 6e 6c 6f 61 64 } //1 Terminou download
		$a_03_4 = {6d 64 69 74 90 02 02 2e 65 78 65 90 00 } //1
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*2+(#a_03_2  & 1)*2+(#a_01_3  & 1)*1+(#a_03_4  & 1)*1) >=8
 
}
rule TrojanSpy_Win32_Bancos_AAD_2{
	meta:
		description = "TrojanSpy:Win32/Bancos.AAD,SIGNATURE_TYPE_PEHSTR_EXT,68 00 68 00 07 00 00 "
		
	strings :
		$a_01_0 = {77 00 69 00 6e 00 6d 00 67 00 6d 00 74 00 73 00 3a 00 5c 00 5c 00 6c 00 6f 00 63 00 61 00 6c 00 68 00 6f 00 73 00 74 00 5c 00 72 00 6f 00 6f 00 74 00 5c 00 63 00 69 00 6d 00 76 00 32 00 } //1 winmgmts:\\localhost\root\cimv2
		$a_01_1 = {53 00 45 00 4c 00 45 00 43 00 54 00 20 00 2a 00 20 00 46 00 52 00 4f 00 4d 00 20 00 57 00 69 00 6e 00 33 00 32 00 5f 00 4f 00 70 00 65 00 72 00 61 00 74 00 69 00 6e 00 67 00 53 00 79 00 73 00 74 00 65 00 6d 00 } //1 SELECT * FROM Win32_OperatingSystem
		$a_01_2 = {54 00 46 00 4f 00 52 00 4d 00 31 00 08 00 } //1
		$a_01_3 = {54 69 6d 65 72 31 54 69 6d 65 72 03 00 } //1
		$a_03_4 = {66 ba bf 07 b8 90 02 1e 8d 90 01 02 66 ba bf 07 b8 90 02 1e 8d 90 01 02 66 ba bf 07 b8 90 02 1e 8d 90 00 } //50
		$a_03_5 = {c1 eb 08 66 33 cb 66 90 02 19 66 69 c0 01 d2 66 05 6a 7f 66 90 00 } //50
		$a_03_6 = {c1 e9 08 66 33 d1 66 90 02 14 66 69 c6 01 d2 66 05 6a 7f 90 00 } //50
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_03_4  & 1)*50+(#a_03_5  & 1)*50+(#a_03_6  & 1)*50) >=104
 
}