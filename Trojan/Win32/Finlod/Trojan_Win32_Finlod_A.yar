
rule Trojan_Win32_Finlod_A{
	meta:
		description = "Trojan:Win32/Finlod.A,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 09 00 00 "
		
	strings :
		$a_01_0 = {c1 6d 68 ed } //2
		$a_01_1 = {21 3b df 50 } //2
		$a_01_2 = {91 fd 47 59 } //2
		$a_01_3 = {7f 28 a0 69 } //2
		$a_01_4 = {2f 44 d4 9b } //2
		$a_01_5 = {fd 42 72 b6 } //2
		$a_01_6 = {83 c0 30 ff d0 68 00 80 00 00 } //1
		$a_01_7 = {48 83 c0 30 ff d0 41 b9 00 80 00 00 } //1
		$a_01_8 = {5c 00 52 00 45 00 47 00 49 00 53 00 54 00 52 00 59 00 5c 00 } //1 \REGISTRY\
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2+(#a_01_5  & 1)*2+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=14
 
}