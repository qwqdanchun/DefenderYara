
rule Trojan_Win32_Fleercivet_F{
	meta:
		description = "Trojan:Win32/Fleercivet.F,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 05 00 00 03 00 "
		
	strings :
		$a_03_0 = {f3 0f 7f 00 a0 90 01 04 34 0a a2 90 01 04 84 c0 74 0a 41 80 b9 90 01 04 00 75 f6 90 00 } //01 00 
		$a_01_1 = {63 6c 5f 75 72 6c 31 3d } //01 00  cl_url1=
		$a_01_2 = {20 5b 25 30 34 64 2d 25 30 32 64 2d 25 30 32 64 5d 20 5b 25 30 32 64 2d 25 30 32 64 2d 25 30 32 64 2d 25 30 33 64 5d 20 2d 3e 5b 5d 3c 20 20 25 73 20 20 3e } //01 00   [%04d-%02d-%02d] [%02d-%02d-%02d-%03d] ->[]<  %s  >
		$a_01_3 = {25 00 73 00 5c 00 40 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 2e 00 61 00 74 00 74 00 00 00 } //01 00 
		$a_01_4 = {25 00 73 00 5c 00 40 00 73 00 79 00 73 00 74 00 65 00 6d 00 2e 00 74 00 65 00 6d 00 70 00 00 00 } //00 00 
		$a_00_5 = {87 10 00 00 } //f2 9b 
	condition:
		any of ($a_*)
 
}