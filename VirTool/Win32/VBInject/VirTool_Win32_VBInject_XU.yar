
rule VirTool_Win32_VBInject_XU{
	meta:
		description = "VirTool:Win32/VBInject.XU,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {58 59 59 59 6a 04 90 09 03 00 c7 45 90 00 } //01 00 
		$a_03_1 = {59 50 6a 02 90 09 04 00 66 c7 45 90 00 } //01 00 
		$a_03_2 = {6a 2e 8d 85 90 01 04 50 e8 90 01 04 6a 24 8d 85 90 01 04 50 e8 90 01 04 6a 61 8d 85 90 01 04 50 e8 90 01 04 6a 74 90 00 } //01 00 
		$a_01_3 = {47 00 65 00 74 00 46 00 69 00 6c 00 65 00 00 00 53 00 69 00 7a 00 65 00 } //00 00 
		$a_00_4 = {5d 04 00 } //00 e6 
	condition:
		any of ($a_*)
 
}