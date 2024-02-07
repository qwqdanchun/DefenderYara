
rule Trojan_BAT_AgentTesla_JAE_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.JAE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 05 00 00 0a 00 "
		
	strings :
		$a_02_0 = {0a 0c 14 0d 02 8e b7 16 31 47 28 90 01 03 0a 03 6f 90 01 03 0a 13 04 73 90 01 03 0a 11 04 16 11 04 8e b7 6f 90 01 03 0a 13 05 08 11 05 6f 90 01 03 0a 08 18 6f 90 01 03 0a 08 17 6f 90 01 03 0a 08 6f 90 01 03 0a 02 16 02 8e b7 6f 90 01 03 0a 0d 09 0a de 0c de 0a 90 00 } //0a 00 
		$a_02_1 = {02 8e b7 16 3e 90 01 04 72 90 01 03 70 fe 90 01 03 72 90 01 03 70 fe 90 01 03 72 90 01 03 70 fe 90 01 03 72 90 01 03 70 fe 90 01 03 72 90 01 03 70 fe 90 01 03 72 90 01 03 70 fe 90 01 03 72 90 01 03 70 fe 90 00 } //01 00 
		$a_81_2 = {41 45 53 44 65 63 72 79 70 74 69 6f 6e } //01 00  AESDecryption
		$a_81_3 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_81_4 = {54 6f 41 72 72 61 79 } //00 00  ToArray
	condition:
		any of ($a_*)
 
}