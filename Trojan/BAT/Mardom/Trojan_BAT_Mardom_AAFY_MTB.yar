
rule Trojan_BAT_Mardom_AAFY_MTB{
	meta:
		description = "Trojan:BAT/Mardom.AAFY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 04 00 00 03 00 "
		
	strings :
		$a_03_0 = {0a 03 50 6f 90 01 01 00 00 0a 6f 90 01 01 00 00 0a 0b 73 90 01 01 00 00 0a 0c 08 07 6f 90 01 01 00 00 0a 08 18 6f 90 01 01 00 00 0a 08 6f 90 01 01 00 00 0a 02 50 16 02 50 8e 69 6f 90 01 01 00 00 0a 2a 90 00 } //01 00 
		$a_01_1 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  FromBase64String
		$a_01_2 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //01 00  CreateDecryptor
		$a_01_3 = {54 72 61 6e 73 66 6f 72 6d 46 69 6e 61 6c 42 6c 6f 63 6b } //00 00  TransformFinalBlock
	condition:
		any of ($a_*)
 
}