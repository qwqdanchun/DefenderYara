
rule Trojan_Win32_VB_DC{
	meta:
		description = "Trojan:Win32/VB.DC,SIGNATURE_TYPE_PEHSTR_EXT,33 00 33 00 07 00 00 "
		
	strings :
		$a_00_0 = {49 6e 74 65 72 6e 65 74 52 65 61 64 46 69 6c 65 } //10 InternetReadFile
		$a_00_1 = {5c 00 64 00 78 00 6d 00 61 00 73 00 2e 00 73 00 79 00 73 00 } //10 \dxmas.sys
		$a_00_2 = {5c 00 72 00 65 00 64 00 69 00 72 00 5c 00 72 00 65 00 64 00 69 00 72 00 2e 00 76 00 62 00 70 00 } //10 \redir\redir.vbp
		$a_02_3 = {5c 00 47 00 62 00 50 00 6c 00 75 00 67 00 69 00 6e 00 5c 00 47 00 62 00 90 02 10 2e 00 65 00 78 00 65 00 90 00 } //10
		$a_02_4 = {5c 00 44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 65 00 64 00 20 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 20 00 46 00 69 00 6c 00 65 00 73 00 5c 00 67 00 62 00 90 02 10 2e 00 64 00 6c 00 6c 00 90 00 } //10
		$a_00_5 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 77 00 77 00 77 00 2e 00 67 00 65 00 6f 00 63 00 69 00 74 00 69 00 65 00 73 00 2e 00 63 00 6f 00 6d 00 2f 00 70 00 61 00 67 00 69 00 6e 00 61 00 73 00 63 00 65 00 6e 00 74 00 72 00 61 00 6c 00 } //1 http://www.geocities.com/paginascentral
		$a_02_6 = {68 74 74 70 3a 2f 2f 77 77 77 2e 90 02 12 2e 63 6f 6d 2e 62 72 90 00 } //1
	condition:
		((#a_00_0  & 1)*10+(#a_00_1  & 1)*10+(#a_00_2  & 1)*10+(#a_02_3  & 1)*10+(#a_02_4  & 1)*10+(#a_00_5  & 1)*1+(#a_02_6  & 1)*1) >=51
 
}