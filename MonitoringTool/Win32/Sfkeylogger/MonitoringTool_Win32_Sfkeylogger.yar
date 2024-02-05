
rule MonitoringTool_Win32_Sfkeylogger{
	meta:
		description = "MonitoringTool:Win32/Sfkeylogger,SIGNATURE_TYPE_PEHSTR_EXT,06 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {50 41 47 45 20 44 4f 57 4e } //02 00 
		$a_01_1 = {63 3a 5c 6b 6c 67 2d 65 72 72 2e 6c 6f 67 } //02 00 
		$a_01_2 = {73 66 6b 6c 67 63 70 2e 65 78 65 } //01 00 
		$a_01_3 = {55 6e 61 62 6c 65 20 74 6f 20 6f 70 65 6e 20 74 68 65 20 25 73 20 28 6c 6f 67 29 } //00 00 
	condition:
		any of ($a_*)
 
}