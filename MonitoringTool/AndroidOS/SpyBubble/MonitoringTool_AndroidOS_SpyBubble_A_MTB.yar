
rule MonitoringTool_AndroidOS_SpyBubble_A_MTB{
	meta:
		description = "MonitoringTool:AndroidOS/SpyBubble.A!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_00_0 = {43 61 6c 6c 4c 6f 67 53 65 72 76 69 63 65 } //01 00  CallLogService
		$a_00_1 = {53 70 79 53 65 72 76 69 63 65 } //01 00  SpyService
		$a_00_2 = {63 6f 6e 74 61 63 74 55 70 6c 6f 61 64 } //01 00  contactUpload
		$a_00_3 = {45 78 63 65 70 74 69 6f 6e 20 77 68 69 6c 65 20 73 74 61 72 74 20 74 68 65 20 53 70 79 53 65 72 76 69 63 65 20 61 74 } //01 00  Exception while start the SpyService at
		$a_00_4 = {65 6e 64 53 65 63 72 65 74 43 61 6c 6c } //01 00  endSecretCall
		$a_00_5 = {43 61 6c 6c 54 72 61 63 6b } //00 00  CallTrack
		$a_00_6 = {5d 04 00 00 } //ed 8f 
	condition:
		any of ($a_*)
 
}