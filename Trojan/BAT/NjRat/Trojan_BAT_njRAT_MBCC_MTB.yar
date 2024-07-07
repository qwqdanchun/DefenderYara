
rule Trojan_BAT_njRAT_MBCC_MTB{
	meta:
		description = "Trojan:BAT/njRAT.MBCC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {50 00 71 00 51 00 4c 00 42 00 5a 00 39 00 34 00 6c 00 45 00 48 00 46 00 77 00 55 00 69 00 6f 00 6c 00 65 00 37 00 79 00 36 00 59 00 79 00 34 00 58 00 } //1 PqQLBZ94lEHFwUiole7y6Yy4X
		$a_01_1 = {2b 00 4c 00 4e 00 72 00 58 00 70 00 52 00 6b 00 4c 00 35 00 6b 00 67 00 74 00 33 00 4d 00 72 00 76 00 43 00 41 00 54 00 4b 00 6e 00 67 00 2f 00 78 00 37 00 69 00 45 00 45 00 79 00 4f 00 33 00 78 00 42 00 64 00 } //1 +LNrXpRkL5kgt3MrvCATKng/x7iEEyO3xBd
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}
rule Trojan_BAT_njRAT_MBCC_MTB_2{
	meta:
		description = "Trojan:BAT/njRAT.MBCC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 03 00 00 "
		
	strings :
		$a_01_0 = {54 00 55 00 72 00 70 00 5a 00 45 00 6f 00 54 00 68 00 36 00 65 00 48 00 50 00 53 00 56 00 74 00 7a 00 39 00 6d 00 6b 00 65 00 56 00 48 00 76 00 31 00 4f 00 45 00 51 00 4d 00 5a 00 35 00 59 00 31 00 } //5 TUrpZEoTh6eHPSVtz9mkeVHv1OEQMZ5Y1
		$a_01_1 = {51 00 74 00 6b 00 45 00 4c 00 50 00 37 00 71 00 47 00 72 00 4c 00 78 00 33 00 34 00 42 00 4e 00 62 00 64 00 57 00 44 00 78 00 73 00 77 00 64 00 52 00 34 00 61 00 } //5 QtkELP7qGrLx34BNbdWDxswdR4a
		$a_01_2 = {52 69 6a 6e 44 65 63 72 79 70 74 } //1 RijnDecrypt
	condition:
		((#a_01_0  & 1)*5+(#a_01_1  & 1)*5+(#a_01_2  & 1)*1) >=11
 
}