
rule Trojan_BAT_AgentTesla_DAI_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.DAI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 03 00 00 03 00 "
		
	strings :
		$a_03_0 = {0d 16 0a 2b 12 09 06 08 06 9a 1f 10 28 90 01 01 00 00 0a d2 9c 06 17 58 0a 06 08 8e 69 fe 04 13 08 11 08 2d e2 90 00 } //01 00 
		$a_01_1 = {52 65 70 6c 61 63 65 } //01 00  Replace
		$a_01_2 = {53 70 6c 69 74 } //00 00  Split
	condition:
		any of ($a_*)
 
}