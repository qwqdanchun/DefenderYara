
rule Trojan_BAT_AgentTesla_MJ_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.MJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_03_0 = {0d 14 13 04 00 72 90 01 03 70 28 90 01 03 0a 13 05 11 05 14 fe 03 13 06 11 06 39 90 01 05 11 05 6f 90 01 03 0a 13 04 11 04 14 fe 03 13 07 11 07 39 90 01 05 11 04 6f 90 01 03 0a 0c 73 90 01 03 0a 0d 20 00 04 00 00 8d 90 01 01 00 00 01 13 08 00 08 11 08 16 11 08 8e 69 6f 90 01 03 0a 13 09 09 11 08 16 11 09 6f 90 01 03 0a 00 07 11 09 58 0b 00 11 09 16 fe 02 13 0a 11 0a 3a 90 00 } //01 00 
		$a_01_1 = {49 6e 76 6f 6b 65 4d 65 6d 62 65 72 } //01 00  InvokeMember
		$a_01_2 = {52 65 76 65 72 73 65 } //01 00  Reverse
		$a_01_3 = {4d 65 6d 6f 72 79 53 74 72 65 61 6d } //01 00  MemoryStream
		$a_01_4 = {54 6f 41 72 72 61 79 } //01 00  ToArray
		$a_01_5 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerNonUserCodeAttribute
		$a_01_6 = {45 78 63 65 70 74 69 6f 6e } //01 00  Exception
		$a_01_7 = {57 65 62 52 65 71 75 65 73 74 } //00 00  WebRequest
	condition:
		any of ($a_*)
 
}