
rule Ransom_Win32_Shade_PA_MTB{
	meta:
		description = "Ransom:Win32/Shade.PA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,15 00 15 00 05 00 00 14 00 "
		
	strings :
		$a_02_0 = {81 ff f5 11 00 00 75 13 56 ff 15 90 01 03 00 8b 0d 90 01 03 00 8b 95 90 01 02 ff ff 69 c9 fd 43 03 00 81 c1 c3 9e 26 00 8b c1 89 0d 90 01 03 00 c1 e8 10 30 04 13 43 3b df 7c c6 90 00 } //14 00 
		$a_02_1 = {81 ff f5 11 00 00 75 04 6a 00 ff d3 69 0d 90 01 04 fd 43 03 00 8d 04 2e 46 81 c1 c3 9e 26 00 89 0d 90 01 04 c1 e9 10 30 08 3b f7 7c d1 90 00 } //14 00 
		$a_02_2 = {81 ff f5 11 00 00 75 0a 6a 00 ff d3 8b 8d 90 01 02 ff ff 69 05 90 01 04 fd 43 03 00 05 c3 9e 26 00 a3 90 01 04 c1 e8 10 30 04 0e 46 3b f7 7c cf 90 00 } //01 00 
		$a_02_3 = {51 6a 40 ff 35 90 01 04 ff 35 90 01 04 ff d0 90 00 } //01 00 
		$a_02_4 = {51 6a 40 50 ff 35 90 01 04 ff 15 90 01 03 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}