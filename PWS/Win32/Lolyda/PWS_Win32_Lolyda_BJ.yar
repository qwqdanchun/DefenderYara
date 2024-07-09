
rule PWS_Win32_Lolyda_BJ{
	meta:
		description = "PWS:Win32/Lolyda.BJ,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 06 00 00 "
		
	strings :
		$a_02_0 = {25 73 3f 61 63 74 3d 67 65 74 70 6f 73 26 64 ?? ?? 3d 25 73 26 70 6f 73 3d 26 64 ?? ?? 3d 25 64 } //10
		$a_01_1 = {41 65 6c 69 46 79 70 6f 43 } //1 AeliFypoC
		$a_01_2 = {73 77 6f 64 6e 69 57 6d 75 6e 45 } //1 swodniWmunE
		$a_01_3 = {4d 41 43 3a 25 30 32 58 2d 25 30 32 58 2d } //1 MAC:%02X-%02X-
		$a_00_4 = {25 73 25 64 2e 64 6c 6c } //1 %s%d.dll
		$a_03_5 = {25 73 5c 25 73 5f 25 64 2e 62 6d 70 [0-05] 53 48 45 4c 4c 48 4f 4f 4b } //1
	condition:
		((#a_02_0  & 1)*10+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_00_4  & 1)*1+(#a_03_5  & 1)*1) >=13
 
}