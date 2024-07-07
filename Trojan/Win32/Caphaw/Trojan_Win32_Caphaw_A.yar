
rule Trojan_Win32_Caphaw_A{
	meta:
		description = "Trojan:Win32/Caphaw.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {73 65 72 76 65 72 3a 25 73 3b 3b 3b 75 73 65 72 3a 25 73 3b 3b 3b 70 61 73 73 3a 25 73 3b 3b 3b 70 6f 72 74 3a 25 64 3b 3b 3b 65 6d 61 69 6c 3a 25 73 3b 3b 3b 70 72 6f 74 6f 63 6f 6c 3a 25 73 } //1 server:%s;;;user:%s;;;pass:%s;;;port:%d;;;email:%s;;;protocol:%s
		$a_01_1 = {77 3d 65 6d 61 69 6c 64 26 74 65 78 74 3d } //1 w=emaild&text=
		$a_01_2 = {4c 00 69 00 74 00 65 00 5c 00 38 00 2e 00 30 00 5c 00 73 00 6d 00 2e 00 64 00 61 00 74 00 } //1 Lite\8.0\sm.dat
		$a_03_3 = {53 00 4d 00 54 00 50 00 20 00 50 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 90 02 06 48 00 54 00 54 00 50 00 20 00 50 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 90 02 06 49 00 4d 00 41 00 50 00 20 00 50 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 90 02 06 50 00 4f 00 50 00 33 00 20 00 50 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 90 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1) >=4
 
}