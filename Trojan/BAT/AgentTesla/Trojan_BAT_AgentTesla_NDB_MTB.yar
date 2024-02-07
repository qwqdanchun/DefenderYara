
rule Trojan_BAT_AgentTesla_NDB_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NDB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,12 00 12 00 0a 00 00 0a 00 "
		
	strings :
		$a_01_0 = {4d 5a 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 } //01 00  MZAAAAAAAAAAAAAAAAAAA
		$a_01_1 = {4f 30 4f 30 4f } //01 00  O0O0O
		$a_01_2 = {47 65 74 50 69 78 65 6c } //01 00  GetPixel
		$a_01_3 = {54 6f 57 69 6e 33 32 } //01 00  ToWin32
		$a_01_4 = {43 6f 6c 6f 72 54 72 61 6e 73 6c 61 74 6f 72 } //01 00  ColorTranslator
		$a_01_5 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_01_6 = {49 6e 76 6f 6b 65 4d 65 6d 62 65 72 } //01 00  InvokeMember
		$a_01_7 = {54 6f 41 72 72 61 79 } //01 00  ToArray
		$a_01_8 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerNonUserCodeAttribute
		$a_01_9 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //00 00  DebuggableAttribute
	condition:
		any of ($a_*)
 
}