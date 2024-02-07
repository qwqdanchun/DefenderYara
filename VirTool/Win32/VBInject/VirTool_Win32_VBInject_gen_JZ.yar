
rule VirTool_Win32_VBInject_gen_JZ{
	meta:
		description = "VirTool:Win32/VBInject.gen!JZ,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {36 00 2e 00 32 00 2e 00 36 00 36 00 2e 00 31 00 30 00 36 00 } //01 00  6.2.66.106
		$a_01_1 = {53 00 6b 00 79 00 70 00 65 00 20 00 54 00 65 00 63 00 68 00 6e 00 6f 00 6c 00 6f 00 67 00 69 00 65 00 73 00 20 00 53 00 2e 00 41 00 2e 00 } //02 00  Skype Technologies S.A.
		$a_01_2 = {4d 00 61 00 6e 00 69 00 6a 00 65 00 68 00 20 00 41 00 72 00 64 00 65 00 6e 00 65 00 } //03 00  Manijeh Ardene
		$a_01_3 = {43 00 3a 00 5c 00 55 00 73 00 65 00 72 00 73 00 5c 00 73 00 5c 00 44 00 65 00 73 00 6b 00 74 00 6f 00 70 00 5c 00 4d 00 75 00 73 00 74 00 20 00 55 00 73 00 65 00 20 00 44 00 69 00 66 00 66 00 65 00 72 00 65 00 6e 00 74 00 20 00 4e 00 61 00 6d 00 65 00 5c 00 46 00 6f 00 6c 00 64 00 65 00 72 00 20 00 4e 00 61 00 6d 00 65 00 5c 00 } //00 00  C:\Users\s\Desktop\Must Use Different Name\Folder Name\
	condition:
		any of ($a_*)
 
}