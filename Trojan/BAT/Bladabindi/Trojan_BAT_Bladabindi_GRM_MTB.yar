
rule Trojan_BAT_Bladabindi_GRM_MTB{
	meta:
		description = "Trojan:BAT/Bladabindi.GRM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 0a 00 "
		
	strings :
		$a_03_0 = {73 23 01 00 0a 0a 00 06 28 90 01 03 06 8d 8f 00 00 01 25 d0 d0 00 00 04 28 90 01 03 0a 6f 90 01 03 0a 00 06 28 90 01 03 06 8d 8f 00 00 01 25 d0 d1 00 00 04 28 90 01 03 0a 6f 90 01 03 0a 00 06 6f 90 01 03 0a 02 28 90 01 03 06 02 8e 69 6f 90 01 03 0a 0b de 10 06 14 fe 01 0c 08 2d 07 06 6f 90 01 03 0a 00 dc 00 07 2a 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}