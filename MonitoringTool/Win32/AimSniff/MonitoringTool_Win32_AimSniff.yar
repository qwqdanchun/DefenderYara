
rule MonitoringTool_Win32_AimSniff{
	meta:
		description = "MonitoringTool:Win32/AimSniff,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 02 00 "
		
	strings :
		$a_00_0 = {00 00 64 00 70 00 6e 00 73 00 76 00 72 00 61 00 00 00 } //02 00 
		$a_00_1 = {00 00 5c 00 61 00 69 00 6d 00 61 00 70 00 70 00 69 00 6e 00 69 00 2e 00 69 00 6e 00 69 00 } //01 00 
		$a_00_2 = {61 64 73 6e 77 61 00 73 76 63 68 6f 73 74 } //01 00  摡湳慷猀捶潨瑳
		$a_02_3 = {00 5c 00 64 00 61 00 74 00 61 00 5c 00 90 02 10 2e 00 65 00 78 00 65 00 90 00 } //01 00 
		$a_00_4 = {00 00 5c 00 65 00 6d 00 78 00 66 00 69 00 6c 00 65 00 30 00 30 00 34 00 2e 00 64 00 61 00 74 00 } //00 00 
	condition:
		any of ($a_*)
 
}