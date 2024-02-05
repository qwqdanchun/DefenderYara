
rule TrojanSpy_Win32_Ursnif_gen_L{
	meta:
		description = "TrojanSpy:Win32/Ursnif.gen!L,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 06 00 00 01 00 "
		
	strings :
		$a_03_0 = {8b 4e 3c 83 65 f4 00 03 ce 90 03 06 09 66 81 79 04 64 86 b8 64 86 00 00 66 39 41 04 75 08 8b 89 88 00 00 00 eb 03 90 00 } //01 00 
		$a_03_1 = {8b 48 3c 8b 55 90 01 01 03 c8 8d 41 44 8b 08 8b 42 3c 03 c2 89 48 44 83 c0 90 01 01 83 20 00 90 00 } //01 00 
		$a_01_2 = {80 39 36 75 04 8b c1 eb 09 c6 00 36 c6 40 01 34 } //01 00 
		$a_01_3 = {48 83 ec 28 8b c1 8b ca ff d0 48 83 c4 28 c3 } //01 00 
		$a_01_4 = {0f b7 48 06 0f b7 50 14 6b c9 28 53 03 c8 56 8d 74 0a 40 eb 09 66 3d } //01 00 
		$a_01_5 = {2f 55 50 44 00 00 00 00 2f 73 64 20 25 6c 75 } //00 00 
	condition:
		any of ($a_*)
 
}