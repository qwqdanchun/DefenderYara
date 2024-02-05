
rule Trojan_BAT_CoinMiner_RDJ_MTB{
	meta:
		description = "Trojan:BAT/CoinMiner.RDJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {33 62 30 32 39 63 33 37 2d 34 34 62 38 2d 34 32 32 61 2d 39 64 33 39 2d 63 37 65 31 35 35 31 30 30 66 61 35 } //01 00 
		$a_01_1 = {65 66 77 72 65 74 68 36 36 } //01 00 
		$a_01_2 = {52 65 61 64 42 72 6f 61 64 63 61 73 74 65 72 } //01 00 
		$a_01_3 = {50 72 6f 78 79 } //00 00 
	condition:
		any of ($a_*)
 
}