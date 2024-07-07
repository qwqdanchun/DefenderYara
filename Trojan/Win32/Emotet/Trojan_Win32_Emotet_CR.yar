
rule Trojan_Win32_Emotet_CR{
	meta:
		description = "Trojan:Win32/Emotet.CR,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {48 62 74 68 65 76 62 79 30 4e 6d 61 6b 65 73 } //1 Hbthevby0Nmakes
		$a_01_1 = {4f 35 42 78 6a 51 48 54 54 50 31 34 33 6d } //1 O5BxjQHTTP143m
		$a_00_2 = {35 00 34 00 63 00 6f 00 6d 00 70 00 75 00 74 00 65 00 72 00 48 00 51 00 70 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 69 00 6e 00 74 00 65 00 72 00 72 00 75 00 70 00 74 00 28 00 75 00 73 00 65 00 72 00 00 00 39 00 42 00 74 00 68 00 65 00 45 00 61 00 73 00 74 00 65 00 72 00 31 00 62 00 67 00 39 00 28 00 6f 00 72 00 44 00 65 00 63 00 65 00 6d 00 62 00 65 00 72 00 00 00 63 00 68 00 65 00 62 00 75 00 74 00 37 00 37 00 37 00 37 00 46 00 6f 00 72 00 50 00 61 00 6e 00 64 00 69 00 74 00 4f 00 00 00 69 00 6e 00 6f 00 66 00 68 00 74 00 68 00 65 00 63 00 } //1
		$a_00_3 = {4f 00 72 00 69 00 67 00 69 00 6e 00 61 00 6c 00 46 00 69 00 6c 00 65 00 6e 00 61 00 6d 00 65 00 00 00 4f 00 67 00 67 00 53 00 6f 00 75 00 6e 00 64 00 2e 00 64 00 6c 00 6c 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1) >=4
 
}