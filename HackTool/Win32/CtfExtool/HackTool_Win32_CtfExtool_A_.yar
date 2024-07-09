
rule HackTool_Win32_CtfExtool_A_{
	meta:
		description = "HackTool:Win32/CtfExtool.A!!CtfExtool.gen!A,SIGNATURE_TYPE_ARHSTR_EXT,02 00 02 00 04 00 00 "
		
	strings :
		$a_00_0 = {43 3a 5c 55 73 65 72 73 5c 54 61 76 69 73 20 4f 72 6d 61 6e 64 79 5c 44 6f 63 75 6d 65 6e 74 73 5c 50 72 6f 6a 65 63 74 73 5c 63 74 66 74 6f 6f 6c 5c 70 61 79 6c 6f 61 64 36 34 2e 70 64 62 } //2 C:\Users\Tavis Ormandy\Documents\Projects\ctftool\payload64.pdb
		$a_00_1 = {43 3a 5c 55 73 65 72 73 5c 54 61 76 69 73 20 4f 72 6d 61 6e 64 79 5c 44 6f 63 75 6d 65 6e 74 73 5c 50 72 6f 6a 65 63 74 73 5c 63 74 66 74 6f 6f 6c 5c 70 61 79 6c 6f 61 64 33 32 2e 70 64 62 } //2 C:\Users\Tavis Ormandy\Documents\Projects\ctftool\payload32.pdb
		$a_03_2 = {4d e7 c6 71 28 0f d8 11 a8 2a 00 06 5b 84 43 5c e0 01 00 00 01 00 00 ?? ?? ?? ?? ?? 00 00 00 00 00 00 00 00 00 00 00 00 38 00 00 00 80 01 00 00 00 00 00 00 00 00 00 00 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 08 90 90 22 11 fb 7f 00 00 41 41 41 41 41 } //1
		$a_01_3 = {f7 8e 22 11 fb 7f 00 00 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 } //1
	condition:
		((#a_00_0  & 1)*2+(#a_00_1  & 1)*2+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1) >=2
 
}