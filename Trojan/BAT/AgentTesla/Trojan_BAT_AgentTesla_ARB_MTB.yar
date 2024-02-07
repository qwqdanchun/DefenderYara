
rule Trojan_BAT_AgentTesla_ARB_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ARB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,19 00 19 00 09 00 00 0a 00 "
		
	strings :
		$a_01_0 = {56 69 67 44 65 63 72 79 70 74 00 70 72 6f 6a 00 6b 65 79 } //0a 00 
		$a_01_1 = {58 41 53 58 41 58 00 70 72 6f 6a 00 6b 65 79 } //0a 00 
		$a_01_2 = {73 73 73 73 73 00 41 73 73 65 6d 62 6c 79 } //0a 00  獳獳s獁敳扭祬
		$a_01_3 = {73 73 73 61 73 53 41 44 41 53 44 41 44 41 44 73 73 } //01 00  sssasSADASDADADss
		$a_01_4 = {4c 6f 61 64 00 47 65 74 54 79 70 65 } //01 00  潌摡䜀瑥祔数
		$a_01_5 = {52 65 73 6f 75 72 63 65 4d 61 6e 61 67 65 72 } //01 00  ResourceManager
		$a_01_6 = {46 72 6f 6d 42 61 73 65 36 34 43 68 61 72 41 72 72 61 79 } //01 00  FromBase64CharArray
		$a_01_7 = {54 6f 43 68 61 72 41 72 72 61 79 00 43 6f 6e 76 65 72 74 } //01 00 
		$a_01_8 = {47 65 74 54 79 70 65 46 72 6f 6d 48 61 6e 64 6c 65 } //00 00  GetTypeFromHandle
	condition:
		any of ($a_*)
 
}