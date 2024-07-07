
rule Backdoor_Win32_Venik_H_{
	meta:
		description = "Backdoor:Win32/Venik.H!!Venik.H,SIGNATURE_TYPE_ARHSTR_EXT,3c 00 3c 00 07 00 00 "
		
	strings :
		$a_00_0 = {49 6e 73 74 61 6c 6c 54 69 6d 65 00 25 34 64 2d 25 2e 32 64 2d 25 2e 32 64 20 25 2e 32 64 3a 25 2e 32 64 } //10
		$a_00_1 = {25 63 25 63 25 63 25 63 25 63 25 63 2e 65 78 65 00 } //10
		$a_00_2 = {43 6c 6f 73 65 50 72 6f 78 79 00 } //10
		$a_00_3 = {53 65 53 68 75 74 64 6f 77 6e 50 72 69 76 69 6c 65 67 65 00 } //10 敓桓瑵潤湷牐癩汩来e
		$a_00_4 = {41 70 70 6c 69 63 61 74 69 6f 6e 73 5c 69 65 78 70 6c 6f 72 65 2e 65 78 65 5c 73 68 65 6c 6c 5c 6f 70 65 6e 5c 63 6f 6d 6d 61 6e 64 } //10 Applications\iexplore.exe\shell\open\command
		$a_00_5 = {4e 76 73 42 61 63 6b 65 6e 73 73 } //10 NvsBackenss
		$a_01_6 = {8a 14 01 80 f2 19 80 c2 7a 88 14 01 } //20
	condition:
		((#a_00_0  & 1)*10+(#a_00_1  & 1)*10+(#a_00_2  & 1)*10+(#a_00_3  & 1)*10+(#a_00_4  & 1)*10+(#a_00_5  & 1)*10+(#a_01_6  & 1)*20) >=60
 
}