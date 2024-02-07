
rule Trojan_BAT_Lokibot_PAGA_MTB{
	meta:
		description = "Trojan:BAT/Lokibot.PAGA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 06 00 00 02 00 "
		
	strings :
		$a_03_0 = {0d 09 08 6f 90 01 03 0a 00 09 18 6f 90 01 03 0a 00 09 6f 90 01 03 0a 06 16 06 8e 69 6f 90 01 03 0a 13 04 11 04 03 28 90 01 03 06 28 90 01 03 06 90 00 } //01 00 
		$a_01_1 = {4e 00 35 00 34 00 56 00 48 00 51 00 48 00 37 00 38 00 47 00 } //01 00  N54VHQH78G
		$a_01_2 = {42 00 61 00 6d 00 62 00 69 00 } //01 00  Bambi
		$a_01_3 = {43 6f 6d 70 75 74 65 48 61 73 68 } //01 00  ComputeHash
		$a_01_4 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //01 00  CreateDecryptor
		$a_01_5 = {54 72 61 6e 73 66 6f 72 6d 46 69 6e 61 6c 42 6c 6f 63 6b } //00 00  TransformFinalBlock
	condition:
		any of ($a_*)
 
}