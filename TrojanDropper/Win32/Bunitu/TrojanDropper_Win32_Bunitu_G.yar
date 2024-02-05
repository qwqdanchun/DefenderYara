
rule TrojanDropper_Win32_Bunitu_G{
	meta:
		description = "TrojanDropper:Win32/Bunitu.G,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 02 00 "
		
	strings :
		$a_03_0 = {87 de 42 42 03 c3 4b 75 fa 5b bf 90 01 04 0f 31 c1 c0 03 50 48 8f 07 90 09 0a 00 90 02 08 d1 e6 90 00 } //02 00 
		$a_03_1 = {8b fa b9 2c 01 00 00 f2 ae 5a 57 c6 47 ff 90 03 01 04 22 21 fe 47 ff b0 90 02 10 83 c7 01 8d 35 90 01 04 b9 06 00 00 00 90 00 } //02 00 
		$a_03_2 = {13 81 68 2d 90 01 04 83 68 2d 03 e8 90 01 04 e8 90 01 04 b8 02 00 00 80 e8 90 01 04 b9 00 00 00 00 83 3d 90 01 04 02 75 0f 3b c1 75 0b 90 00 } //01 00 
		$a_01_3 = {50 8b c8 8b 41 3c 8b 54 08 78 03 d1 8b 52 1c 8b 14 11 01 14 24 c3 } //00 00 
		$a_00_4 = {7e 15 } //00 00 
	condition:
		any of ($a_*)
 
}