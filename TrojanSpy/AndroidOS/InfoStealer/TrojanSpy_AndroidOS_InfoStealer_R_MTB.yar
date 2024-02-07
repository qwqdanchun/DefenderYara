
rule TrojanSpy_AndroidOS_InfoStealer_R_MTB{
	meta:
		description = "TrojanSpy:AndroidOS/InfoStealer.R!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,05 00 05 00 06 00 00 01 00 "
		
	strings :
		$a_00_0 = {73 70 79 5f 63 61 6c 6c 5f 6e 75 6d 62 65 72 } //01 00  spy_call_number
		$a_00_1 = {73 79 6e 63 5f 6b 65 79 5f 6c 6f 67 67 65 72 } //01 00  sync_key_logger
		$a_00_2 = {73 79 6e 63 5f 69 6e 73 74 61 6c 6c 65 64 5f 61 70 70 73 } //01 00  sync_installed_apps
		$a_00_3 = {73 79 6e 63 5f 62 72 6f 77 73 65 72 5f 68 69 73 74 6f 72 79 } //01 00  sync_browser_history
		$a_00_4 = {63 61 6c 6c 5f 72 65 63 6f 72 64 69 6e 67 5f 6d 65 74 68 6f 64 } //01 00  call_recording_method
		$a_00_5 = {68 69 64 65 41 70 70 } //00 00  hideApp
	condition:
		any of ($a_*)
 
}