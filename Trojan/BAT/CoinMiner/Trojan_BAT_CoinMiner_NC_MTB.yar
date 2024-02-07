
rule Trojan_BAT_CoinMiner_NC_MTB{
	meta:
		description = "Trojan:BAT/CoinMiner.NC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 04 00 00 05 00 "
		
	strings :
		$a_03_0 = {7e 11 00 00 04 28 90 01 03 0a 0a 25 06 6f 90 01 03 0a 6a 6f 90 01 03 0a 25 28 90 01 03 06 6f 90 01 03 0a 25 6f 90 01 03 0a 28 90 01 03 0a 73 90 01 03 0a 25 06 6f 90 01 03 0a 6f 90 01 03 0a 6f 90 01 03 0a 74 90 01 03 01 6f 90 01 03 0a 90 00 } //01 00 
		$a_01_1 = {44 6f 77 6e 6c 6f 61 64 53 74 72 69 6e 67 } //01 00  DownloadString
		$a_01_2 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  FromBase64String
		$a_01_3 = {43 33 35 35 34 32 35 34 34 37 35 2e 43 31 32 35 35 31 39 38 35 31 33 2e 72 65 73 6f 75 72 63 65 73 } //00 00  C3554254475.C1255198513.resources
	condition:
		any of ($a_*)
 
}