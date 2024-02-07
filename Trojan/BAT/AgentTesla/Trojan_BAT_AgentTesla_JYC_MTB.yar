
rule Trojan_BAT_AgentTesla_JYC_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.JYC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 01 00 "
		
	strings :
		$a_01_0 = {69 53 6e 74 69 79 44 74 76 4f 77 59 4a } //01 00  iSntiyDtvOwYJ
		$a_01_1 = {41 72 53 65 65 } //01 00  ArSee
		$a_81_2 = {41 34 41 53 46 41 47 46 } //01 00  A4ASFAGF
		$a_01_3 = {47 65 74 42 79 74 65 73 } //01 00  GetBytes
		$a_01_4 = {43 6f 6d 70 75 74 65 48 61 73 68 } //01 00  ComputeHash
		$a_01_5 = {66 72 6d 42 61 73 65 53 46 } //01 00  frmBaseSF
		$a_01_6 = {47 65 74 53 74 72 69 6e 67 } //01 00  GetString
		$a_01_7 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //01 00  CreateDecryptor
		$a_01_8 = {49 6e 76 6f 6b 65 4d 65 6d 62 65 72 } //01 00  InvokeMember
		$a_01_9 = {46 72 6f 6d 42 61 73 65 36 34 } //00 00  FromBase64
	condition:
		any of ($a_*)
 
}