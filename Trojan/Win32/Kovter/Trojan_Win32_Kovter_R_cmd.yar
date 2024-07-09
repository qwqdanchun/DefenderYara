
rule Trojan_Win32_Kovter_R_cmd{
	meta:
		description = "Trojan:Win32/Kovter.R!cmd,SIGNATURE_TYPE_CMDHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_00_0 = {5c 00 6d 00 73 00 68 00 74 00 61 00 2e 00 65 00 78 00 65 00 } //1 \mshta.exe
		$a_02_1 = {6a 00 61 00 76 00 61 00 73 00 63 00 72 00 69 00 70 00 74 00 3a 00 [0-30] 3d 00 6e 00 65 00 77 00 20 00 61 00 63 00 74 00 69 00 76 00 65 00 78 00 6f 00 62 00 6a 00 65 00 63 00 74 00 28 00 [0-04] 77 00 73 00 63 00 72 00 69 00 70 00 74 00 2e 00 73 00 68 00 65 00 6c 00 6c 00 } //1
		$a_02_2 = {2e 00 72 00 65 00 67 00 72 00 65 00 61 00 64 00 28 00 [0-04] 68 00 6b 00 63 00 75 00 5c 00 73 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 } //1
		$a_00_3 = {3b 00 65 00 76 00 61 00 6c 00 28 00 } //1 ;eval(
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_00_3  & 1)*1) >=4
 
}