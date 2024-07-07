
rule Worm_Win32_Filunork_A{
	meta:
		description = "Worm:Win32/Filunork.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 05 00 00 "
		
	strings :
		$a_03_0 = {74 21 56 89 7e 04 ff 75 08 e8 90 01 04 59 85 c0 59 74 08 83 7e 1c 07 75 02 b3 01 90 00 } //1
		$a_01_1 = {75 2b 8d 9e d4 00 00 00 33 c0 53 50 50 68 2b 80 00 00 50 ff 15 } //1
		$a_03_2 = {83 f8 02 74 14 83 f8 03 74 0f 83 f8 04 74 0a 83 f8 05 74 05 83 f8 06 90 18 46 83 fe 1a 7c a0 90 00 } //1
		$a_00_3 = {53 00 2d 00 31 00 2d 00 35 00 2d 00 32 00 31 00 2d 00 25 00 30 00 2e 00 32 00 64 00 25 00 30 00 2e 00 32 00 64 00 25 00 30 00 2e 00 32 00 64 00 25 00 30 00 2e 00 32 00 64 00 25 00 30 00 2e 00 32 00 64 00 2d 00 } //1 S-1-5-21-%0.2d%0.2d%0.2d%0.2d%0.2d-
		$a_00_4 = {2d 00 73 00 20 00 2d 00 63 00 6f 00 70 00 79 00 74 00 6f 00 20 00 2d 00 62 00 6e 00 63 00 63 00 } //1 -s -copyto -bncc
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1) >=3
 
}