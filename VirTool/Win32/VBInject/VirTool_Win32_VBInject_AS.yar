
rule VirTool_Win32_VBInject_AS{
	meta:
		description = "VirTool:Win32/VBInject.AS,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {4d 65 6d 6f 72 79 45 78 65 63 75 74 65 00 00 00 44 65 63 6f 6d 70 72 65 73 73 00 00 4d 6d 61 69 6e 00 00 00 43 41 42 4e 00 00 00 00 50 72 6f 6a 65 63 74 31 00 } //1
		$a_00_1 = {56 00 69 00 72 00 74 00 75 00 61 00 6c 00 41 00 6c 00 6c 00 6f 00 63 00 45 00 78 00 00 00 00 00 20 00 00 00 56 00 69 00 72 00 74 00 75 00 61 00 6c 00 50 00 72 00 6f 00 74 00 65 00 63 00 74 00 45 00 78 00 00 00 00 00 18 00 00 00 52 00 65 00 73 00 75 00 6d 00 65 00 54 00 68 00 72 00 65 00 61 00 64 00 00 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_00_1  & 1)*1) >=2
 
}