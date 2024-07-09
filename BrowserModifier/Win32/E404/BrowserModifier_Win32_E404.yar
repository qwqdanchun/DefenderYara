
rule BrowserModifier_Win32_E404{
	meta:
		description = "BrowserModifier:Win32/E404,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_00_0 = {65 34 30 34 6d 67 72 20 43 6c 61 73 73 57 } //1 e404mgr ClassW
		$a_02_1 = {65 34 30 34 6d 67 72 57 64 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 49 65 34 30 34 6d 67 72 } //1
		$a_00_2 = {45 34 30 34 4c 69 62 57 } //1 E404LibW
		$a_00_3 = {65 34 30 34 20 31 2e 30 20 54 79 70 65 20 4c 69 62 72 61 72 79 57 } //1 e404 1.0 Type LibraryW
		$a_80_4 = {65 34 30 34 2e 44 4c 4c } //e404.DLL  1
		$a_80_5 = {65 34 30 34 20 4d 6f 64 75 6c 65 } //e404 Module  1
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_80_4  & 1)*1+(#a_80_5  & 1)*1) >=6
 
}
rule BrowserModifier_Win32_E404_2{
	meta:
		description = "BrowserModifier:Win32/E404,SIGNATURE_TYPE_PEHSTR,33 00 33 00 07 00 00 "
		
	strings :
		$a_01_0 = {2e 44 4c 4c 00 44 6c 6c 43 61 6e 55 6e 6c 6f 61 64 4e 6f 77 00 44 6c 6c 47 65 74 43 6c 61 73 73 4f 62 6a 65 63 74 00 44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 00 44 6c 6c 55 6e 72 65 67 69 73 74 65 72 53 65 72 76 65 72 } //10 䐮䱌䐀汬慃啮汮慯乤睯䐀汬敇䍴慬獳扏敪瑣䐀汬敒楧瑳牥敓癲牥䐀汬湕敲楧瑳牥敓癲牥
		$a_01_1 = {4f 62 74 61 69 6e 55 73 65 72 41 67 65 6e 74 53 74 72 69 6e 67 } //10 ObtainUserAgentString
		$a_01_2 = {6c 69 76 65 2e 00 00 00 6d 73 6e 2e 00 00 00 00 72 64 73 2e 79 61 68 6f 6f 2e 00 00 79 61 68 6f 6f 2e 00 00 67 6f 6f 67 6c 65 2e } //10
		$a_01_3 = {3f 70 3d 00 26 70 3d 00 3f 71 3d 00 26 71 3d } //10
		$a_01_4 = {18 92 d0 f7 d7 46 3d 4d 9b 7f 31 52 04 cd 08 36 } //10
		$a_01_5 = {45 34 30 34 2e 65 34 30 34 6d 67 72 } //1 E404.e404mgr
		$a_01_6 = {c6 45 d0 75 c6 45 d1 72 c6 45 d2 6c c6 45 da 63 c6 45 db 6c c6 45 dc 69 c6 45 dd 63 c6 45 de 6b c6 45 df 73 c6 45 e4 72 c6 45 e5 65 c6 45 e6 66 } //1
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*10+(#a_01_3  & 1)*10+(#a_01_4  & 1)*10+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=51
 
}