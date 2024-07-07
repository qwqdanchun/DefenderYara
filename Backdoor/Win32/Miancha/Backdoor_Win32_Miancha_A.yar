
rule Backdoor_Win32_Miancha_A{
	meta:
		description = "Backdoor:Win32/Miancha.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {78 c6 44 24 90 01 01 7d c6 44 24 90 01 01 72 c6 44 24 90 01 01 67 c6 44 24 90 01 01 3a c6 44 24 90 01 01 7b c6 44 24 90 01 01 77 c6 44 24 90 01 01 6c c6 44 24 90 01 01 14 90 02 05 c6 44 24 90 01 01 65 90 02 03 80 30 14 75 90 00 } //1
		$a_01_1 = {74 65 6d 70 5c 69 6e 73 74 72 75 63 74 69 6f 6e 73 2e 70 64 66 } //1 temp\instructions.pdf
		$a_01_2 = {43 6f 6e 31 00 00 00 00 43 6f 6e 33 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}