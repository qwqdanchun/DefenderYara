
rule Trojan_BAT_AgentTesla_JGD_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.JGD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,13 00 13 00 0a 00 00 0a 00 "
		
	strings :
		$a_02_0 = {01 25 16 d0 90 01 03 1b 28 90 01 03 0a a2 28 90 01 03 0a 14 17 8d 90 01 03 01 25 16 28 90 01 03 06 28 90 01 03 06 28 90 01 03 06 a2 6f 90 01 03 0a 74 90 01 03 01 7d 90 01 03 04 7e 90 01 03 04 2d 24 16 d0 90 01 03 01 28 90 01 03 0a 90 00 } //01 00 
		$a_81_1 = {43 6f 6d 70 72 65 73 73 69 6f 6e 4d 6f 64 65 } //01 00  CompressionMode
		$a_81_2 = {47 5a 69 70 53 74 72 65 61 6d } //01 00  GZipStream
		$a_81_3 = {47 65 74 4d 65 74 68 6f 64 } //01 00  GetMethod
		$a_81_4 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerNonUserCodeAttribute
		$a_81_5 = {52 65 70 6c 61 63 65 } //01 00  Replace
		$a_81_6 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerHiddenAttribute
		$a_81_7 = {54 6f 43 68 61 72 41 72 72 61 79 } //01 00  ToCharArray
		$a_81_8 = {55 6e 61 72 79 4f 70 65 72 61 74 69 6f 6e } //01 00  UnaryOperation
		$a_81_9 = {47 65 74 45 78 65 63 75 74 69 6e 67 41 73 73 65 6d 62 6c 79 } //00 00  GetExecutingAssembly
	condition:
		any of ($a_*)
 
}