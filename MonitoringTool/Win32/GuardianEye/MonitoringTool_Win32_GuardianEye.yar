
rule MonitoringTool_Win32_GuardianEye{
	meta:
		description = "MonitoringTool:Win32/GuardianEye,SIGNATURE_TYPE_PEHSTR_EXT,1a 00 1a 00 05 00 00 02 00 "
		
	strings :
		$a_01_0 = {45 00 6d 00 61 00 69 00 6c 00 54 00 6f 00 53 00 65 00 6e 00 64 00 46 00 72 00 6f 00 6d 00 3d 00 } //05 00 
		$a_01_1 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 52 00 65 00 67 00 45 00 64 00 69 00 74 00 3d 00 59 00 65 00 73 00 } //05 00 
		$a_01_2 = {55 00 73 00 65 00 46 00 54 00 50 00 3d 00 59 00 65 00 73 00 } //06 00 
		$a_01_3 = {6d 6f 76 65 54 6f 55 53 42 } //08 00 
		$a_01_4 = {54 00 47 00 45 00 59 00 45 00 46 00 69 00 6c 00 65 00 4e 00 61 00 6d 00 65 00 3d 00 } //00 00 
	condition:
		any of ($a_*)
 
}