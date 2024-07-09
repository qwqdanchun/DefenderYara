
rule VirTool_Win32_DumpLsassProc_A{
	meta:
		description = "VirTool:Win32/DumpLsassProc.A,SIGNATURE_TYPE_CMDHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_00_0 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 } //1 powershell.exe
		$a_00_1 = {5c 00 72 00 75 00 6e 00 64 00 6c 00 6c 00 33 00 32 00 2e 00 65 00 78 00 65 00 } //1 \rundll32.exe
		$a_02_2 = {5c 00 63 00 6f 00 6d 00 73 00 76 00 63 00 73 00 2e 00 64 00 6c 00 6c 00 [0-08] 4d 00 69 00 6e 00 69 00 44 00 75 00 6d 00 70 00 20 00 28 00 47 00 65 00 74 00 2d 00 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 20 00 6c 00 73 00 61 00 73 00 73 00 29 00 2e 00 49 00 64 00 20 00 } //1
		$a_02_3 = {54 00 65 00 6d 00 70 00 5c 00 [0-f0] 2e 00 64 00 6d 00 70 00 20 00 66 00 75 00 6c 00 6c 00 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_02_2  & 1)*1+(#a_02_3  & 1)*1) >=4
 
}