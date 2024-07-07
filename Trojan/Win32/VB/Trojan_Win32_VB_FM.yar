
rule Trojan_Win32_VB_FM{
	meta:
		description = "Trojan:Win32/VB.FM,SIGNATURE_TYPE_PEHSTR_EXT,15 00 0f 00 05 00 00 "
		
	strings :
		$a_02_0 = {40 40 00 2a 00 5c 00 41 00 45 00 3a 00 5c 00 b0 65 0d 67 a1 52 68 56 87 65 f6 4e 5c 00 4d 00 4f 00 5c 00 62 00 6f 00 56 00 42 00 03 8c 28 75 0b 7a 8f 5e 5c 00 be 8b 3a 4e 96 99 75 98 5c 00 e5 5d 0b 7a 90 02 04 2e 00 76 00 62 00 70 90 00 } //10
		$a_02_1 = {65 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 2e 00 65 00 78 00 65 00 20 00 68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 77 00 77 00 77 00 2e 00 90 02 08 78 00 79 00 78 00 2e 00 63 00 6f 00 6d 00 90 00 } //5
		$a_02_2 = {43 00 3a 00 5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 20 00 46 00 69 00 6c 00 65 00 73 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 5c 00 90 02 06 2e 00 65 00 78 00 65 00 90 00 } //5
		$a_00_3 = {68 00 6f 00 6e 00 67 00 71 00 74 00 } //1 hongqt
		$a_00_4 = {73 00 79 00 73 00 2e 00 65 00 78 00 65 00 } //1 sys.exe
	condition:
		((#a_02_0  & 1)*10+(#a_02_1  & 1)*5+(#a_02_2  & 1)*5+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1) >=15
 
}