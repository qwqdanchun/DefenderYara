
rule TrojanSpy_Win32_Vorsii_A{
	meta:
		description = "TrojanSpy:Win32/Vorsii.A,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 06 00 00 "
		
	strings :
		$a_01_0 = {69 73 6e 5f 72 65 6c 6f 61 64 63 6f 6e 66 69 67 00 } //2
		$a_01_1 = {69 73 6e 5f 67 65 74 6c 6f 67 00 } //2
		$a_01_2 = {69 73 6e 5f 6c 6f 67 70 61 74 68 00 } //2 獩彮潬灧瑡h
		$a_01_3 = {69 73 6e 5f 6c 6f 67 64 65 6c 00 } //2
		$a_01_4 = {5c 69 73 6e 2e 70 64 62 00 } //1
		$a_01_5 = {5c 69 73 6e 37 2e 70 64 62 00 } //1 楜湳⸷摰b
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=9
 
}