
rule Ransom_Win32_Nemty_PH_MTB{
	meta:
		description = "Ransom:Win32/Nemty.PH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_02_0 = {8b 8c 24 80 00 00 00 8b 54 24 18 8b 44 24 10 89 35 90 01 04 89 35 90 01 04 8b 74 24 18 c1 ee 05 03 b4 24 90 01 01 00 00 00 03 d9 03 c2 33 d8 81 3d 90 01 06 00 00 75 90 00 } //01 00 
		$a_02_1 = {33 f3 2b fe c7 44 24 90 01 01 00 00 00 00 81 f3 90 01 04 81 6c 24 14 90 01 04 b8 90 01 04 81 6c 24 14 90 01 04 81 44 24 14 90 01 04 8b 4c 24 14 8b f7 d3 e6 03 74 24 78 81 3d 90 01 06 00 00 75 90 00 } //01 00 
		$a_02_2 = {8b d7 c1 ea 05 03 54 24 70 33 d0 33 d6 29 54 24 18 8b 44 24 74 29 44 24 10 83 6c 24 68 01 0f 85 74 fb ff ff 81 3d 90 01 06 00 00 75 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}