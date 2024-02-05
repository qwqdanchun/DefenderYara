
rule Trojan_BAT_CoinMiner_MBDO_MTB{
	meta:
		description = "Trojan:BAT/CoinMiner.MBDO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {34 44 35 41 39 29 29 33 29 29 29 30 34 29 29 29 5b 5b 5b 5b 5b 5b 5b 5b 29 29 42 38 29 29 29 29 29 29 29 34 } //01 00 
		$a_01_1 = {29 30 38 29 29 29 29 45 31 5b 5b 42 41 30 45 29 42 34 30 39 43 44 32 31 42 38 30 31 34 43 43 44 32 31 35 34 36 38 36 39 37 33 32 30 37 30 37 32 36 5b 5b 36 37 37 32 36 31 36 44 } //00 00 
	condition:
		any of ($a_*)
 
}