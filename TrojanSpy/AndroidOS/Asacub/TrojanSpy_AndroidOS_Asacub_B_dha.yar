
rule TrojanSpy_AndroidOS_Asacub_B_dha{
	meta:
		description = "TrojanSpy:AndroidOS/Asacub.B!dha,SIGNATURE_TYPE_DEXHSTR_EXT,06 00 06 00 08 00 00 02 00 "
		
	strings :
		$a_00_0 = {64 65 76 65 6c 6f 70 65 72 2d 61 70 70 2e 78 79 7a } //01 00  developer-app.xyz
		$a_00_1 = {64 6c 2f 74 65 73 74 2e 62 69 6e } //01 00  dl/test.bin
		$a_00_2 = {63 6f 6d 6d 61 6e 64 73 5f 64 61 74 61 } //01 00  commands_data
		$a_00_3 = {63 61 6c 6c 73 5f 72 65 63 6f 72 64 65 72 } //01 00  calls_recorder
		$a_00_4 = {63 61 6c 6c 73 5f 6c 6f 67 5f 69 6e 63 6f 6d 69 6e 67 } //01 00  calls_log_incoming
		$a_00_5 = {62 72 6f 77 73 65 72 5f 68 69 73 74 6f 72 79 } //01 00  browser_history
		$a_00_6 = {63 6f 6e 74 65 6e 74 3a 2f 2f 62 72 6f 77 73 65 72 2f 73 65 61 72 63 68 65 73 } //01 00  content://browser/searches
		$a_00_7 = {72 65 71 75 65 73 74 5f 77 69 74 68 6f 75 74 5f 72 65 73 70 6f 6e 73 65 } //00 00  request_without_response
		$a_00_8 = {5d 04 00 00 } //64 69 
	condition:
		any of ($a_*)
 
}