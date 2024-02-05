
rule Trojan_Win32_Tilcun_gen_B{
	meta:
		description = "Trojan:Win32/Tilcun.gen!B,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {7e 22 0f b7 d7 c1 ea 08 32 13 88 16 33 d2 8a 13 66 03 fa 66 69 d7 2e 16 66 81 c2 38 15 8b fa 46 43 48 75 de } //01 00 
		$a_03_1 = {81 7d 08 21 74 9e 22 75 1d 6a 00 a1 90 01 04 50 b8 90 01 04 50 6a 03 e8 90 00 } //f6 ff 
		$a_00_2 = {53 6f 66 74 61 6e 79 } //f6 ff 
		$a_00_3 = {36 38 42 34 32 44 31 42 35 30 31 38 46 34 33 30 35 46 39 32 45 41 30 33 42 46 46 35 38 36 36 43 37 34 33 45 32 46 37 30 34 35 39 34 } //00 00 
	condition:
		any of ($a_*)
 
}