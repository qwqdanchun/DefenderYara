
rule TrojanSpy_Win32_Regpass_A{
	meta:
		description = "TrojanSpy:Win32/Regpass.A,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {42 65 65 70 53 65 72 76 69 63 65 00 } //1 敂灥敓癲捩e
		$a_01_1 = {72 65 67 63 6c 65 61 6e 2e 65 78 65 00 } //1
		$a_01_2 = {76 69 63 65 20 66 69 6c 65 20 4f 4b 2e 00 00 00 49 6e 20 43 72 65 61 74 65 46 69 6c 65 00 00 00 5c 5c 25 73 5c 61 64 6d 69 6e 24 5c 73 79 73 74 65 6d 33 32 5c 25 73 00 53 75 63 63 65 65 64 21 00 00 00 00 44 65 6c 65 74 65 20 74 65 6d 70 6f 72 61 72 79 20 73 65 72 76 69 63 65 20 66 69 6c } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}