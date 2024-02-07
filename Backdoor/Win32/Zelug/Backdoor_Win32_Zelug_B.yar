
rule Backdoor_Win32_Zelug_B{
	meta:
		description = "Backdoor:Win32/Zelug.B,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {50 33 c0 8a 87 99 01 00 00 33 c9 8a 8f 98 01 00 00 33 d2 8a 97 97 01 00 00 50 51 33 c0 8a 87 96 01 00 00 52 } //02 00 
		$a_01_1 = {7a 68 75 67 65 6c 69 61 6e 6e 75 } //01 00  zhugeliannu
		$a_01_2 = {25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 25 30 34 58 00 } //01 00 
		$a_01_3 = {70 6f 73 74 20 72 63 34 64 65 63 72 79 70 74 3a 25 73 00 } //00 00 
	condition:
		any of ($a_*)
 
}