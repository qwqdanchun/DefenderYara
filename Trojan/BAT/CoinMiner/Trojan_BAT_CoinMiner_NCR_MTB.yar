
rule Trojan_BAT_CoinMiner_NCR_MTB{
	meta:
		description = "Trojan:BAT/CoinMiner.NCR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 02 00 00 "
		
	strings :
		$a_03_0 = {20 00 01 00 00 6f 90 01 02 00 0a 11 05 17 6f 90 01 02 00 0a 11 05 0b 03 2d 1f 07 06 1f 10 6f 90 01 02 00 0a 28 90 01 02 00 0a 72 90 01 02 00 70 6f 90 01 02 00 0a 6f 90 01 02 00 0a 90 00 } //5
		$a_03_1 = {72 63 31 00 70 28 90 01 02 00 06 28 90 01 02 00 0a 72 90 01 02 00 70 28 90 01 02 00 06 6f 90 01 02 00 0a 72 90 01 02 00 70 28 90 01 02 00 06 1f 18 6f 90 01 02 00 0a 14 19 8d 90 01 02 00 01 0a 06 16 02 a2 06 17 03 a2 06 18 04 90 00 } //5
	condition:
		((#a_03_0  & 1)*5+(#a_03_1  & 1)*5) >=10
 
}