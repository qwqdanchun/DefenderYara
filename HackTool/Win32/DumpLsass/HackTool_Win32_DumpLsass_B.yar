
rule HackTool_Win32_DumpLsass_B{
	meta:
		description = "HackTool:Win32/DumpLsass.B,SIGNATURE_TYPE_CMDHSTR_EXT,03 00 03 00 05 00 00 "
		
	strings :
		$a_00_0 = {5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 44 00 61 00 74 00 61 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 41 00 7a 00 75 00 72 00 65 00 57 00 61 00 74 00 73 00 6f 00 6e 00 5c 00 30 00 5c 00 70 00 72 00 6f 00 63 00 64 00 75 00 6d 00 70 00 } //65534 \ProgramData\Microsoft\AzureWatson\0\procdump
		$a_02_1 = {2d 00 6a 00 20 00 90 02 04 5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 44 00 61 00 74 00 61 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 57 00 45 00 52 00 5c 00 52 00 65 00 70 00 6f 00 72 00 74 00 51 00 75 00 65 00 75 00 65 00 90 00 } //65534
		$a_00_2 = {5c 00 70 00 72 00 6f 00 63 00 64 00 75 00 6d 00 70 00 2e 00 65 00 78 00 65 00 } //2 \procdump.exe
		$a_00_3 = {2d 00 6d 00 } //1 -m
		$a_00_4 = {2f 00 6d 00 } //1 /m
	condition:
		((#a_00_0  & 1)*65534+(#a_02_1  & 1)*65534+(#a_00_2  & 1)*2+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1) >=3
 
}