
rule TrojanSpy_Win32_Bancos_US{
	meta:
		description = "TrojanSpy:Win32/Bancos.US,SIGNATURE_TYPE_PEHSTR_EXT,09 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {43 6f 6c 6f 73 73 75 44 6f 63 5f 6f 6e 6b 65 79 75 70 00 } //2
		$a_00_1 = {4d 00 75 00 74 00 61 00 6e 00 74 00 65 00 73 00 5c 00 4d 00 75 00 74 00 61 00 6e 00 74 00 65 00 73 00 2e 00 76 00 62 00 70 00 00 00 } //2
		$a_01_2 = {49 6e 74 65 72 6e 65 74 4f 70 65 6e 55 72 6c 41 00 } //1
		$a_00_3 = {74 00 78 00 74 00 50 00 61 00 73 00 73 00 00 00 } //1
		$a_00_4 = {6c 00 6f 00 67 00 69 00 6e 00 5f 00 66 00 6f 00 72 00 6d 00 00 00 } //1
		$a_00_5 = {75 00 73 00 65 00 72 00 6e 00 61 00 6d 00 65 00 00 00 } //1
		$a_00_6 = {50 00 61 00 73 00 73 00 77 00 64 00 00 00 } //1
	condition:
		((#a_01_0  & 1)*2+(#a_00_1  & 1)*2+(#a_01_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1) >=7
 
}