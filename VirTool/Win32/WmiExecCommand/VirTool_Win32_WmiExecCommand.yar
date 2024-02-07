
rule VirTool_Win32_WmiExecCommand{
	meta:
		description = "VirTool:Win32/WmiExecCommand,SIGNATURE_TYPE_CMDHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_00_0 = {63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 20 00 2f 00 51 00 20 00 2f 00 63 00 } //01 00  cmd.exe /Q /c
		$a_00_1 = {31 00 3e 00 20 00 5c 00 5c 00 31 00 32 00 37 00 2e 00 30 00 2e 00 30 00 2e 00 31 00 5c 00 41 00 44 00 4d 00 49 00 4e 00 24 00 5c 00 5f 00 } //01 00  1> \\127.0.0.1\ADMIN$\_
		$a_00_2 = {32 00 3e 00 26 00 31 00 } //00 00  2>&1
	condition:
		any of ($a_*)
 
}