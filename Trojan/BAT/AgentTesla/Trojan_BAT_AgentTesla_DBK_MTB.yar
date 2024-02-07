
rule Trojan_BAT_AgentTesla_DBK_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.DBK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 00 79 00 21 00 73 00 74 00 65 00 6d 00 2e 00 52 00 65 00 66 00 6c 00 21 00 65 00 63 00 74 00 69 00 6f 00 6e 00 2e 00 41 00 73 00 21 00 73 00 65 00 6d 00 62 00 6c 00 79 00 } //01 00  Sy!stem.Refl!ection.As!sembly
		$a_01_1 = {54 72 69 70 6c 65 44 45 53 43 72 79 70 74 6f 53 65 72 76 69 63 65 50 72 6f 76 69 64 65 72 } //01 00  TripleDESCryptoServiceProvider
		$a_01_2 = {00 47 65 74 54 79 70 65 73 00 } //01 00  䜀瑥祔数s
		$a_01_3 = {00 54 72 61 6e 73 66 6f 72 6d 46 69 6e 61 6c 42 6c 6f 63 6b 00 } //01 00 
		$a_01_4 = {00 47 65 74 53 74 72 69 6e 67 00 } //01 00 
		$a_01_5 = {00 52 65 70 6c 61 63 65 00 } //01 00 
		$a_01_6 = {00 49 6e 76 6f 6b 65 4d 65 6d 62 65 72 00 } //00 00  䤀癮歯䵥浥敢r
	condition:
		any of ($a_*)
 
}