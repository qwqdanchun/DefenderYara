
rule Trojan_Win32_Desurou_C{
	meta:
		description = "Trojan:Win32/Desurou.C,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {66 33 01 66 03 f8 b8 01 00 00 00 70 90 01 01 66 03 c6 70 90 01 01 8b f0 e9 90 00 } //2
		$a_00_1 = {64 00 65 00 73 00 75 00 72 00 6c 00 00 00 } //1
		$a_00_2 = {6c 00 6f 00 63 00 6b 00 68 00 6f 00 6d 00 65 00 70 00 61 00 67 00 65 00 00 00 } //1
		$a_00_3 = {20 00 5b 00 77 00 79 00 62 00 68 00 6f 00 69 00 6e 00 69 00 5d 00 00 00 } //1
	condition:
		((#a_03_0  & 1)*2+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1) >=4
 
}