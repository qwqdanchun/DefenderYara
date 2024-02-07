
rule Trojan_BAT_AgentTesla_AUY_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.AUY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,12 00 12 00 0a 00 00 0a 00 "
		
	strings :
		$a_81_0 = {34 31 37 34 35 30 61 66 2d 65 64 36 64 2d 34 31 37 37 2d 62 30 63 62 2d 63 65 66 34 63 63 64 62 64 62 30 32 } //01 00  417450af-ed6d-4177-b0cb-cef4ccdbdb02
		$a_81_1 = {00 44 65 63 72 79 70 74 00 } //01 00 
		$a_81_2 = {00 52 65 73 6f 6c 76 65 00 e2 80 8e } //01 00 
		$a_81_3 = {00 44 65 63 6f 6d 70 72 65 73 73 00 } //01 00  䐀捥浯牰獥s
		$a_81_4 = {47 65 74 54 79 70 65 46 72 6f 6d 48 61 6e 64 6c 65 } //01 00  GetTypeFromHandle
		$a_81_5 = {54 6f 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  ToBase64String
		$a_81_6 = {47 65 74 54 79 70 65 } //01 00  GetType
		$a_81_7 = {52 65 76 65 72 73 65 44 65 63 6f 64 65 } //01 00  ReverseDecode
		$a_81_8 = {47 65 74 42 79 74 65 73 } //01 00  GetBytes
		$a_81_9 = {49 6e 76 6f 6b 65 } //00 00  Invoke
	condition:
		any of ($a_*)
 
}