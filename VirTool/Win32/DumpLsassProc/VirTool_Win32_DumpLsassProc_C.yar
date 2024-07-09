
rule VirTool_Win32_DumpLsassProc_C{
	meta:
		description = "VirTool:Win32/DumpLsassProc.C,SIGNATURE_TYPE_CMDHSTR_EXT,06 00 05 00 06 00 00 "
		
	strings :
		$a_00_0 = {63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 } //1 cmd.exe
		$a_00_1 = {74 00 61 00 73 00 6b 00 6c 00 69 00 73 00 74 00 20 00 2f 00 66 00 69 00 20 00 } //1 tasklist /fi 
		$a_00_2 = {69 00 6d 00 61 00 67 00 65 00 6e 00 61 00 6d 00 65 00 20 00 65 00 71 00 20 00 6c 00 73 00 61 00 73 00 73 00 2e 00 65 00 78 00 65 00 } //1 imagename eq lsass.exe
		$a_02_3 = {66 00 69 00 6e 00 64 00 [0-08] 6c 00 73 00 61 00 73 00 73 00 } //1
		$a_00_4 = {72 00 75 00 6e 00 64 00 6c 00 6c 00 33 00 32 00 2e 00 65 00 78 00 65 00 } //1 rundll32.exe
		$a_02_5 = {5c 00 63 00 6f 00 6d 00 73 00 76 00 63 00 73 00 2e 00 64 00 6c 00 6c 00 [0-05] 2b 00 30 00 30 00 30 00 30 00 [0-01] 32 00 34 00 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_02_3  & 1)*1+(#a_00_4  & 1)*1+(#a_02_5  & 1)*1) >=5
 
}