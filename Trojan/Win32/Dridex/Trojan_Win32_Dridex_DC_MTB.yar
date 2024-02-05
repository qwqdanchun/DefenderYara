
rule Trojan_Win32_Dridex_DC_MTB{
	meta:
		description = "Trojan:Win32/Dridex.DC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {03 c7 66 01 05 90 01 04 8d 04 3f 2b c8 0f b7 c3 2b c6 89 0d 90 01 04 8b 4c 24 18 83 c0 06 a3 90 01 04 8b 44 24 14 05 24 73 02 01 a3 90 01 04 89 01 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Dridex_DC_MTB_2{
	meta:
		description = "Trojan:Win32/Dridex.DC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,14 00 14 00 02 00 00 0a 00 "
		
	strings :
		$a_02_0 = {8b 55 08 03 32 8b 45 08 89 30 8b 4d f4 81 c1 90 01 04 8b 55 08 8b 02 2b c1 8b 4d 08 89 01 90 00 } //0a 00 
		$a_02_1 = {03 4d c4 8b 15 90 01 04 2b d1 89 15 90 01 04 b8 73 00 00 00 85 c0 0f 85 23 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}