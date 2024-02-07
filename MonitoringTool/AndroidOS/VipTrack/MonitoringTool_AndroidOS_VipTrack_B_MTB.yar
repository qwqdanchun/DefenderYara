
rule MonitoringTool_AndroidOS_VipTrack_B_MTB{
	meta:
		description = "MonitoringTool:AndroidOS/VipTrack.B!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_00_0 = {73 74 6f 70 5f 73 74 61 72 65 2e 70 68 70 3f 69 64 67 70 73 3d } //01 00  stop_stare.php?idgps=
		$a_00_1 = {73 74 6f 70 4d 4f 4e 49 54 4f 52 49 5a 41 52 45 } //01 00  stopMONITORIZARE
		$a_00_2 = {56 49 50 54 72 61 63 6b 50 52 4f 5f } //01 00  VIPTrackPRO_
		$a_00_3 = {2f 72 65 63 65 69 76 65 5f 64 61 74 61 2e 70 68 70 } //01 00  /receive_data.php
		$a_00_4 = {6e 65 69 67 68 62 6f 72 5f 43 65 6c 6c 49 6e 66 6f } //05 00  neighbor_CellInfo
		$a_00_5 = {74 6f 53 65 6e 64 5f 64 61 74 61 } //01 00  toSend_data
		$a_00_6 = {73 74 61 72 74 4d 6f 6e 69 74 } //00 00  startMonit
	condition:
		any of ($a_*)
 
}