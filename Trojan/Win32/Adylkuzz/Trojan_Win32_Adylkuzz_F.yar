
rule Trojan_Win32_Adylkuzz_F{
	meta:
		description = "Trojan:Win32/Adylkuzz.F,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 05 00 00 "
		
	strings :
		$a_01_0 = {57 69 6e 64 6f 77 73 5c 73 65 63 75 72 69 74 79 5c 70 72 6f 63 65 73 73 2e 65 78 65 } //1 Windows\security\process.exe
		$a_01_1 = {73 73 72 2e 6c 61 2f 38 36 2e 65 78 65 } //1 ssr.la/86.exe
		$a_03_2 = {73 70 6f 6f 6c 73 76 2e 65 78 65 90 02 04 53 65 72 76 65 72 90 00 } //1
		$a_03_3 = {4d 69 6e 65 72 90 01 01 65 78 65 6e 61 6d 65 90 02 08 70 72 6f 63 65 73 73 2e 65 78 65 90 00 } //1
		$a_03_4 = {57 69 6e 53 65 73 90 02 04 64 69 73 70 6c 61 79 90 02 04 57 69 6e 64 6f 77 73 20 53 65 63 75 72 69 74 79 20 53 65 72 76 69 63 65 73 90 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1) >=3
 
}