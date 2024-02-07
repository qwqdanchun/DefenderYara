
rule Trojan_BAT_AgentTesla_LHM_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.LHM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 6a 00 75 00 64 00 65 00 39 00 30 00 37 00 39 00 2e 00 30 00 30 00 30 00 77 00 65 00 62 00 68 00 6f 00 73 00 74 00 61 00 70 00 70 00 2e 00 63 00 6f 00 6d 00 2f 00 61 00 72 00 69 00 6f 00 72 00 69 00 67 00 69 00 6e 00 6c 00 6f 00 67 00 67 00 65 00 72 00 2e 00 65 00 78 00 65 } //01 00 
		$a_01_1 = {44 6f 77 6e 6c 6f 61 64 44 61 74 61 } //01 00  DownloadData
		$a_01_2 = {47 65 74 53 74 72 69 6e 67 } //01 00  GetString
		$a_01_3 = {47 65 74 54 79 70 65 } //01 00  GetType
		$a_01_4 = {49 6e 76 6f 6b 65 4d 65 6d 62 65 72 } //00 00  InvokeMember
	condition:
		any of ($a_*)
 
}