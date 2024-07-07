
rule VirTool_Win32_VBInject_AJQ_bit{
	meta:
		description = "VirTool:Win32/VBInject.AJQ!bit,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {a1 00 10 40 00 90 02 30 48 90 02 30 75 90 02 30 05 cc 10 00 00 90 02 30 8b 00 90 02 30 6a 01 90 02 30 83 04 24 3f 90 02 30 6a 01 90 02 30 81 04 24 ff 0f 00 00 90 00 } //1
		$a_03_1 = {66 0f ef d1 c3 83 ec 1c 90 02 30 8b 74 24 0c 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}