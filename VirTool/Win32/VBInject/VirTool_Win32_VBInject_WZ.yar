
rule VirTool_Win32_VBInject_WZ{
	meta:
		description = "VirTool:Win32/VBInject.WZ,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 03 00 00 02 00 "
		
	strings :
		$a_02_0 = {43 00 3a 00 5c 00 64 00 72 00 75 00 6e 00 6b 00 64 00 72 00 75 00 90 02 20 5c 00 63 00 6f 00 62 00 72 00 61 00 74 00 6f 00 78 00 5c 00 90 02 60 5c 00 55 00 64 00 74 00 6f 00 6f 00 6c 00 73 00 73 00 2e 00 76 00 62 00 70 00 90 00 } //01 00 
		$a_00_1 = {5b 00 6d 00 69 00 63 00 72 00 6f 00 6e 00 65 00 74 00 5d 00 } //01 00  [micronet]
		$a_00_2 = {5c 00 00 00 08 00 00 00 2e 00 65 00 78 00 65 00 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}