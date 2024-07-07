
rule VirTool_Win32_VBInject_AHW_bit{
	meta:
		description = "VirTool:Win32/VBInject.AHW!bit,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_03_0 = {75 f4 66 c7 90 09 07 00 66 c7 90 01 03 00 00 90 00 } //1
		$a_03_1 = {37 83 66 c7 90 09 07 00 66 c7 90 01 03 00 00 90 00 } //1
		$a_03_2 = {04 31 66 c7 90 09 07 00 66 c7 90 01 03 00 00 90 00 } //1
		$a_03_3 = {30 50 66 c7 90 09 07 00 66 c7 90 01 03 00 00 90 00 } //1
		$a_03_4 = {24 b8 66 c7 90 09 07 00 66 c7 90 01 03 00 00 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1) >=5
 
}