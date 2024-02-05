
rule Trojan_BAT_AgentTesla_ASDJ_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ASDJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {07 09 07 8e 69 5d 91 08 09 08 6f 90 01 01 00 00 0a 5d 6f 90 01 01 00 00 0a 61 07 09 17 58 07 8e 69 5d 91 59 20 00 01 00 00 58 13 08 07 09 07 8e 69 5d 11 08 20 00 01 00 00 5d d2 9c 09 15 58 0d 00 09 16 fe 04 16 fe 01 13 09 11 09 2d 90 00 } //01 00 
		$a_03_1 = {07 09 07 8e 69 5d 91 08 09 08 6f 90 01 01 01 00 0a 5d 6f 90 01 01 01 00 0a 61 07 09 17 58 07 8e 69 5d 91 59 20 00 01 00 00 58 13 08 07 09 07 8e 69 5d 11 08 20 00 01 00 00 5d d2 9c 09 15 58 0d 09 16 2f 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}