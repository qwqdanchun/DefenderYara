
rule Trojan_Win32_PShellDlr_SB{
	meta:
		description = "Trojan:Win32/PShellDlr.SB,SIGNATURE_TYPE_CMDHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_80_0 = {70 6f 77 65 72 73 68 65 6c 6c } //powershell  1
		$a_80_1 = {6e 65 77 2d 6f 62 6a 65 63 74 20 6e 65 74 2e 77 65 62 63 6c 69 65 6e 74 } //new-object net.webclient  1
		$a_02_2 = {64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 73 00 74 00 72 00 69 00 6e 00 67 00 28 00 90 02 02 68 00 74 00 74 00 70 00 90 02 01 3a 00 2f 00 2f 00 90 29 03 00 2e 00 90 29 03 00 2e 00 90 29 03 00 2e 00 90 29 03 00 3a 00 90 29 08 00 2f 00 90 31 20 00 2e 00 70 00 6e 00 67 00 90 00 } //1
		$a_02_3 = {6d 00 73 00 69 00 6d 00 61 00 6b 00 65 00 90 02 10 68 00 74 00 74 00 70 00 90 02 01 3a 00 2f 00 2f 00 90 29 03 00 2e 00 90 29 03 00 2e 00 90 29 03 00 2e 00 90 29 03 00 3a 00 90 29 08 00 2f 00 90 31 20 00 2e 00 70 00 6e 00 67 00 90 00 } //1
	condition:
		((#a_80_0  & 1)*1+(#a_80_1  & 1)*1+(#a_02_2  & 1)*1+(#a_02_3  & 1)*1) >=4
 
}