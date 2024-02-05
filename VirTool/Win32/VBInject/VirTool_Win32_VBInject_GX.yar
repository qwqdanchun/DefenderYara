
rule VirTool_Win32_VBInject_GX{
	meta:
		description = "VirTool:Win32/VBInject.GX,SIGNATURE_TYPE_PEHSTR_EXT,1f 00 1f 00 05 00 00 0a 00 "
		
	strings :
		$a_03_0 = {08 02 00 00 00 68 a1 6a 8b 90 01 03 40 00 c7 90 01 01 0c 02 00 00 3d d8 51 e8 90 00 } //0a 00 
		$a_03_1 = {70 01 00 00 68 d0 37 10 8b 90 01 03 40 00 c7 90 01 01 74 01 00 00 f2 51 e8 d5 90 00 } //0a 00 
		$a_03_2 = {30 01 00 00 00 68 88 fe 8b 90 01 03 40 00 c7 90 01 01 34 01 00 00 b3 16 51 e8 90 00 } //01 00 
		$a_03_3 = {dc 04 00 00 c1 cf 0d 03 8b 90 01 03 40 00 c7 90 01 01 e8 04 00 00 e1 8b 5a 24 90 00 } //01 00 
		$a_03_4 = {dc 04 00 00 c1 cf 0d 03 8b 90 01 04 00 c7 90 01 02 03 00 00 e8 24 00 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}