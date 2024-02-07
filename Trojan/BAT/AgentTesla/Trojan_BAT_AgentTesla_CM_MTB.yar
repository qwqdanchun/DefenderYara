
rule Trojan_BAT_AgentTesla_CM_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.CM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,1c 00 1c 00 0d 00 00 14 00 "
		
	strings :
		$a_03_0 = {ef ff ff 00 07 20 90 01 04 5a 20 90 01 04 61 90 01 02 ef ff ff 90 00 } //14 00 
		$a_03_1 = {07 11 08 93 28 90 01 03 0a 13 0a 11 0a 07 32 0a 11 0a 08 fe 02 16 fe 01 2b 01 16 13 0b 11 0b 2c 21 11 0a 09 fe 02 13 0c 11 0c 2c 0a 90 00 } //01 00 
		$a_81_2 = {00 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 00 } //01 00  砀硸硸硸硸硸硸硸硸x
		$a_02_3 = {44 00 53 00 44 00 53 00 90 02 04 44 00 65 00 5f 00 44 00 65 00 66 00 6c 00 61 00 74 00 65 00 90 00 } //01 00 
		$a_02_4 = {44 53 44 53 90 02 04 44 65 5f 44 65 66 6c 61 74 65 90 00 } //01 00 
		$a_81_5 = {47 65 74 46 69 6c 65 4e 61 6d 65 42 79 55 52 4c } //01 00  GetFileNameByURL
		$a_81_6 = {49 6e 76 6f 6b 65 4d 65 6d 62 65 72 } //01 00  InvokeMember
		$a_81_7 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggableAttribute
		$a_81_8 = {44 65 5f 44 65 66 6c 61 74 65 } //01 00  De_Deflate
		$a_81_9 = {46 72 6f 6d 42 61 73 65 36 34 } //01 00  FromBase64
		$a_81_10 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_81_11 = {69 6d 69 6d 69 6d 69 6d 69 6d } //01 00  imimimimim
		$a_81_12 = {54 6f 43 68 61 72 41 72 72 61 79 } //00 00  ToCharArray
	condition:
		any of ($a_*)
 
}