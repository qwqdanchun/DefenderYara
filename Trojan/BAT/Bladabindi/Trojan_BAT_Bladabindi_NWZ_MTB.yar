
rule Trojan_BAT_Bladabindi_NWZ_MTB{
	meta:
		description = "Trojan:BAT/Bladabindi.NWZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,14 00 14 00 08 00 00 "
		
	strings :
		$a_03_0 = {a2 25 17 08 a2 25 13 05 14 14 18 90 01 05 25 17 17 9c 25 90 00 } //3
		$a_81_1 = {74 5f 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 } //3 t_AAAAAAAAAAAAAAAAAAAAA
		$a_81_2 = {50 58 58 30 30 30 30 31 } //3 PXX00001
		$a_81_3 = {50 58 58 30 30 30 30 32 } //3 PXX00002
		$a_81_4 = {50 58 58 30 30 30 30 33 } //3 PXX00003
		$a_81_5 = {50 58 58 30 30 30 30 34 } //3 PXX00004
		$a_81_6 = {47 65 74 4d 65 74 68 6f 64 } //1 GetMethod
		$a_81_7 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
	condition:
		((#a_03_0  & 1)*3+(#a_81_1  & 1)*3+(#a_81_2  & 1)*3+(#a_81_3  & 1)*3+(#a_81_4  & 1)*3+(#a_81_5  & 1)*3+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1) >=20
 
}