
rule TrojanSpy_BAT_Hoetou_E{
	meta:
		description = "TrojanSpy:BAT/Hoetou.E,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {73 00 76 00 63 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 } //01 00  svchost.exe
		$a_01_1 = {73 65 74 5f 56 69 64 65 6f 52 65 63 6f 72 64 69 6e 67 54 69 6d 65 72 } //01 00  set_VideoRecordingTimer
		$a_01_2 = {00 5f 47 65 74 50 72 6f 63 65 73 73 42 00 } //01 00  开敇側潲散獳B
		$a_01_3 = {00 5f 53 63 72 65 65 6e 49 6d 61 67 65 73 00 } //01 00 
		$a_01_4 = {00 43 61 70 74 75 72 65 44 69 72 00 } //01 00  䌀灡畴敲楄r
		$a_01_5 = {67 65 74 5f 46 69 6c 65 4d 61 6e 61 67 65 72 53 6f 63 6b 65 74 } //01 00  get_FileManagerSocket
		$a_01_6 = {70 00 6c 00 75 00 67 00 69 00 6e 00 77 00 69 00 74 00 69 00 74 00 6c 00 65 00 } //00 00  pluginwititle
		$a_00_7 = {5d 04 } //00 00  ѝ
	condition:
		any of ($a_*)
 
}