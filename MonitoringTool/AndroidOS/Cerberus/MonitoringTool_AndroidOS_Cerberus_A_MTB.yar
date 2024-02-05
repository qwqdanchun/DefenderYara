
rule MonitoringTool_AndroidOS_Cerberus_A_MTB{
	meta:
		description = "MonitoringTool:AndroidOS/Cerberus.A!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_00_0 = {53 54 41 52 54 5f 54 52 41 43 4b 49 4e 47 } //01 00 
		$a_00_1 = {6c 6f 63 6b 4e 6f 77 } //01 00 
		$a_00_2 = {73 65 6e 64 43 61 6c 6c 4c 6f 67 } //01 00 
		$a_00_3 = {73 65 6e 64 61 75 64 69 6f 66 69 6c 65 2e 70 68 70 } //01 00 
		$a_00_4 = {73 65 6e 64 6c 6f 63 61 74 69 6f 6e } //01 00 
		$a_00_5 = {4c 63 6f 6d 2f 6c 73 64 72 6f 69 64 2f 63 65 72 62 65 72 75 73 2f 46 61 6b 65 54 72 75 73 74 4d 61 6e 61 67 65 72 } //01 00 
		$a_00_6 = {63 6f 6d 6d 2f 73 65 6e 64 70 69 63 74 75 72 65 2e 70 68 70 } //00 00 
		$a_00_7 = {5d 04 00 00 2a } //a3 04 
	condition:
		any of ($a_*)
 
}