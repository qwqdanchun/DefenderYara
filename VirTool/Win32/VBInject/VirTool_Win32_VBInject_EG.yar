
rule VirTool_Win32_VBInject_EG{
	meta:
		description = "VirTool:Win32/VBInject.EG,SIGNATURE_TYPE_PEHSTR_EXT,05 00 04 00 05 00 00 "
		
	strings :
		$a_00_0 = {2e 00 74 00 78 00 74 00 00 00 00 00 02 00 00 00 5c 00 00 00 08 00 00 00 2e 00 65 00 78 00 65 00 00 00 00 } //1
		$a_00_1 = {5f 5f 76 62 61 4c 61 74 65 4d 65 6d 43 61 6c 6c 00 } //1
		$a_03_2 = {50 6a 01 6a ff 6a 20 ff 15 ?? ?? 40 00 8d } //1
		$a_03_3 = {6a 03 ff 15 ?? ?? 40 00 [0-06] 83 c4 10 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? [0-08] c7 85 ?? ff ff ff 08 40 00 00 } //1
		$a_00_4 = {57 00 68 00 69 00 74 00 65 00 43 00 6f 00 61 00 74 00 00 00 56 42 41 36 2e 44 4c 4c 00 00 00 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_00_4  & 1)*1) >=4
 
}