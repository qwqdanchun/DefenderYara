
rule VirTool_Win32_Magniber_F{
	meta:
		description = "VirTool:Win32/Magniber.F,SIGNATURE_TYPE_CMDHSTR_EXT,02 00 02 00 03 00 00 "
		
	strings :
		$a_02_0 = {6d 00 73 00 69 00 65 00 78 00 65 00 63 00 [0-08] 2f 00 69 00 20 00 68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 } //1
		$a_00_1 = {2e 00 6d 00 73 00 69 00 20 00 2f 00 71 00 } //1 .msi /q
		$a_02_2 = {77 00 6d 00 69 00 63 00 [0-08] 73 00 68 00 61 00 64 00 6f 00 77 00 63 00 6f 00 70 00 79 00 20 00 64 00 65 00 6c 00 65 00 74 00 65 00 20 00 } //2
	condition:
		((#a_02_0  & 1)*1+(#a_00_1  & 1)*1+(#a_02_2  & 1)*2) >=2
 
}