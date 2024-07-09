
rule Trojan_Win32_Delf_IV{
	meta:
		description = "Trojan:Win32/Delf.IV,SIGNATURE_TYPE_PEHSTR_EXT,04 00 03 00 04 00 00 "
		
	strings :
		$a_01_0 = {53 21 6f 40 75 23 67 24 6f 25 75 5e 43 21 6c 40 69 23 63 25 6b } //1 S!o@u#g$o%u^C!l@i#c%k
		$a_01_1 = {61 61 61 2e 38 32 32 34 35 2e 63 6f 6d 3a 38 30 38 30 2f 73 6f 67 6f 75 2f 73 6f 67 6f 75 5f 63 6c 69 63 6b 5f 6a 73 78 73 2e 70 68 70 } //1 aaa.82245.com:8080/sogou/sogou_click_jsxs.php
		$a_03_2 = {74 6a 2e 38 32 32 34 35 2e 63 6f 6d 3a [0-04] 2f 74 6a [0-01] 2f 43 6f 75 6e 74 2e 61 73 70 } //1
		$a_03_3 = {53 61 66 65 74 72 61 79 5c 20 2f 64 20 90 09 32 00 5c 53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e 20 2f 76 20 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1) >=3
 
}