
rule Trojan_BAT_AgentTesla_NNQ_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NNQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {23 44 00 72 00 61 00 67 00 6f 00 6e 00 62 00 61 00 6c 00 6c 00 2e 00 56 00 69 00 63 00 74 00 69 00 6d 00 00 0b 77 00 6f 00 72 00 6c 00 64 00 00 } //01 00 
		$a_01_1 = {30 00 2e 00 33 00 30 00 33 00 31 00 39 00 5c 00 61 00 73 00 70 00 6e 00 65 00 74 00 5f 00 63 00 6f 00 6d 00 70 00 69 00 6c 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //01 00  0.30319\aspnet_compiler.exe
		$a_80_2 = {74 72 61 6e 73 66 65 72 2e 73 68 2f 67 65 74 2f } //transfer.sh/get/  01 00 
		$a_01_3 = {52 65 70 6c 61 63 65 } //01 00  Replace
		$a_01_4 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  FromBase64String
		$a_01_5 = {47 65 74 54 79 70 65 } //01 00  GetType
		$a_01_6 = {49 6e 76 6f 6b 65 4d 65 6d 62 65 72 } //00 00  InvokeMember
	condition:
		any of ($a_*)
 
}