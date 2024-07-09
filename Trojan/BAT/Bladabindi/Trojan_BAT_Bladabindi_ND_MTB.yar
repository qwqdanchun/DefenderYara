
rule Trojan_BAT_Bladabindi_ND_MTB{
	meta:
		description = "Trojan:BAT/Bladabindi.ND!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 "
		
	strings :
		$a_03_0 = {11 0c 25 17 58 13 0c 93 11 ?? 61 60 13 07 11 1c } //5
		$a_03_1 = {11 0c 25 17 58 13 0c 93 11 ?? 61 60 13 07 11 1b } //5
		$a_03_2 = {11 0c 25 17 58 13 0c 93 11 ?? 61 60 13 07 11 1f } //5
		$a_03_3 = {11 0c 25 17 58 13 0c 93 11 ?? 61 60 13 07 11 1e } //5
		$a_03_4 = {11 0c 25 17 58 13 0c 93 11 ?? 61 60 13 07 11 18 } //5
		$a_03_5 = {11 0c 25 17 58 13 0c 93 11 ?? 61 60 13 07 11 19 } //5
	condition:
		((#a_03_0  & 1)*5+(#a_03_1  & 1)*5+(#a_03_2  & 1)*5+(#a_03_3  & 1)*5+(#a_03_4  & 1)*5+(#a_03_5  & 1)*5) >=5
 
}