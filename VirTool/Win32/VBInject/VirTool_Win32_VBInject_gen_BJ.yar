
rule VirTool_Win32_VBInject_gen_BJ{
	meta:
		description = "VirTool:Win32/VBInject.gen!BJ,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 02 00 "
		
	strings :
		$a_03_0 = {a8 fe ff ff 03 90 01 01 9c fe ff ff 0f 80 90 01 04 89 90 01 01 58 fe ff ff 90 00 } //02 00 
		$a_03_1 = {8b 56 6c 8b 46 78 90 02 03 03 d0 90 02 06 89 96 c8 02 00 00 90 00 } //01 00 
		$a_03_2 = {8a 1c 10 03 cb 0f 80 90 01 04 81 e1 ff 00 00 80 79 08 49 81 c9 00 ff ff ff 41 89 4d 90 00 } //01 00 
		$a_01_3 = {58 59 59 59 6a 04 } //01 00  奘奙Ѫ
	condition:
		any of ($a_*)
 
}