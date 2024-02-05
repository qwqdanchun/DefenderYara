
rule Trojan_BAT_ClipBanker_AACK_MTB{
	meta:
		description = "Trojan:BAT/ClipBanker.AACK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 01 00 00 04 00 "
		
	strings :
		$a_03_0 = {04 08 16 07 1f 0f 1f 10 28 90 01 01 01 00 06 7e 90 01 01 00 00 04 06 07 28 90 01 01 00 00 06 7e 90 01 01 00 00 04 06 18 28 90 01 01 00 00 06 7e 90 01 01 00 00 04 06 19 28 90 01 01 00 00 06 7e 90 01 01 00 00 04 06 28 90 01 01 00 00 06 0d 7e 90 01 01 00 00 04 09 03 16 03 8e 69 28 90 01 01 00 00 06 2a 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}