
rule Trojan_BAT_SnakeKeylogger_F_MTB{
	meta:
		description = "Trojan:BAT/SnakeKeylogger.F!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 02 00 "
		
	strings :
		$a_03_0 = {06 4a 1a 28 90 01 01 00 00 0a 90 09 0c 00 28 90 01 01 00 00 0a 28 90 01 01 00 00 0a 16 07 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}