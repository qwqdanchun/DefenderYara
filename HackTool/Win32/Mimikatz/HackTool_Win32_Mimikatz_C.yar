
rule HackTool_Win32_Mimikatz_C{
	meta:
		description = "HackTool:Win32/Mimikatz.C,SIGNATURE_TYPE_PEHSTR_EXT,1e 00 1e 00 03 00 00 0a 00 "
		
	strings :
		$a_02_0 = {6d 69 6d 69 6b 61 74 7a 20 90 02 02 2e 90 02 02 2e 90 02 02 20 28 78 90 01 02 29 20 62 75 69 6c 74 20 6f 6e 90 00 } //0a 00 
		$a_00_1 = {73 00 65 00 6b 00 75 00 72 00 6c 00 73 00 61 00 3a 00 3a 00 6c 00 6f 00 67 00 6f 00 6e 00 70 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 73 00 } //0a 00  sekurlsa::logonpasswords
		$a_00_2 = {64 00 65 00 6c 00 65 00 74 00 69 00 6e 00 67 00 20 00 43 00 3a 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 54 00 65 00 6d 00 70 00 5c 00 64 00 65 00 62 00 75 00 67 00 2e 00 62 00 69 00 6e 00 0a 00 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}