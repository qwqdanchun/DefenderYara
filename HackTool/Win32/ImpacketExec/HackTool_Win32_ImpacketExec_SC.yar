
rule HackTool_Win32_ImpacketExec_SC{
	meta:
		description = "HackTool:Win32/ImpacketExec.SC,SIGNATURE_TYPE_CMDHSTR_EXT,20 00 20 00 05 00 00 0a 00 "
		
	strings :
		$a_00_0 = {63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 } //0a 00  cmd.exe
		$a_00_1 = {31 00 3e 00 20 00 5c 00 5c 00 31 00 32 00 37 00 2e 00 30 00 2e 00 30 00 2e 00 31 00 5c 00 41 00 44 00 4d 00 49 00 4e 00 24 00 5c 00 } //0a 00  1> \\127.0.0.1\ADMIN$\
		$a_00_2 = {32 00 3e 00 26 00 31 00 } //01 00  2>&1
		$a_00_3 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 } //01 00  powershell
		$a_00_4 = {28 00 6e 00 65 00 77 00 2d 00 6f 00 62 00 6a 00 65 00 63 00 74 00 20 00 6e 00 65 00 74 00 2e 00 77 00 65 00 62 00 63 00 6c 00 69 00 65 00 6e 00 74 00 29 00 2e 00 64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 73 00 74 00 72 00 69 00 6e 00 67 00 28 00 27 00 68 00 74 00 74 00 70 00 } //00 00  (new-object net.webclient).downloadstring('http
	condition:
		any of ($a_*)
 
}