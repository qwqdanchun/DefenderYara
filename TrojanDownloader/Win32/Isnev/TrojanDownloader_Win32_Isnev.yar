
rule TrojanDownloader_Win32_Isnev{
	meta:
		description = "TrojanDownloader:Win32/Isnev,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_00_0 = {4c 6f 6f 6b 75 70 50 72 69 76 69 6c 65 67 65 56 61 6c 75 65 41 } //01 00  LookupPrivilegeValueA
		$a_00_1 = {47 65 74 57 69 6e 64 6f 77 73 44 69 72 65 63 74 6f 72 79 41 } //01 00  GetWindowsDirectoryA
		$a_02_2 = {57 69 6e 45 78 65 63 90 01 03 47 65 74 54 65 6d 70 46 69 6c 65 4e 61 6d 65 41 90 00 } //01 00 
		$a_00_3 = {47 65 74 53 79 73 74 65 6d 44 69 72 65 63 74 6f 72 79 41 } //01 00  GetSystemDirectoryA
		$a_00_4 = {57 72 69 74 65 50 72 69 76 61 74 65 50 72 6f 66 69 6c 65 53 74 72 69 6e 67 41 } //01 00  WritePrivateProfileStringA
		$a_00_5 = {76 65 6e 73 69 6f 6e 00 6f 72 67 00 5c 73 79 73 74 65 6d 49 6e 66 6f 6d 61 74 69 6f 6e 73 2e 69 6e 69 } //01 00  敶獮潩n牯g獜獹整䥭普浯瑡潩獮椮楮
		$a_00_6 = {5c 64 6f 77 6e 2e 74 78 74 00 00 00 74 78 74 00 69 6e 69 00 75 72 6c 6d 6f 6e 2e 64 6c 6c 00 00 55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //01 00 
		$a_00_7 = {62 69 61 6f 6a 69 00 00 6c 6f 63 61 6c 66 69 6c 65 00 00 00 63 6f 75 6e 74 } //00 00 
	condition:
		any of ($a_*)
 
}