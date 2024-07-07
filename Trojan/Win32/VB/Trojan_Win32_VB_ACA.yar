
rule Trojan_Win32_VB_ACA{
	meta:
		description = "Trojan:Win32/VB.ACA,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {2e 00 67 00 6f 00 6d 00 6f 00 77 00 69 00 65 00 6f 00 70 00 2e 00 63 00 6f 00 6d 00 2f 00 32 00 39 00 2e 00 74 00 78 00 74 00 } //1 .gomowieop.com/29.txt
		$a_01_1 = {67 00 6f 00 74 00 6f 00 73 00 68 00 66 00 64 00 6f 00 70 00 2e 00 63 00 6f 00 6d 00 2f 00 32 00 39 00 2e 00 64 00 6f 00 63 00 } //1 gotoshfdop.com/29.doc
		$a_01_2 = {2e 00 67 00 6f 00 6d 00 62 00 61 00 69 00 68 00 6f 00 70 00 2e 00 63 00 6f 00 6d 00 2f 00 32 00 39 00 2e 00 70 00 68 00 70 00 } //1 .gombaihop.com/29.php
		$a_01_3 = {2e 00 33 00 34 00 38 00 30 00 30 00 2e 00 63 00 6f 00 6d 00 2f 00 70 00 6f 00 70 00 2f 00 } //1 .34800.com/pop/
		$a_01_4 = {2e 00 33 00 73 00 67 00 6f 00 75 00 2e 00 63 00 6f 00 6d 00 2f 00 70 00 6f 00 70 00 2f 00 } //1 .3sgou.com/pop/
		$a_03_5 = {32 00 35 00 33 00 31 00 33 00 33 00 33 00 66 00 64 00 64 00 64 00 64 00 67 00 64 00 64 00 90 01 08 2e 00 35 00 36 00 39 00 39 00 35 00 2e 00 63 00 6f 00 6d 00 90 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_03_5  & 1)*1) >=6
 
}