
rule Trojan_Win32_Tibrun_B{
	meta:
		description = "Trojan:Win32/Tibrun.B,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {8b 50 04 8b 00 8b 40 0c 83 c0 02 89 82 b8 00 00 00 8b 52 18 f6 c6 05 75 21 bf 90 01 04 8b 0d 90 01 04 a1 90 01 04 8b 17 33 d0 89 17 83 c7 04 e2 f5 b8 ff ff ff ff c3 90 00 } //01 00 
		$a_01_1 = {b9 19 00 00 00 f3 a4 c7 07 64 65 6c 20 83 c7 04 b8 2f 41 3a 53 ab 66 b8 2f 41 66 ab 66 b8 20 22 66 ab 68 04 01 00 00 57 } //01 00 
		$a_01_2 = {22 62 61 64 22 20 3a 20 00 2c 20 22 62 72 75 74 69 6e 67 22 20 3a } //01 00 
		$a_02_3 = {50 4f 53 54 90 02 10 2f 77 77 77 2f 63 6d 64 2e 70 68 70 90 00 } //00 00 
		$a_00_4 = {87 } //10 00 
	condition:
		any of ($a_*)
 
}