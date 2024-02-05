
rule MonitoringTool_AndroidOS_Nidb_E_MTB{
	meta:
		description = "MonitoringTool:AndroidOS/Nidb.E!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,05 00 05 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {67 75 65 73 74 73 70 79 } //01 00 
		$a_01_1 = {74 68 65 74 72 75 74 68 73 70 79 } //01 00 
		$a_01_2 = {2f 6c 6f 67 5f 63 61 6c 6c 2e 61 73 70 78 } //01 00 
		$a_01_3 = {63 6f 6d 2f 69 73 70 79 6f 6f 2f 63 6f 6d 6d 6f 6e 2f 6d 6f 6e 69 74 6f 72 } //01 00 
		$a_01_4 = {6d 6f 6e 69 74 6f 72 2d 74 65 6c 65 70 68 6f 6e 65 2d 6e 75 6d 62 65 72 } //01 00 
		$a_01_5 = {68 61 73 5f 72 65 6d 6f 74 65 5f 63 6f 6d 6d 61 6e 64 } //00 00 
	condition:
		any of ($a_*)
 
}