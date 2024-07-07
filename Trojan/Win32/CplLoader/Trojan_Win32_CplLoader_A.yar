
rule Trojan_Win32_CplLoader_A{
	meta:
		description = "Trojan:Win32/CplLoader.A,SIGNATURE_TYPE_CMDHSTR_EXT,0a 00 0a 00 02 00 00 "
		
	strings :
		$a_02_0 = {77 00 73 00 63 00 72 00 69 00 70 00 74 00 90 02 ff 2e 00 77 00 73 00 66 00 3a 00 2e 00 2e 00 2f 00 2e 00 2e 00 2f 00 90 02 ff 2e 00 77 00 73 00 66 00 90 00 } //10
		$a_02_1 = {77 73 63 72 69 70 74 90 02 ff 2e 77 73 66 3a 2e 2e 2f 2e 2e 2f 90 02 ff 2e 77 73 66 90 00 } //10
	condition:
		((#a_02_0  & 1)*10+(#a_02_1  & 1)*10) >=10
 
}
rule Trojan_Win32_CplLoader_A_2{
	meta:
		description = "Trojan:Win32/CplLoader.A,SIGNATURE_TYPE_CMDHSTR_EXT,0a 00 0a 00 06 00 00 "
		
	strings :
		$a_02_0 = {72 00 75 00 6e 00 64 00 6c 00 6c 00 33 00 32 00 90 02 ff 73 00 68 00 65 00 6c 00 6c 00 33 00 32 00 2e 00 64 00 6c 00 6c 00 90 02 05 63 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 5f 00 72 00 75 00 6e 00 64 00 4c 00 4c 00 90 02 05 2e 00 63 00 70 00 6c 00 3a 00 2e 00 2e 00 2f 00 2e 00 2e 00 2f 00 2e 00 2e 00 2f 00 2e 00 2e 00 2f 00 61 00 70 00 70 00 64 00 61 00 74 00 61 00 2f 00 6c 00 6f 00 63 00 61 00 6c 00 2f 00 90 02 ff 2e 00 69 00 6e 00 66 00 90 00 } //10
		$a_02_1 = {72 75 6e 64 6c 6c 33 32 90 02 ff 73 68 65 6c 6c 33 32 2e 64 6c 6c 90 02 05 63 6f 6e 74 72 6f 6c 5f 72 75 6e 64 4c 4c 90 02 05 2e 63 70 6c 3a 2e 2e 2f 2e 2e 2f 2e 2e 2f 2e 2e 2f 61 70 70 64 61 74 61 2f 6c 6f 63 61 6c 2f 90 02 ff 2e 69 6e 66 90 00 } //10
		$a_02_2 = {63 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 2e 00 65 00 78 00 65 00 90 02 ff 2e 00 63 00 70 00 6c 00 3a 00 2e 00 2e 00 2f 00 2e 00 2e 00 2f 00 2e 00 2e 00 90 02 ff 2f 00 61 00 70 00 70 00 64 00 61 00 74 00 61 00 2f 00 6c 00 6f 00 63 00 61 00 6c 00 2f 00 90 02 ff 2e 00 69 00 6e 00 66 00 90 00 } //10
		$a_02_3 = {63 6f 6e 74 72 6f 6c 2e 65 78 65 90 02 ff 2e 63 70 6c 3a 2e 2e 2f 2e 2e 2f 2e 2e 90 02 ff 2f 61 70 70 64 61 74 61 2f 6c 6f 63 61 6c 2f 90 02 ff 2e 69 6e 66 90 00 } //10
		$a_02_4 = {72 00 75 00 6e 00 64 00 6c 00 6c 00 33 00 32 00 90 02 ff 73 00 68 00 65 00 6c 00 6c 00 33 00 32 00 2e 00 64 00 6c 00 6c 00 90 02 05 23 00 34 00 34 00 90 02 05 2e 00 63 00 70 00 6c 00 3a 00 2e 00 2e 00 2f 00 2e 00 2e 00 2f 00 2e 00 2e 00 2f 00 61 00 70 00 70 00 64 00 61 00 74 00 61 00 2f 00 6c 00 6f 00 63 00 61 00 6c 00 2f 00 90 02 ff 2e 00 69 00 6e 00 66 00 90 00 } //10
		$a_02_5 = {72 75 6e 64 6c 6c 33 32 90 02 ff 73 68 65 6c 6c 33 32 2e 64 6c 6c 90 02 05 23 34 34 90 02 05 2e 63 70 6c 3a 2e 2e 2f 2e 2e 2f 2e 2e 2f 61 70 70 64 61 74 61 2f 6c 6f 63 61 6c 2f 90 02 ff 2e 69 6e 66 90 00 } //10
	condition:
		((#a_02_0  & 1)*10+(#a_02_1  & 1)*10+(#a_02_2  & 1)*10+(#a_02_3  & 1)*10+(#a_02_4  & 1)*10+(#a_02_5  & 1)*10) >=10
 
}