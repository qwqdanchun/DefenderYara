
rule Trojan_BAT_AgentTesla_KGO_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.KGO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {00 58 30 46 54 5f 46 54 32 00 } //01 00  堀䘰彔呆2
		$a_01_1 = {00 58 30 46 54 5f 46 54 31 00 } //01 00  堀䘰彔呆1
		$a_01_2 = {00 54 44 65 73 44 65 63 72 79 70 74 00 } //01 00 
		$a_01_3 = {50 00 61 00 6e 00 61 00 6d 00 65 00 72 00 61 00 2e 00 50 00 6f 00 72 00 73 00 63 00 68 00 65 00 } //01 00  Panamera.Porsche
		$a_01_4 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  FromBase64String
		$a_01_5 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //01 00  CreateDecryptor
		$a_01_6 = {43 00 72 00 65 00 61 00 74 00 65 00 49 00 6e 00 73 00 74 00 61 00 6e 00 63 00 65 00 } //01 00  CreateInstance
		$a_01_7 = {47 65 74 54 79 70 65 } //00 00  GetType
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_AgentTesla_KGO_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.KGO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {70 0c 07 28 90 01 03 0a 03 6f 90 01 03 0a 6f 90 01 03 0a 0d 06 09 6f 90 01 03 0a 00 06 18 6f 90 01 03 0a 00 02 28 90 01 03 0a 13 04 28 90 01 03 0a 06 6f 90 01 03 0a 11 04 16 11 04 8e 69 6f 90 01 03 0a 6f 90 01 03 0a 0c 08 13 05 2b 90 00 } //01 00 
		$a_01_1 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  FromBase64String
		$a_01_2 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //01 00  CreateDecryptor
		$a_01_3 = {43 00 72 00 65 00 61 00 74 00 65 00 49 00 6e 00 73 00 74 00 61 00 6e 00 63 00 65 00 } //01 00  CreateInstance
		$a_01_4 = {47 65 74 54 79 70 65 } //00 00  GetType
	condition:
		any of ($a_*)
 
}