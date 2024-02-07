
rule Trojan_BAT_AgentTesla_RDF_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.RDF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 06 00 00 02 00 "
		
	strings :
		$a_03_0 = {11 07 8f 01 00 00 01 25 71 01 00 00 01 11 07 90 02 02 58 90 01 01 59 20 ff 00 00 00 5f d2 61 d2 81 01 00 00 01 1f 0a 13 10 90 00 } //01 00 
		$a_01_1 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  FromBase64String
		$a_01_2 = {4d 44 35 43 72 79 70 74 6f 53 65 72 76 69 63 65 50 72 6f 76 69 64 65 72 } //01 00  MD5CryptoServiceProvider
		$a_01_3 = {43 6f 6c 6f 72 54 72 61 6e 73 6c 61 74 6f 72 } //01 00  ColorTranslator
		$a_01_4 = {54 6f 57 69 6e 33 32 } //01 00  ToWin32
		$a_01_5 = {47 65 74 50 69 78 65 6c } //00 00  GetPixel
	condition:
		any of ($a_*)
 
}