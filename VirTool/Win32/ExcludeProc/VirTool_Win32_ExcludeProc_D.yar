
rule VirTool_Win32_ExcludeProc_D{
	meta:
		description = "VirTool:Win32/ExcludeProc.D,SIGNATURE_TYPE_CMDHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_00_0 = {5c 00 70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 00 00 } //1
		$a_02_1 = {20 00 2d 00 45 00 6e 00 63 00 90 02 20 20 00 50 00 41 00 41 00 6a 00 41 00 90 00 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1) >=2
 
}
rule VirTool_Win32_ExcludeProc_D_2{
	meta:
		description = "VirTool:Win32/ExcludeProc.D,SIGNATURE_TYPE_CMDHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_00_0 = {5c 00 70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 00 00 } //1
		$a_00_1 = {51 00 51 00 42 00 6b 00 41 00 47 00 51 00 41 00 4c 00 51 00 42 00 4e 00 41 00 48 00 41 00 41 00 55 00 41 00 42 00 79 00 41 00 47 00 55 00 41 00 5a 00 67 00 42 00 6c 00 41 00 48 00 49 00 41 00 5a 00 51 00 42 00 75 00 41 00 47 00 4d 00 41 00 5a 00 51 00 41 00 67 00 41 00 43 00 30 00 41 00 52 00 51 00 42 00 34 00 41 00 47 00 4d 00 41 00 62 00 41 00 42 00 31 00 41 00 48 00 4d 00 41 00 61 00 51 00 42 00 76 00 41 00 47 00 34 00 41 00 } //1 QQBkAGQALQBNAHAAUAByAGUAZgBlAHIAZQBuAGMAZQAgAC0ARQB4AGMAbAB1AHMAaQBvAG4A
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1) >=2
 
}