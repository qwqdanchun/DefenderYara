
rule MonitoringTool_AndroidOS_Bakuf_A_MTB{
	meta:
		description = "MonitoringTool:AndroidOS/Bakuf.A!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {4c 6f 67 45 6d 61 69 6c 4d 65 73 73 61 67 65 } //01 00 
		$a_00_1 = {4f 75 74 67 6f 69 6e 67 43 61 6c 6c 52 65 63 65 69 76 65 72 } //01 00 
		$a_01_2 = {4c 6f 67 42 72 6f 77 73 65 72 75 72 6c } //01 00 
		$a_01_3 = {4c 6f 67 53 6d 73 } //01 00 
		$a_01_4 = {43 4c 45 41 4e 54 52 41 43 4b 57 48 45 4e 53 43 52 45 45 4e 4f 46 46 } //00 00 
	condition:
		any of ($a_*)
 
}