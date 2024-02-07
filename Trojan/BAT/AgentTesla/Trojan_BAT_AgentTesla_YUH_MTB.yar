
rule Trojan_BAT_AgentTesla_YUH_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.YUH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 06 00 00 02 00 "
		
	strings :
		$a_03_0 = {0a 0b 07 28 90 01 03 0a 72 90 01 03 70 6f 90 01 03 0a 6f 90 01 03 0a 0c 73 90 01 03 0a 0d 09 08 6f 90 01 03 0a 00 09 18 6f 90 01 03 0a 00 09 6f 90 01 03 0a 06 16 06 8e 69 6f 90 01 03 0a 13 04 17 13 06 12 06 28 90 01 03 0a 90 00 } //01 00 
		$a_01_1 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //01 00  CreateDecryptor
		$a_01_2 = {54 72 61 6e 73 66 6f 72 6d 46 69 6e 61 6c 42 6c 6f 63 6b } //01 00  TransformFinalBlock
		$a_01_3 = {43 6f 6d 70 75 74 65 48 61 73 68 } //01 00  ComputeHash
		$a_01_4 = {47 65 74 42 79 74 65 73 } //01 00  GetBytes
		$a_01_5 = {48 00 34 00 46 00 5a 00 54 00 47 00 43 00 58 00 38 00 37 00 58 00 34 00 38 00 42 00 46 00 37 00 34 00 47 00 42 00 35 00 38 00 38 00 } //00 00  H4FZTGCX87X48BF74GB588
	condition:
		any of ($a_*)
 
}