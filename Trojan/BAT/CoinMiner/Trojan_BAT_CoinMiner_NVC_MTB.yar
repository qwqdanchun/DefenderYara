
rule Trojan_BAT_CoinMiner_NVC_MTB{
	meta:
		description = "Trojan:BAT/CoinMiner.NVC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 05 00 "
		
	strings :
		$a_03_0 = {02 28 3e 00 00 0a 13 05 09 11 05 7e 90 01 02 00 04 13 09 7e 90 01 02 00 04 7e 90 01 02 00 04 7e 90 01 02 00 04 61 7e 90 01 02 00 04 40 90 01 02 00 00 7e 90 01 02 00 04 13 09 7e 90 01 02 00 04 58 00 11 05 8e 69 6f 90 01 02 00 0a 09 6f 90 01 02 00 0a 07 6f 90 01 02 00 0a 13 06 28 90 01 02 00 0a 11 06 7e 90 01 02 00 04 13 0a 7e 90 01 02 00 04 7e 90 01 02 00 04 7e 90 01 02 00 04 61 7e 90 01 02 00 04 40 90 01 02 00 00 7e 90 01 02 00 04 13 0a 7e 90 01 02 00 04 58 00 11 06 8e 69 6f 90 01 02 00 0a 90 00 } //01 00 
		$a_01_1 = {57 69 6e 64 6f 77 73 46 6f 72 6d 73 41 70 70 33 2e 46 6f 72 6d 31 2e 72 65 73 6f 75 72 63 65 73 } //00 00  WindowsFormsApp3.Form1.resources
	condition:
		any of ($a_*)
 
}