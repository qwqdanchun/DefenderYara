
rule Trojan_BAT_Seraph_AAJR_MTB{
	meta:
		description = "Trojan:BAT/Seraph.AAJR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 03 00 00 03 00 "
		
	strings :
		$a_03_0 = {11 0f 11 0f 28 90 01 01 00 00 06 11 0f 28 90 01 01 00 00 06 28 90 01 01 00 00 06 13 0b 20 03 00 00 00 7e 90 01 01 00 00 04 7b 90 01 01 00 00 04 39 90 01 01 ff ff ff 26 20 03 00 00 00 38 90 01 01 ff ff ff 11 0f 20 ab 1d 00 00 28 90 01 01 00 00 06 28 90 01 01 00 00 06 28 90 01 01 00 00 06 20 02 00 00 00 fe 0e 08 00 38 90 01 01 ff ff ff 73 90 01 01 00 00 0a 13 03 90 00 } //01 00 
		$a_01_1 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  FromBase64String
		$a_01_2 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //00 00  CreateDecryptor
	condition:
		any of ($a_*)
 
}