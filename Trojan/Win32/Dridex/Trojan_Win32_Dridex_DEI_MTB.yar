
rule Trojan_Win32_Dridex_DEI_MTB{
	meta:
		description = "Trojan:Win32/Dridex.DEI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 05 00 00 01 00 "
		
	strings :
		$a_02_0 = {8b f1 2b f7 83 ee 0f 6b c6 24 2b c7 03 c8 8d 7a 2c 03 fe 8b 54 24 10 8b 44 24 18 05 90 01 04 89 44 24 18 89 02 90 00 } //01 00 
		$a_02_1 = {8b 44 24 0c 8d 4e 5f 8b 74 24 18 05 90 01 04 83 44 24 18 04 03 ca a3 90 01 04 89 06 6b f1 46 8b c6 2b c1 2b c7 90 00 } //01 00 
		$a_02_2 = {8b c8 2b cb 83 c1 3f 8b 54 24 18 b8 2c 00 00 00 2b c1 f7 d9 2b c3 03 f0 8b 44 24 10 05 90 01 04 89 02 90 00 } //01 00 
		$a_02_3 = {8b 4c 24 0c 81 c2 90 01 04 89 15 90 01 04 89 11 8b c8 c1 e1 05 8b d6 2b c8 03 c9 2b d1 8b 0d 90 01 04 2b d3 90 00 } //01 00 
		$a_02_4 = {2b c8 83 c1 1f 89 0d 90 01 04 8b 44 24 2c 8b 54 24 0c 81 c2 90 01 04 89 54 24 0c 89 10 8b 44 24 30 03 c7 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}