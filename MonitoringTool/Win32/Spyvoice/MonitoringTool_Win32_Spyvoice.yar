
rule MonitoringTool_Win32_Spyvoice{
	meta:
		description = "MonitoringTool:Win32/Spyvoice,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 4b 59 50 45 34 43 4f 4d 4c 69 62 } //01 00 
		$a_01_1 = {68 6b 48 69 64 65 52 75 6e } //01 00 
		$a_00_2 = {4b 00 65 00 79 00 4c 00 6f 00 67 00 67 00 65 00 72 00 } //01 00 
		$a_00_3 = {53 70 79 20 56 6f 69 63 65 20 52 65 63 6f 72 64 65 72 } //00 00 
	condition:
		any of ($a_*)
 
}