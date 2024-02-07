
rule Trojan_BAT_AgentTesla_BUV_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.BUV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,1c 00 1c 00 0a 00 00 0a 00 "
		
	strings :
		$a_81_0 = {78 78 00 58 58 58 58 58 58 58 58 58 58 00 74 00 57 5f 53 } //0a 00 
		$a_81_1 = {54 65 78 54 00 54 72 61 6e 73 66 6f 72 6d } //01 00  敔呸吀慲獮潦浲
		$a_81_2 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  FromBase64String
		$a_81_3 = {54 6f 43 68 61 72 41 72 72 61 79 } //01 00  ToCharArray
		$a_81_4 = {54 72 61 6e 73 66 6f 72 6d 46 69 6e 61 6c 42 6c 6f 63 6b } //01 00  TransformFinalBlock
		$a_81_5 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //01 00  CreateDecryptor
		$a_81_6 = {47 65 74 54 79 70 65 46 72 6f 6d 48 61 6e 64 6c 65 } //01 00  GetTypeFromHandle
		$a_81_7 = {47 65 74 54 79 70 65 } //01 00  GetType
		$a_81_8 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggableAttribute
		$a_81_9 = {52 69 6a 6e 64 61 65 6c 4d 61 6e 61 67 65 64 } //00 00  RijndaelManaged
	condition:
		any of ($a_*)
 
}