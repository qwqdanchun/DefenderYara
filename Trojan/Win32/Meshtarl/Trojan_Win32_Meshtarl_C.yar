
rule Trojan_Win32_Meshtarl_C{
	meta:
		description = "Trojan:Win32/Meshtarl.C,SIGNATURE_TYPE_CMDHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_00_0 = {6d 00 73 00 68 00 74 00 61 00 2e 00 65 00 78 00 65 00 00 00 } //3
		$a_02_1 = {72 00 75 00 6e 00 64 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 90 02 f0 6d 00 73 00 68 00 74 00 6d 00 6c 00 90 02 20 72 00 75 00 6e 00 68 00 74 00 6d 00 6c 00 61 00 70 00 70 00 6c 00 69 00 63 00 61 00 74 00 69 00 6f 00 6e 00 90 00 } //3
		$a_02_2 = {73 00 63 00 72 00 69 00 70 00 74 00 3a 00 90 02 f0 70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 90 02 f0 73 00 79 00 73 00 74 00 65 00 6d 00 2e 00 6e 00 65 00 74 00 90 02 f0 64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 90 02 f0 69 00 65 00 78 00 90 00 } //1
		$a_02_3 = {73 00 63 00 72 00 69 00 70 00 74 00 3a 00 90 02 f0 70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 90 02 f0 73 00 79 00 73 00 74 00 65 00 6d 00 2e 00 6e 00 65 00 74 00 90 02 f0 64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 90 02 f0 2d 00 70 00 72 00 6f 00 63 00 65 00 73 00 73 00 90 00 } //1
		$a_02_4 = {73 00 63 00 72 00 69 00 70 00 74 00 3a 00 90 02 f0 70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 90 02 f0 73 00 79 00 73 00 74 00 65 00 6d 00 2e 00 6e 00 65 00 74 00 90 02 f0 64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 90 02 f0 69 00 6e 00 76 00 6f 00 6b 00 65 00 2d 00 90 00 } //1
	condition:
		((#a_00_0  & 1)*3+(#a_02_1  & 1)*3+(#a_02_2  & 1)*1+(#a_02_3  & 1)*1+(#a_02_4  & 1)*1) >=4
 
}