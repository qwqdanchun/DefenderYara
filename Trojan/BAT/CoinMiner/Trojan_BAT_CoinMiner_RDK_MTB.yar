
rule Trojan_BAT_CoinMiner_RDK_MTB{
	meta:
		description = "Trojan:BAT/CoinMiner.RDK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 03 00 00 02 00 "
		
	strings :
		$a_01_0 = {02 03 04 6f 37 00 00 0a 2a } //02 00 
		$a_01_1 = {02 03 04 73 35 00 00 0a 2a } //02 00 
		$a_01_2 = {02 03 6f 34 00 00 0a 2a } //00 00 
	condition:
		any of ($a_*)
 
}