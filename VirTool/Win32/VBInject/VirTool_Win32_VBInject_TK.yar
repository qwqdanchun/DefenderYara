
rule VirTool_Win32_VBInject_TK{
	meta:
		description = "VirTool:Win32/VBInject.TK,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 04 00 00 0a 00 "
		
	strings :
		$a_02_0 = {43 00 3a 00 5c 00 70 00 72 00 65 00 63 00 61 00 5c 00 75 00 63 00 69 00 6f 00 6e 00 2e 00 90 02 40 2e 00 5c 00 63 00 61 00 6c 00 69 00 45 00 6e 00 54 00 65 00 2e 00 76 00 62 00 70 00 90 00 } //01 00 
		$a_00_1 = {56 00 6d 00 6c 00 79 00 64 00 48 00 56 00 68 00 62 00 45 00 46 00 73 00 62 00 47 00 39 00 6a 00 52 00 58 00 67 00 3d 00 } //01 00  VmlydHVhbEFsbG9jRXg=
		$a_00_2 = {54 00 6e 00 52 00 56 00 62 00 6d 00 31 00 68 00 63 00 46 00 5a 00 70 00 5a 00 58 00 64 00 50 00 5a 00 6c 00 4e 00 6c 00 59 00 33 00 52 00 70 00 62 00 32 00 34 00 3d 00 } //01 00  TnRVbm1hcFZpZXdPZlNlY3Rpb24=
		$a_00_3 = {2e 00 62 00 6c 00 6f 00 67 00 73 00 70 00 6f 00 74 00 2e 00 63 00 6f 00 6d 00 } //00 00  .blogspot.com
	condition:
		any of ($a_*)
 
}