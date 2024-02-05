
rule Worm_Win32_Prolaco_gen_C{
	meta:
		description = "Worm:Win32/Prolaco.gen!C,SIGNATURE_TYPE_PEHSTR_EXT,04 00 03 00 04 00 00 02 00 "
		
	strings :
		$a_01_0 = {8a 45 08 32 04 32 88 04 0a 42 39 da 75 f2 } //02 00 
		$a_03_1 = {68 00 00 00 80 53 e8 90 01 04 89 c3 56 6a 00 50 e8 90 01 04 89 c6 51 53 e8 90 01 04 83 c4 90 01 01 81 fe 90 01 04 90 03 01 01 7e 74 90 01 01 81 fe 90 01 04 7e 90 00 } //01 00 
		$a_03_2 = {80 fa 61 74 90 01 01 80 fa 62 74 90 01 01 83 ec 90 01 01 56 e8 90 01 04 83 c4 90 01 01 83 f8 02 75 90 00 } //02 00 
		$a_02_3 = {83 c4 0c 6a 40 68 00 30 00 00 ff 70 50 ff 70 34 ff 90 01 02 ff 95 90 01 04 a1 90 01 04 6a 00 ff 70 54 57 ff 70 34 ff 90 01 02 ff 95 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}