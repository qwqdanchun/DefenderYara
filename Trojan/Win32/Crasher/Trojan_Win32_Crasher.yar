
rule Trojan_Win32_Crasher{
	meta:
		description = "Trojan:Win32/Crasher,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 "
		
	strings :
		$a_01_0 = {5c 00 74 00 72 00 61 00 73 00 68 00 5c 00 56 00 42 00 5c 00 42 00 75 00 73 00 5f 00 64 00 65 00 73 00 74 00 5c 00 62 00 75 00 73 00 5f 00 64 00 65 00 73 00 32 00 2e 00 76 00 62 00 70 00 } //1 \trash\VB\Bus_dest\bus_des2.vbp
		$a_01_1 = {63 00 3a 00 5c 00 61 00 5f 00 61 00 5f 00 61 00 } //1 c:\a_a_a
		$a_01_2 = {64 00 3a 00 5c 00 61 00 5f 00 61 00 5f 00 61 00 } //1 d:\a_a_a
		$a_01_3 = {45 00 3a 00 5c 00 61 00 5f 00 61 00 5f 00 61 00 } //1 E:\a_a_a
		$a_01_4 = {46 00 3a 00 5c 00 61 00 5f 00 61 00 5f 00 61 00 } //1 F:\a_a_a
		$a_01_5 = {67 00 3a 00 5c 00 61 00 5f 00 61 00 5f 00 61 00 } //1 g:\a_a_a
		$a_01_6 = {4f 00 3a 00 5c 00 61 00 5f 00 61 00 5f 00 61 00 } //1 O:\a_a_a
		$a_01_7 = {4b 00 3a 00 5c 00 61 00 5f 00 61 00 5f 00 61 00 } //1 K:\a_a_a
		$a_01_8 = {30 00 31 00 30 00 31 00 30 00 31 00 30 00 30 00 31 00 30 00 30 00 30 00 } //1 010101001000
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=9
 
}