
rule Trojan_BAT_Nanobot_SPBM_MTB{
	meta:
		description = "Trojan:BAT/Nanobot.SPBM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 01 00 00 04 00 "
		
	strings :
		$a_03_0 = {11 04 12 05 28 90 01 03 0a 08 07 09 18 6f 90 01 03 0a 1f 10 28 90 01 03 0a 6f 90 01 03 0a dd 0f 00 00 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}