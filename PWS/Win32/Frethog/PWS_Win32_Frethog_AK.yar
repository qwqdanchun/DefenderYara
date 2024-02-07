
rule PWS_Win32_Frethog_AK{
	meta:
		description = "PWS:Win32/Frethog.AK,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {be 05 10 00 00 eb 0c be 04 10 00 00 eb 05 be 08 10 00 00 } //01 00 
		$a_01_1 = {50 68 02 00 01 20 56 ff 75 08 e8 } //01 00 
		$a_01_2 = {8d 45 e8 50 c7 45 e8 18 00 00 00 ff 75 08 c7 45 f4 01 00 00 00 c7 45 f8 94 00 00 00 ff 15 } //01 00 
		$a_01_3 = {6a 01 68 01 02 00 00 56 ff d7 53 53 68 02 02 00 00 56 } //01 00 
		$a_01_4 = {53 53 6a 10 50 ff d7 6a 32 ff 15 } //01 00 
		$a_01_5 = {23 33 32 37 37 30 } //00 00  #32770
	condition:
		any of ($a_*)
 
}