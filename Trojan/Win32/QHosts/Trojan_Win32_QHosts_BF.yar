
rule Trojan_Win32_QHosts_BF{
	meta:
		description = "Trojan:Win32/QHosts.BF,SIGNATURE_TYPE_PEHSTR,11 00 11 00 07 00 00 "
		
	strings :
		$a_01_0 = {2e 2e 5c 73 69 6d 2e 65 78 65 00 } //15
		$a_01_1 = {5c 69 67 72 61 65 74 5f 69 5f 70 6f 65 74 2e 76 62 73 00 } //1
		$a_01_2 = {5c 6d 61 73 73 69 72 75 65 74 5f 7a 69 76 65 74 69 2e 76 62 73 00 } //1
		$a_01_3 = {5c 76 6c 61 73 74 65 2e 6c 69 6e 00 } //1
		$a_01_4 = {5c 73 6c 61 76 6e 69 5f 6d 61 6c 69 69 5f 72 69 63 68 61 72 64 5f 6e 65 6c 73 6f 6e 69 2e 62 61 74 00 } //1
		$a_01_5 = {5c 70 6f 6c 6f 76 69 6e 6b 61 6f 73 74 61 6e 6b 69 6e 73 6b 6f 69 2e 76 62 73 00 } //1
		$a_01_6 = {5c 62 61 73 68 6e 69 5f 6b 69 61 61 2e 76 62 73 00 } //1
	condition:
		((#a_01_0  & 1)*15+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=17
 
}