
rule VirTool_Win32_VBInject_ABL{
	meta:
		description = "VirTool:Win32/VBInject.ABL,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_00_0 = {61 33 34 66 32 65 34 00 6e 76 6d 66 63 30 30 00 6c 79 31 31 61 77 67 00 6d 6a 6e 79 33 31 30 00 75 6e 6b 6e 69 78 00 00 0d 00 00 00 4b 65 72 6e } //1
		$a_00_1 = {6b 6e 69 78 00 00 75 6e 6b 6e 69 78 00 } //1
		$a_00_2 = {53 00 76 00 63 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 00 } //1
		$a_01_3 = {44 00 34 00 53 00 35 00 46 00 35 00 36 00 53 00 44 00 31 00 46 00 31 00 } //1 D4S5F56SD1F1
		$a_00_4 = {43 00 68 00 69 00 73 00 74 00 00 00 0a 00 00 00 72 00 75 00 6e 00 61 00 73 00 00 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_01_3  & 1)*1+(#a_00_4  & 1)*1) >=5
 
}