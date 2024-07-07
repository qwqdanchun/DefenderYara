
rule Backdoor_Win32_VB_UI{
	meta:
		description = "Backdoor:Win32/VB.UI,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {52 4e 4e 4c 13 13 54 4f 50 50 61 61 64 65 65 69 6b 6b 69 69 69 69 65 65 64 b9 f4 } //1
		$a_02_1 = {2a 00 5c 00 41 00 47 00 3a 00 5c 00 41 00 59 00 4f 00 20 00 58 00 20 00 4c 00 6f 00 67 00 67 00 65 00 72 00 5c 00 41 00 59 00 4f 00 20 00 53 00 70 00 79 00 90 02 30 2e 00 76 00 62 00 70 00 90 00 } //1
		$a_02_2 = {74 69 67 68 74 90 01 15 40 00 50 00 90 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1) >=3
 
}