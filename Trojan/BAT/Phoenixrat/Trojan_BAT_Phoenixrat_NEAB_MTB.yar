
rule Trojan_BAT_Phoenixrat_NEAB_MTB{
	meta:
		description = "Trojan:BAT/Phoenixrat.NEAB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 02 00 00 0a 00 "
		
	strings :
		$a_03_0 = {25 16 11 64 a2 25 17 06 11 66 17 28 90 01 01 00 00 0a 25 26 a2 25 18 07 11 66 17 28 90 01 01 00 00 0a 25 26 a2 25 19 08 11 66 17 90 00 } //05 00 
		$a_01_1 = {43 72 79 70 74 6f 4f 62 66 75 73 63 61 74 6f 72 5f 4f 75 74 70 75 74 } //00 00  CryptoObfuscator_Output
	condition:
		any of ($a_*)
 
}