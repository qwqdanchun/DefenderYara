
rule PWS_Win32_Zbot_gen_Q{
	meta:
		description = "PWS:Win32/Zbot.gen!Q,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 05 00 00 "
		
	strings :
		$a_03_0 = {33 c9 32 c0 38 0e 7e 1c b2 90 01 01 53 8a 5c 31 01 02 da fe c0 88 1c 39 0f be 1e 0f b6 c8 80 c2 02 3b cb 7c e8 5b 0f b6 c0 c6 04 38 00 8b c7 c3 90 00 } //3
		$a_02_1 = {72 00 6f 00 6f 00 74 00 90 02 10 67 00 72 00 62 00 90 02 06 2e 00 74 00 78 00 74 00 90 02 40 63 00 6f 00 6f 00 6b 00 69 00 65 00 3a 00 90 02 50 4d 00 61 00 63 00 72 00 6f 00 6d 00 65 00 64 00 69 00 61 00 5c 00 46 00 6c 00 61 00 73 00 68 00 20 00 50 00 6c 00 61 00 79 00 65 00 72 00 90 02 06 2a 00 2e 00 73 00 6f 00 6c 00 90 00 } //2
		$a_01_2 = {3d 2d 3d 2d 50 61 4e 64 41 21 } //1 =-=-PaNdA!
		$a_01_3 = {2d 21 2d 40 68 6a 30 31 4e 2e } //1 -!-@hj01N.
		$a_02_4 = {7a 69 70 3d 90 02 10 26 6e 61 6d 65 3d 90 02 10 26 71 3d 90 02 10 26 69 74 65 6d 3d 90 02 10 26 69 64 3d 90 02 10 26 72 64 70 3d 90 00 } //1
	condition:
		((#a_03_0  & 1)*3+(#a_02_1  & 1)*2+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_02_4  & 1)*1) >=3
 
}