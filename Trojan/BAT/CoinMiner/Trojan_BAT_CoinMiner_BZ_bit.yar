
rule Trojan_BAT_CoinMiner_BZ_bit{
	meta:
		description = "Trojan:BAT/CoinMiner.BZ!bit,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {6d 00 61 00 73 00 74 00 65 00 72 00 2f 00 76 00 65 00 6e 00 64 00 6f 00 72 00 2f 00 67 00 6c 00 6f 00 62 00 61 00 6c 00 2f 00 41 00 64 00 6f 00 62 00 65 00 55 00 70 00 64 00 61 00 74 00 65 00 4d 00 61 00 6e 00 61 00 67 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_1 = {6d 00 61 00 73 00 74 00 65 00 72 00 2f 00 76 00 65 00 6e 00 64 00 6f 00 72 00 2f 00 67 00 6c 00 6f 00 62 00 61 00 6c 00 2f 00 41 00 64 00 6f 00 62 00 65 00 55 00 70 00 64 00 61 00 74 00 65 00 57 00 6f 00 72 00 6b 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_2 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 67 00 69 00 74 00 68 00 75 00 62 00 2e 00 63 00 6f 00 6d 00 2f 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 6d 00 69 00 73 00 74 00 36 00 39 00 39 00 36 00 } //00 00 
	condition:
		any of ($a_*)
 
}