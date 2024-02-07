
rule Trojan_Win32_Movivarch_A{
	meta:
		description = "Trojan:Win32/Movivarch.A,SIGNATURE_TYPE_PEHSTR,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {79 00 61 00 70 00 73 00 6f 00 6e 00 } //01 00  yapson
		$a_01_1 = {70 00 61 00 6e 00 65 00 6c 00 73 00 6d 00 73 00 } //01 00  panelsms
		$a_01_2 = {31 00 39 00 36 00 30 00 26 00 63 00 6f 00 64 00 69 00 67 00 6f 00 } //01 00  1960&codigo
		$a_01_3 = {63 00 61 00 70 00 74 00 69 00 6f 00 6e 00 3a 00 7b 00 30 00 7d 00 } //01 00  caption:{0}
		$a_01_4 = {6f 00 74 00 68 00 65 00 72 00 43 00 6f 00 75 00 6e 00 74 00 72 00 69 00 65 00 73 00 4c 00 6f 00 63 00 61 00 74 00 69 00 6f 00 6e 00 4f 00 74 00 68 00 65 00 72 00 43 00 6f 00 75 00 6e 00 74 00 72 00 69 00 65 00 73 00 3a 00 7b 00 34 00 31 00 7d 00 } //00 00  otherCountriesLocationOtherCountries:{41}
	condition:
		any of ($a_*)
 
}