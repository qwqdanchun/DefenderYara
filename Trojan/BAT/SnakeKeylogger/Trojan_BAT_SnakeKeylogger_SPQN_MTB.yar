
rule Trojan_BAT_SnakeKeylogger_SPQN_MTB{
	meta:
		description = "Trojan:BAT/SnakeKeylogger.SPQN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 01 00 00 04 00 "
		
	strings :
		$a_03_0 = {0b 07 18 6f 90 01 03 0a 00 07 18 6f 90 01 03 0a 00 07 03 28 90 01 03 0a 6f 90 01 03 0a 00 07 6f 90 01 03 0a 0c 28 90 01 03 0a 08 06 16 06 8e 69 6f 90 01 03 0a 6f 90 01 03 0a 0d 2b 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}