
rule VirTool_Win64_Empire_A{
	meta:
		description = "VirTool:Win64/Empire.A,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_81_0 = {73 74 61 67 65 31 72 65 73 70 6f 6e 73 65 } //01 00  stage1response
		$a_81_1 = {73 74 61 67 65 32 52 65 73 70 6f 6e 73 65 } //01 00  stage2Response
		$a_81_2 = {44 6f 74 4e 65 74 45 6d 70 69 72 65 } //01 00  DotNetEmpire
		$a_81_3 = {53 74 61 72 74 41 67 65 6e 74 4a 6f 62 } //01 00  StartAgentJob
		$a_81_4 = {45 6d 70 69 72 65 53 74 61 67 65 72 } //01 00  EmpireStager
		$a_81_5 = {73 65 74 5f 45 6e 61 62 6c 65 50 72 69 76 69 6c 65 67 65 73 } //01 00  set_EnablePrivileges
		$a_81_6 = {67 65 74 5f 44 65 66 61 75 6c 74 43 72 65 64 65 6e 74 69 61 6c 73 } //00 00  get_DefaultCredentials
	condition:
		any of ($a_*)
 
}