
rule TrojanDropper_Win32_Cutwail_Y{
	meta:
		description = "TrojanDropper:Win32/Cutwail.Y,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 05 00 00 01 00 "
		
	strings :
		$a_02_0 = {64 8b 0d 18 00 00 00 8b 49 30 8b 1d 90 01 02 40 00 89 59 08 c3 90 00 } //01 00 
		$a_02_1 = {25 00 00 ff ff 05 00 90 01 01 00 90 00 } //01 00 
		$a_02_2 = {30 1f 80 c3 90 01 01 e8 1a 00 00 00 30 0f 80 c1 90 01 01 e8 10 00 00 00 30 17 80 c2 90 01 01 e8 06 00 00 00 eb e0 90 00 } //01 00 
		$a_02_3 = {8b f0 c1 e6 03 ff 15 90 01 04 8b e5 ff 15 90 01 04 83 c0 90 01 01 03 c6 90 00 } //01 00 
		$a_02_4 = {33 f6 0b f0 c1 e6 03 8d 1d 90 01 04 ff 93 90 01 04 8b e5 8d 15 90 01 04 ff 92 90 01 04 b9 90 01 04 03 c1 03 c6 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}