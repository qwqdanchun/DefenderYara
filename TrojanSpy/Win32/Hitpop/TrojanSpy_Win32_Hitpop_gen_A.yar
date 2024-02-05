
rule TrojanSpy_Win32_Hitpop_gen_A{
	meta:
		description = "TrojanSpy:Win32/Hitpop.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,08 00 07 00 03 00 00 05 00 "
		
	strings :
		$a_03_0 = {be 01 00 00 00 47 83 ff 10 7e 05 bf 01 00 00 00 8d 45 d8 8b 55 ec 8a 54 3a ff e8 90 01 04 8b 45 d8 e8 90 01 04 8b 55 f0 0f b6 54 32 ff 33 c2 89 45 f4 90 01 28 75 a7 90 00 } //02 00 
		$a_01_1 = {6d 79 64 6f 77 6e 00 } //01 00 
		$a_01_2 = {6d 79 6d 61 69 6e 00 } //00 00 
	condition:
		any of ($a_*)
 
}