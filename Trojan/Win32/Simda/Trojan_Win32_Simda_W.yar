
rule Trojan_Win32_Simda_W{
	meta:
		description = "Trojan:Win32/Simda.W,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_02_0 = {3a 00 5c 00 44 00 6f 00 63 00 75 00 6d 00 65 00 6e 00 74 00 73 00 20 00 61 00 6e 00 64 00 20 00 53 00 65 00 74 00 74 00 69 00 6e 00 67 00 73 00 5c 00 55 00 53 00 45 00 52 00 5c 00 4d 00 69 00 73 00 20 00 64 00 6f 00 63 00 75 00 6d 00 65 00 6e 00 74 00 6f 00 73 00 5c 00 44 00 65 00 73 00 63 00 61 00 72 00 67 00 61 00 73 00 5c 00 76 00 4f 00 6c 00 6b 00 2d 00 42 00 6f 00 74 00 6e 00 65 00 74 00 20 00 90 02 02 2e 00 30 00 5c 00 76 00 62 00 36 00 20 00 53 00 6f 00 75 00 72 00 63 00 65 00 5c 00 50 00 72 00 6f 00 79 00 65 00 63 00 74 00 6f 00 31 00 2e 00 76 00 62 00 70 00 90 00 } //1
		$a_00_1 = {52 00 65 00 73 00 70 00 6f 00 6e 00 73 00 65 00 54 00 65 00 78 00 74 00 00 00 00 00 0e 00 00 00 61 00 70 00 70 00 64 00 61 00 74 00 61 00 } //1
		$a_01_2 = {69 44 6f 6e 77 45 78 65 63 00 00 00 69 53 74 61 72 50 63 4f 6e 73 00 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_00_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}