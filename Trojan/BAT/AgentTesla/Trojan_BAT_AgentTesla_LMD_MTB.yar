
rule Trojan_BAT_AgentTesla_LMD_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.LMD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {2b 33 07 08 6f 90 01 03 0a 6c 23 90 01 07 3f 5b 28 90 01 03 0a b7 28 90 01 03 0a 13 04 12 04 28 90 01 03 0a 0d 06 09 6f 90 01 03 0a 26 08 17 d6 0c 08 07 6f 90 01 03 0a 32 c4 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}