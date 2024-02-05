
rule Trojan_Win32_Ursnif_VDK_MTB{
	meta:
		description = "Trojan:Win32/Ursnif.VDK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 07 00 00 03 00 "
		
	strings :
		$a_02_0 = {81 c2 c0 e2 5e 01 89 15 90 01 04 a1 90 01 04 03 45 e4 8b 0d 90 01 04 89 88 90 09 06 00 8b 15 90 00 } //03 00 
		$a_02_1 = {0f b7 c0 2b e8 83 c0 f6 81 c2 10 da 07 01 03 e8 89 54 24 14 8b 44 24 10 89 15 90 01 04 89 10 90 00 } //03 00 
		$a_02_2 = {8b d3 2b d1 81 c2 4b 3c 01 00 81 c6 e0 d1 ef 01 89 15 90 01 04 89 35 90 01 04 89 b4 28 90 09 05 00 a1 90 00 } //01 00 
		$a_02_3 = {8b 4d fc 8b 45 90 01 01 03 45 90 00 } //01 00 
		$a_00_4 = {81 c3 47 86 c8 61 } //01 00 
		$a_00_5 = {33 c8 2b f9 } //03 00 
		$a_00_6 = {8b 45 e8 33 d2 b9 04 00 00 00 f7 f1 8b 45 dc 0f be 0c 10 8b 55 e8 0f b6 44 15 e4 33 c1 8b 4d e8 88 44 0d e4 eb } //00 00 
	condition:
		any of ($a_*)
 
}