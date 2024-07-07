
rule TrojanSpy_Win32_Fitin_A{
	meta:
		description = "TrojanSpy:Win32/Fitin.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {4e 00 65 00 77 00 20 00 49 00 6e 00 66 00 65 00 63 00 74 00 69 00 6f 00 6e 00 00 21 4e 00 65 00 77 00 20 00 49 00 6e 00 66 00 65 00 63 00 74 00 69 00 6f 00 6e 00 21 00 21 00 21 } //1
		$a_01_1 = {2b 5d 00 3a 00 20 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 20 00 49 00 73 00 20 00 4f 00 66 00 66 00 20 00 4e 00 6f 00 77 } //1
		$a_01_2 = {5b 00 42 00 61 00 63 00 6b 00 73 00 70 00 61 00 63 00 65 00 5d 00 } //1 [Backspace]
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}