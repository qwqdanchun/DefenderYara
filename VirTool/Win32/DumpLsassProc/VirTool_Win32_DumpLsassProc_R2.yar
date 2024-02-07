
rule VirTool_Win32_DumpLsassProc_R2{
	meta:
		description = "VirTool:Win32/DumpLsassProc.R2,SIGNATURE_TYPE_CMDHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_00_0 = {63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 } //01 00  cmd.exe
		$a_00_1 = {74 00 61 00 73 00 6b 00 6c 00 69 00 73 00 74 00 20 00 2f 00 66 00 69 00 20 00 } //01 00  tasklist /fi 
		$a_00_2 = {49 00 6d 00 61 00 67 00 65 00 6e 00 61 00 6d 00 65 00 20 00 65 00 71 00 20 00 6c 00 73 00 61 00 73 00 73 00 2e 00 65 00 78 00 65 00 } //01 00  Imagename eq lsass.exe
		$a_00_3 = {72 00 64 00 72 00 6c 00 65 00 61 00 6b 00 64 00 69 00 61 00 67 00 2e 00 65 00 78 00 65 00 } //01 00  rdrleakdiag.exe
		$a_00_4 = {2f 00 70 00 } //01 00  /p
		$a_02_5 = {66 00 69 00 6e 00 64 00 90 02 08 6c 00 73 00 61 00 73 00 73 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}