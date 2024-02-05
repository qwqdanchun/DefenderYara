
rule Backdoor_Win32_Zegost_AK{
	meta:
		description = "Backdoor:Win32/Zegost.AK,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {23 25 64 3c 3c 3c 3c 3c 49 40 43 3c 3c 3c 3c 3c 25 73 21 } //01 00 
		$a_03_1 = {68 00 e9 a4 35 57 66 89 45 90 01 01 e8 90 00 } //01 00 
		$a_03_2 = {ff ff 77 c6 85 90 01 02 ff ff 77 88 9d 90 02 10 c6 84 1d 90 01 04 03 c6 84 1d 90 01 04 63 c6 84 1d 90 01 04 6f c6 84 1d 90 01 04 6d 80 a4 1d 90 01 04 00 90 00 } //01 00 
		$a_02_3 = {ff 45 08 81 7d 08 64 19 00 00 0f 8c 90 01 02 ff ff 90 00 } //00 00 
		$a_00_4 = {87 10 } //00 00 
	condition:
		any of ($a_*)
 
}