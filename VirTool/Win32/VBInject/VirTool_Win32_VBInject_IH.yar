
rule VirTool_Win32_VBInject_IH{
	meta:
		description = "VirTool:Win32/VBInject.IH,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 04 00 00 "
		
	strings :
		$a_03_0 = {74 00 00 00 c7 45 90 01 05 8d 45 90 01 01 50 8d 45 90 01 01 50 e8 90 01 04 c7 45 90 01 01 65 00 00 00 c7 45 90 01 05 8d 45 90 01 01 50 8d 45 90 01 01 50 e8 90 01 04 c7 85 90 01 04 6d 00 00 00 c7 85 90 01 08 8d 85 90 01 04 50 8d 85 90 01 04 50 e8 90 01 04 c7 85 90 01 04 70 00 00 00 90 00 } //1
		$a_03_1 = {7a 00 00 00 c7 85 90 01 08 8d 85 90 01 04 50 8d 85 90 01 04 50 e8 90 01 04 c7 85 90 01 04 65 00 00 00 c7 85 90 01 08 8d 85 90 01 04 50 8d 85 90 01 04 50 e8 90 01 04 c7 85 90 01 04 6f 00 00 00 c7 85 90 01 08 8d 85 90 01 04 50 8d 85 90 01 04 50 e8 90 01 04 c7 85 90 01 04 66 00 00 00 90 00 } //1
		$a_03_2 = {5c 00 00 00 c7 85 90 01 08 8d 85 90 01 04 50 8d 85 90 01 04 50 e8 90 01 04 c7 85 90 01 04 73 00 00 00 c7 85 90 01 08 8d 85 90 01 04 50 8d 85 90 01 04 50 e8 90 01 04 c7 85 90 01 04 79 00 00 00 90 00 } //1
		$a_03_3 = {2e 00 00 00 c7 85 90 01 08 8d 85 90 01 04 50 8d 85 90 01 04 50 e8 90 01 04 c7 85 90 01 04 65 00 00 00 c7 85 90 01 08 8d 85 90 01 04 50 8d 85 90 01 04 50 e8 90 01 04 c7 85 90 01 04 78 00 00 00 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1) >=2
 
}