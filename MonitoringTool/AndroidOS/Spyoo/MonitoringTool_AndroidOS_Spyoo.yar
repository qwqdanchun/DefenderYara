
rule MonitoringTool_AndroidOS_Spyoo{
	meta:
		description = "MonitoringTool:AndroidOS/Spyoo,SIGNATURE_TYPE_DEXHSTR_EXT,06 00 05 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {6c 6f 67 73 2f 67 65 74 73 65 74 74 69 6e 67 2e 61 73 70 78 } //01 00 
		$a_01_1 = {6c 6f 67 5f 67 70 73 2e 61 73 70 78 } //01 00 
		$a_01_2 = {73 70 79 6f 6f 2f 53 65 74 74 69 6e 67 } //01 00 
		$a_01_3 = {53 70 79 6f 6f 53 65 72 76 69 63 65 2e 6a 61 76 61 } //01 00 
		$a_01_4 = {63 61 70 74 75 72 65 5f 77 68 65 6e 5f 70 68 6f 6e 65 5f 6d 6f 76 65 5f 6f 76 65 72 } //01 00 
		$a_01_5 = {68 74 74 70 3a 2f 2f 77 77 77 2e 63 6f 70 79 39 2e 63 6f 6d } //00 00 
	condition:
		any of ($a_*)
 
}