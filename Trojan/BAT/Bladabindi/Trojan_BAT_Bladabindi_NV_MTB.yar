
rule Trojan_BAT_Bladabindi_NV_MTB{
	meta:
		description = "Trojan:BAT/Bladabindi.NV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {26 07 16 28 90 01 03 0a 0c 06 16 73 90 01 03 0a 0d 08 8d 90 01 03 01 13 04 90 00 } //01 00 
		$a_01_1 = {57 b5 a2 3d 09 07 00 00 00 00 00 00 00 00 00 00 02 00 00 00 67 00 00 00 18 00 00 00 26 00 00 00 8b 00 00 00 26 00 00 00 71 00 00 00 24 00 00 00 05 } //01 00 
		$a_01_2 = {33 33 32 62 65 34 64 38 39 36 35 30 } //00 00 
	condition:
		any of ($a_*)
 
}