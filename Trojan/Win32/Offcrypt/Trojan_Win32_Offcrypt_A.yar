
rule Trojan_Win32_Offcrypt_A{
	meta:
		description = "Trojan:Win32/Offcrypt.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {43 00 6c 00 6f 00 73 00 65 00 00 00 53 00 61 00 76 00 65 00 41 00 73 00 00 00 00 00 41 00 63 00 74 00 69 00 76 00 65 00 57 00 6f 00 72 00 6b 00 62 00 6f 00 6f 00 6b 00 00 00 00 00 4f 00 70 00 65 00 6e 00 00 00 00 00 74 00 74 00 71 00 00 00 41 00 63 00 74 00 69 00 76 00 65 00 44 00 6f 00 63 00 75 00 6d 00 65 00 6e 00 74 00 00 00 00 00 44 00 69 00 73 00 70 00 6c 00 61 00 79 00 41 00 6c 00 65 00 72 00 74 00 73 00 00 00 } //1
		$a_01_1 = {57 00 6f 00 72 00 64 00 2e 00 41 00 70 00 70 00 6c 00 69 00 63 00 61 00 74 00 69 00 6f 00 6e 00 } //1 Word.Application
		$a_01_2 = {45 00 78 00 63 00 65 00 6c 00 2e 00 41 00 70 00 70 00 6c 00 69 00 63 00 61 00 74 00 69 00 6f 00 6e 00 } //1 Excel.Application
		$a_01_3 = {54 58 4f 53 65 72 76 69 63 65 00 00 5c 45 78 65 63 6c 2e 65 78 65 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}