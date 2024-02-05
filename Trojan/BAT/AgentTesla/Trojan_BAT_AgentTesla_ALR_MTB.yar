
rule Trojan_BAT_AgentTesla_ALR_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ALR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 03 00 00 0a 00 "
		
	strings :
		$a_03_0 = {25 16 03 a2 25 13 05 14 14 17 8d 90 01 03 01 25 16 17 9c 25 13 06 28 90 01 03 0a 11 06 16 91 2d 02 2b 0b 11 05 16 9a 28 90 01 03 0a 10 01 74 90 01 03 01 0b 1f 0b 0c 07 90 00 } //02 00 
		$a_80_1 = {47 65 74 54 79 70 65 } //GetType  02 00 
		$a_80_2 = {53 74 6f 70 47 72 65 79 } //StopGrey  00 00 
	condition:
		any of ($a_*)
 
}