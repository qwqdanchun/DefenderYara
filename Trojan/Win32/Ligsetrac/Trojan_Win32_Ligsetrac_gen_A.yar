
rule Trojan_Win32_Ligsetrac_gen_A{
	meta:
		description = "Trojan:Win32/Ligsetrac.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 03 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {e8 00 00 00 00 58 05 3c a3 40 00 2d 2d a3 40 00 c3 } //01 00 
		$a_01_1 = {c6 02 e9 8b 48 1c 2b 48 18 83 e9 05 8d 42 01 89 08 c3 } //01 00 
		$a_01_2 = {81 38 54 43 53 2c 74 0b 8d 43 04 81 38 48 53 54 2c 75 } //01 00 
		$a_03_3 = {6a 06 6a 30 68 02 01 00 00 56 e8 90 01 04 68 01 00 1c 00 6a 0d 68 00 01 00 00 56 e8 90 01 04 b8 90 01 04 ba 88 13 00 00 e8 90 01 04 8b f0 85 f6 0f 84 90 00 } //01 00 
		$a_01_4 = {8a 08 80 f9 41 72 0b 81 e1 ff 00 00 00 83 e9 11 88 08 42 40 83 fa 04 75 e7 } //01 00 
		$a_01_5 = {c7 00 ff ff ff ff 8d 45 ec c7 00 f0 f0 f0 f0 8d 45 f0 c7 00 f0 f0 f0 f0 8d 45 f4 c7 00 f0 f0 f0 f0 8d 45 f8 66 c7 00 f0 f0 } //00 00 
	condition:
		any of ($a_*)
 
}