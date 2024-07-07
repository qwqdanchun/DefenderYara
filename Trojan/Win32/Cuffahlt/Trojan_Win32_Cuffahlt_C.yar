
rule Trojan_Win32_Cuffahlt_C{
	meta:
		description = "Trojan:Win32/Cuffahlt.C,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_03_0 = {74 65 6d 33 c7 44 24 90 01 01 32 5c 64 72 c7 44 24 90 01 01 69 76 65 72 c7 44 24 90 01 01 73 5c 65 74 c7 44 24 90 01 01 63 5c 68 6f c7 44 24 90 01 01 73 74 73 00 90 00 } //1
		$a_03_1 = {64 72 69 76 c7 44 24 90 01 01 65 72 73 5c c7 44 24 90 01 01 65 74 63 5c c7 44 24 90 01 01 68 6f 73 74 66 c7 44 24 90 01 01 73 00 90 00 } //1
		$a_03_2 = {66 69 67 20 c7 84 24 90 01 04 2f 66 6c 75 c7 84 24 90 01 04 73 68 64 6e 66 c7 84 24 90 01 04 73 00 90 00 } //2
		$a_03_3 = {5c 64 6e 73 c7 45 90 01 01 61 70 69 2e c7 45 90 01 01 64 6c 6c 00 c7 45 90 01 01 5c 64 6c 6c c7 45 90 01 01 63 61 63 68 66 c7 45 90 01 01 65 00 90 00 } //2
		$a_03_4 = {6e 5c 52 75 c7 45 90 01 01 6e 6f 6e 63 66 c7 45 90 01 01 65 00 c7 45 90 01 01 63 6d 64 72 66 c7 45 90 01 01 75 6e 90 00 } //2
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*2+(#a_03_3  & 1)*2+(#a_03_4  & 1)*2) >=5
 
}