
rule Trojan_BAT_Bladabindi_ZXH_MTB{
	meta:
		description = "Trojan:BAT/Bladabindi.ZXH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {0a 00 06 1e 8d 90 01 03 01 25 d0 90 01 03 04 28 90 01 03 0a 6f 90 01 03 0a 00 06 1f 18 8d 90 01 03 01 25 d0 90 01 03 04 28 90 01 03 0a 6f 90 01 03 0a 00 06 6f 90 01 03 0a 02 16 02 8e 69 6f 90 01 03 0a 0b de 0b 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}