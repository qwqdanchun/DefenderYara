
rule Trojan_BAT_AgentTesla_MBGF_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.MBGF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {61 00 73 00 64 00 61 00 64 00 61 00 66 00 73 00 33 00 61 00 73 00 64 00 61 00 64 00 61 00 66 00 73 00 } //01 00  asdadafs3asdadafs
		$a_01_1 = {61 00 73 00 64 00 61 00 64 00 61 00 66 00 73 00 34 00 34 00 61 00 73 00 64 00 61 00 64 00 61 00 66 00 73 00 } //01 00  asdadafs44asdadafs
		$a_01_2 = {61 00 73 00 64 00 61 00 64 00 61 00 66 00 73 00 } //01 00  asdadafs
		$a_01_3 = {49 00 6e 00 76 00 6f 00 6b 00 65 00 4d 00 65 00 6d 00 62 00 65 00 72 00 } //01 00  InvokeMember
		$a_01_4 = {4d 00 65 00 74 00 68 00 6f 00 64 00 30 00 } //01 00  Method0
		$a_01_5 = {47 00 65 00 74 00 54 00 79 00 70 00 65 00 73 00 } //01 00  GetTypes
		$a_01_6 = {4c 00 6f 00 61 00 64 00 } //01 00  Load
		$a_01_7 = {47 5a 69 70 53 74 72 65 61 6d } //00 00  GZipStream
	condition:
		any of ($a_*)
 
}