
rule Backdoor_Win32_Popwin_G{
	meta:
		description = "Backdoor:Win32/Popwin.G,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 06 00 00 "
		
	strings :
		$a_01_0 = {73 25 64 2e 6f 6c 64 69 6d 65 00 } //1
		$a_01_1 = {57 69 6e 64 6f 77 73 2e 69 6d 65 00 50 61 72 65 6e 74 00 } //1
		$a_01_2 = {4b 65 79 62 6f 61 72 64 20 4c 61 79 6f 75 74 5c 50 72 65 6c 6f 61 64 5c 00 } //1
		$a_01_3 = {26 70 63 3d 00 00 00 00 26 6d 64 35 3d 00 00 00 26 75 73 65 72 3d 00 00 26 76 65 72 3d 00 00 00 3f 6d 61 63 3d 00 } //1
		$a_01_4 = {6c 6c 6b 25 64 31 2e 6d 70 33 00 } //1
		$a_01_5 = {73 6c 65 65 70 74 69 6d 65 00 00 00 6e 6f 68 69 64 65 00 00 75 6b 65 79 00 00 00 00 70 6f 70 77 69 6e 00 00 61 64 73 63 6c 69 63 6b 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=3
 
}