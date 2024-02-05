
rule TrojanSpy_Win32_Ursnif_gen_S{
	meta:
		description = "TrojanSpy:Win32/Ursnif.gen!S,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {3d 33 b9 c1 2c 74 15 3d 0e fb ce 43 74 0e 3d c7 26 ac ed 74 07 3d c8 c5 96 18 75 0b } //01 00 
		$a_01_1 = {ff 45 08 33 d1 8a 4d 08 33 d6 d3 ca } //01 00 
		$a_01_2 = {66 81 78 04 64 86 75 08 8b 80 88 00 00 00 eb 03 8b 40 78 03 c7 85 c0 53 74 6c } //01 00 
		$a_01_3 = {43 8a cb d3 c0 33 c6 33 45 0c 8b f0 89 32 83 c2 04 ff 4d 08 75 ce } //01 00 
		$a_01_4 = {81 fe 76 8a 38 a0 74 1c 81 fe ee 13 e3 54 74 14 81 fe 01 d4 70 ab 74 0c } //01 00 
		$a_01_5 = {68 65 23 00 00 8d 74 03 01 e8 } //01 00 
		$a_01_6 = {2f 43 20 22 63 6f 70 79 20 22 25 73 22 20 22 25 73 22 20 2f 79 20 26 26 20 22 25 73 22 22 } //00 00 
	condition:
		any of ($a_*)
 
}