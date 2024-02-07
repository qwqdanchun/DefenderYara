
rule Trojan_Win32_Cleaman_B{
	meta:
		description = "Trojan:Win32/Cleaman.B,SIGNATURE_TYPE_PEHSTR_EXT,06 00 05 00 08 00 00 02 00 "
		
	strings :
		$a_03_0 = {6a 02 56 ff d7 b8 90 01 01 87 00 00 33 c9 66 3b d8 0f 94 c1 90 00 } //02 00 
		$a_01_1 = {8a 04 31 d0 c8 88 04 31 8b c6 41 8d 78 01 8b ff 8a 10 40 84 d2 75 f9 } //02 00 
		$a_01_2 = {75 04 c6 45 00 e9 8d 45 01 6a 04 50 89 44 24 18 } //02 00 
		$a_01_3 = {8a 08 d0 c9 88 08 40 80 38 00 75 f4 80 3d } //01 00 
		$a_01_4 = {67 65 74 41 63 74 69 76 65 44 65 73 6b 74 6f 70 } //01 00  getActiveDesktop
		$a_01_5 = {73 77 2d 64 6c 6c 2e 64 6c 6c } //01 00  sw-dll.dll
		$a_01_6 = {61 75 64 69 74 70 6f 6c } //01 00  auditpol
		$a_01_7 = {2e 6c 6f 67 00 00 00 00 4c 6f 61 64 4c 69 62 72 61 72 79 45 78 57 00 00 64 70 6c 61 79 73 76 72 } //00 00 
	condition:
		any of ($a_*)
 
}