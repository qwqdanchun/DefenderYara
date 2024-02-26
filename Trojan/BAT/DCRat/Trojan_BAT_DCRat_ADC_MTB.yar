
rule Trojan_BAT_DCRat_ADC_MTB{
	meta:
		description = "Trojan:BAT/DCRat.ADC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_01_0 = {0a 0b 16 0c 07 8e 69 17 59 0d 38 18 00 00 00 07 08 91 13 04 07 08 07 09 91 9c 07 09 11 04 9c 08 17 58 0c 09 17 59 0d 08 09 3f } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_DCRat_ADC_MTB_2{
	meta:
		description = "Trojan:BAT/DCRat.ADC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 02 00 00 02 00 "
		
	strings :
		$a_01_0 = {0d 07 09 16 11 05 6f 17 00 00 0a 26 16 13 06 2b 11 09 11 06 09 11 06 91 04 61 d2 9c 11 06 17 58 13 06 11 06 09 8e 69 32 e8 } //01 00 
		$a_01_1 = {44 00 43 00 52 00 61 00 74 00 4c 00 6f 00 61 00 64 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //00 00  DCRatLoader.exe
	condition:
		any of ($a_*)
 
}