
rule Worm_Win32_Dumpy_B{
	meta:
		description = "Worm:Win32/Dumpy.B,SIGNATURE_TYPE_PEHSTR_EXT,05 00 04 00 06 00 00 "
		
	strings :
		$a_03_0 = {c7 44 24 04 07 00 00 00 c7 04 24 74 41 40 00 e8 90 01 04 83 ec 08 c7 44 24 08 00 00 00 00 c7 44 24 04 80 41 40 00 8b 45 0c 8b 00 89 04 24 90 00 } //1
		$a_03_1 = {c7 04 24 62 42 40 00 e8 90 01 04 8d 85 e8 fe ff ff 89 04 24 e8 90 00 } //1
		$a_01_2 = {43 3a 5c 57 69 6e 53 68 65 6c 6c 5c 57 69 6e 53 65 76 65 6e 2e 65 78 65 } //1 C:\WinShell\WinSeven.exe
		$a_01_3 = {c4 a7 2d 56 69 52 75 53 2d a7 c4 } //1
		$a_01_4 = {2d 42 69 42 69 4e 53 2d } //1 -BiBiNS-
		$a_01_5 = {a7 50 f4 4c f4 41 f4 59 a7 42 f4 59 a7 42 f4 34 f4 55 a7 47 f4 41 f4 4d f4 45 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=4
 
}