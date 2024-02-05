
rule Backdoor_Win32_Tofsee_F{
	meta:
		description = "Backdoor:Win32/Tofsee.F,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 06 00 00 04 00 "
		
	strings :
		$a_03_0 = {8b 54 24 04 8b 44 24 08 53 56 b3 90 01 01 8d 34 02 eb 14 0f b6 0a 8b c1 c1 e8 03 c0 e1 05 0a c1 32 c3 88 02 8a d8 42 3b d6 72 e8 90 00 } //04 00 
		$a_03_1 = {8b 4c 24 04 8b 54 24 08 56 b0 90 01 01 8d 34 11 eb 14 30 01 0f b6 11 8b c2 c1 e8 05 c0 e2 03 0a c2 88 01 34 c6 41 3b ce 72 e8 90 00 } //02 00 
		$a_01_2 = {5f 5f 52 52 5f 42 4f 54 5f 5f 00 } //01 00 
		$a_01_3 = {5f 50 41 53 53 57 44 5f 00 } //01 00 
		$a_01_4 = {5f 41 43 43 5f 00 } //01 00 
		$a_01_5 = {68 74 74 70 25 73 3a 2f 2f 25 73 00 } //00 00 
	condition:
		any of ($a_*)
 
}