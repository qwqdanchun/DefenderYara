
rule VirTool_Win32_VBInject_JX{
	meta:
		description = "VirTool:Win32/VBInject.JX,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 02 00 "
		
	strings :
		$a_03_0 = {66 8b 04 50 66 25 ff 00 66 33 c8 e8 90 01 04 8b 4d 90 01 01 03 8d 90 01 04 88 01 e9 90 00 } //02 00 
		$a_03_1 = {05 f8 00 00 00 0f 80 90 01 04 8b 4d 90 01 01 6b c9 28 0f 80 90 01 04 03 c1 0f 80 90 01 04 89 45 90 00 } //01 00 
		$a_00_2 = {65 00 78 00 65 00 20 00 73 00 69 00 68 00 54 00 } //01 00  exe sihT
		$a_00_3 = {61 00 74 00 61 00 64 00 70 00 70 00 41 00 } //01 00  atadppA
		$a_03_4 = {68 79 a9 e1 f2 ff 75 90 01 01 8b 85 90 01 04 8b 00 ff b5 90 01 04 ff 50 30 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}