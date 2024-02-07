
rule Trojan_BAT_Bladabindi_DI_MTB{
	meta:
		description = "Trojan:BAT/Bladabindi.DI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,1c 00 1c 00 09 00 00 14 00 "
		
	strings :
		$a_03_0 = {08 11 04 07 11 04 1e d8 1e 6f 90 01 03 0a 18 28 90 01 03 0a 9c 11 04 17 d6 13 04 11 04 09 31 e0 90 00 } //14 00 
		$a_03_1 = {08 09 07 09 9a 1f 10 28 90 01 03 0a 9c 09 17 58 0d 09 07 8e 69 3f e6 ff ff ff 90 00 } //05 00 
		$a_81_2 = {43 6f 6e 76 65 72 74 } //01 00  Convert
		$a_81_3 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  FromBase64String
		$a_81_4 = {53 70 6c 69 74 } //01 00  Split
		$a_81_5 = {54 6f 42 79 74 65 } //01 00  ToByte
		$a_81_6 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_81_7 = {41 63 74 69 76 61 74 6f 72 } //01 00  Activator
		$a_81_8 = {42 69 6e 61 72 79 54 6f 53 74 72 69 6e 67 } //00 00  BinaryToString
	condition:
		any of ($a_*)
 
}