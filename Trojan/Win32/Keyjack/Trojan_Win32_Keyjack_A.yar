
rule Trojan_Win32_Keyjack_A{
	meta:
		description = "Trojan:Win32/Keyjack.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_02_0 = {6d 73 6e 2e 63 6f 6d 90 02 04 61 6f 6c 2e 63 6f 6d 90 02 04 79 61 68 6f 6f 2e 63 6f 6d 90 02 04 67 6f 6f 67 6c 65 2e 63 6f 6d 90 00 } //1
		$a_00_1 = {25 00 53 00 3f 00 70 00 3d 00 25 00 75 00 26 00 71 00 3d 00 26 00 69 00 3d 00 25 00 75 00 } //1 %S?p=%u&q=&i=%u
		$a_02_2 = {49 00 6e 00 74 00 65 00 72 00 6e 00 65 00 74 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 2e 00 41 00 70 00 70 00 6c 00 69 00 63 00 61 00 74 00 69 00 6f 00 6e 90 02 06 6b 65 79 77 6f 72 64 73 90 00 } //1
		$a_00_3 = {52 53 31 2f 49 6e 73 74 61 6c 6c 65 64 42 75 6e 64 6c 65 73 00 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_00_1  & 1)*1+(#a_02_2  & 1)*1+(#a_00_3  & 1)*1) >=4
 
}