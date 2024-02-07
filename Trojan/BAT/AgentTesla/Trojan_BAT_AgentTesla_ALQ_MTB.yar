
rule Trojan_BAT_AgentTesla_ALQ_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ALQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 01 00 "
		
	strings :
		$a_81_0 = {50 45 46 69 6c 65 4b 69 6e 64 73 2e 4d 43 43 43 43 43 2e 72 65 73 6f 75 72 63 65 73 } //01 00  PEFileKinds.MCCCCC.resources
		$a_81_1 = {50 45 46 69 6c 65 4b 69 6e 64 73 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 } //01 00  PEFileKinds.Properties.Resources
		$a_81_2 = {47 65 74 54 79 70 65 } //01 00  GetType
		$a_81_3 = {47 65 74 4d 65 74 68 6f 64 } //01 00  GetMethod
		$a_81_4 = {42 69 74 6d 61 70 } //01 00  Bitmap
		$a_81_5 = {4f 66 66 73 65 74 4d 61 72 73 68 61 6c 65 72 } //01 00  OffsetMarshaler
		$a_81_6 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_81_7 = {52 65 70 6c 61 63 65 } //01 00  Replace
		$a_81_8 = {47 65 74 54 79 70 65 46 72 6f 6d 48 61 6e 64 6c 65 } //01 00  GetTypeFromHandle
		$a_81_9 = {52 65 74 75 72 6e 4d 65 73 73 61 67 65 } //00 00  ReturnMessage
	condition:
		any of ($a_*)
 
}