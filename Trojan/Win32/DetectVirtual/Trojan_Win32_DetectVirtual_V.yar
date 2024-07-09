
rule Trojan_Win32_DetectVirtual_V{
	meta:
		description = "Trojan:Win32/DetectVirtual.V,SIGNATURE_TYPE_CMDHSTR_EXT,01 00 01 00 06 00 00 "
		
	strings :
		$a_02_0 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 [0-10] 67 00 77 00 6d 00 69 00 [0-40] 77 00 69 00 6e 00 33 00 32 00 5f 00 62 00 69 00 6f 00 73 00 } //1
		$a_02_1 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 [0-10] 67 00 77 00 6d 00 69 00 [0-40] 77 00 69 00 6e 00 33 00 32 00 5f 00 62 00 61 00 73 00 65 00 62 00 6f 00 61 00 72 00 64 00 } //1
		$a_02_2 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 [0-10] 2d 00 63 00 6c 00 61 00 73 00 73 00 [0-40] 77 00 69 00 6e 00 33 00 32 00 5f 00 63 00 6f 00 6d 00 70 00 75 00 74 00 65 00 72 00 73 00 79 00 73 00 74 00 65 00 6d 00 } //1
		$a_02_3 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 [0-10] 2d 00 63 00 6c 00 61 00 73 00 73 00 [0-40] 77 00 69 00 6e 00 33 00 32 00 5f 00 62 00 69 00 6f 00 73 00 } //1
		$a_02_4 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 [0-10] 67 00 65 00 74 00 2d 00 77 00 6d 00 69 00 6f 00 62 00 6a 00 65 00 63 00 74 00 [0-10] 2d 00 6e 00 61 00 6d 00 65 00 73 00 70 00 61 00 63 00 65 00 20 00 72 00 6f 00 6f 00 74 00 5c 00 63 00 69 00 6d 00 76 00 32 00 [0-02] 2d 00 71 00 75 00 65 00 72 00 79 00 [0-10] 22 00 73 00 65 00 6c 00 65 00 63 00 74 00 [0-02] 2a 00 [0-02] 66 00 72 00 6f 00 6d 00 [0-02] 77 00 69 00 6e 00 33 00 32 00 5f 00 62 00 69 00 6f 00 73 00 } //1
		$a_02_5 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 [0-10] 67 00 65 00 74 00 2d 00 77 00 6d 00 69 00 6f 00 62 00 6a 00 65 00 63 00 74 00 [0-10] 2d 00 6e 00 61 00 6d 00 65 00 73 00 70 00 61 00 63 00 65 00 20 00 72 00 6f 00 6f 00 74 00 5c 00 63 00 69 00 6d 00 76 00 32 00 [0-02] 2d 00 71 00 75 00 65 00 72 00 79 00 [0-10] 22 00 73 00 65 00 6c 00 65 00 63 00 74 00 [0-02] 2a 00 [0-02] 66 00 72 00 6f 00 6d 00 [0-02] 77 00 69 00 6e 00 33 00 32 00 5f 00 62 00 61 00 73 00 65 00 62 00 6f 00 61 00 72 00 64 00 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_02_3  & 1)*1+(#a_02_4  & 1)*1+(#a_02_5  & 1)*1) >=1
 
}