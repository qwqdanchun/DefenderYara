
rule Backdoor_Win32_Wkysol_B{
	meta:
		description = "Backdoor:Win32/Wkysol.B,SIGNATURE_TYPE_PEHSTR_EXT,05 00 03 00 07 00 00 02 00 "
		
	strings :
		$a_01_0 = {8a 54 04 0c 8a 5c 04 50 32 d3 88 14 30 40 3b c1 7c ee } //02 00 
		$a_03_1 = {83 f9 02 0f 82 90 01 02 00 00 80 7d 00 63 0f 85 90 01 02 00 00 80 7d 01 64 0f 85 90 01 02 00 00 80 7d 02 20 90 00 } //02 00 
		$a_03_2 = {8d 54 24 14 8d 44 24 28 52 68 f3 01 00 00 50 56 ff d7 85 c0 0f 84 90 01 02 00 00 8b 44 24 14 85 c0 77 de 90 00 } //01 00 
		$a_01_3 = {31 39 39 39 30 38 31 37 00 } //01 00 
		$a_01_4 = {6b 79 73 5f 61 6c 6c 6f 77 5f 67 65 74 2e 61 73 70 3f 6e 61 6d 65 3d 67 65 74 6b 79 73 2e 6b 79 73 } //01 00  kys_allow_get.asp?name=getkys.kys
		$a_01_5 = {6b 79 73 5f 61 6c 6c 6f 77 5f 70 75 74 2e 61 73 70 3f 74 79 70 65 3d } //01 00  kys_allow_put.asp?type=
		$a_01_6 = {50 49 44 3a 25 35 64 20 20 20 20 50 41 54 48 3a 25 73 } //00 00  PID:%5d    PATH:%s
	condition:
		any of ($a_*)
 
}