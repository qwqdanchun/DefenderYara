
rule Trojan_BAT_Lokibot_MBFW_MTB{
	meta:
		description = "Trojan:BAT/Lokibot.MBFW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {13 05 2b 22 11 04 11 05 18 6f 90 01 01 00 00 0a 13 09 11 06 11 05 18 5b 11 09 1f 10 28 90 01 01 00 00 0a 9c 11 05 18 58 13 05 11 05 11 04 6f 90 01 01 00 00 0a fe 04 13 0a 11 0a 2d cd 90 00 } //01 00 
		$a_01_1 = {31 39 61 62 34 30 39 61 65 64 35 38 } //00 00  19ab409aed58
	condition:
		any of ($a_*)
 
}