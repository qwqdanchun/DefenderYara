
rule Worm_Win32_SillyShareCopy_L{
	meta:
		description = "Worm:Win32/SillyShareCopy.L,SIGNATURE_TYPE_PEHSTR_EXT,13 00 13 00 07 00 00 01 00 "
		
	strings :
		$a_00_0 = {4e 00 6f 00 44 00 72 00 69 00 76 00 65 00 54 00 79 00 70 00 65 00 41 00 75 00 74 00 6f 00 52 00 75 00 6e 00 } //01 00  NoDriveTypeAutoRun
		$a_00_1 = {61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 2e 00 69 00 6e 00 66 00 } //01 00  autorun.inf
		$a_00_2 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 50 00 6f 00 6c 00 69 00 63 00 69 00 65 00 73 00 5c 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 } //01 00  Software\Microsoft\Windows\CurrentVersion\Policies\Explorer
		$a_00_3 = {43 00 3a 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 73 00 65 00 72 00 76 00 69 00 63 00 65 00 2e 00 65 00 78 00 65 00 } //05 00  C:\Windows\service.exe
		$a_01_4 = {47 65 74 4c 6f 67 69 63 61 6c 44 72 69 76 65 73 } //05 00  GetLogicalDrives
		$a_01_5 = {43 6f 70 79 46 69 6c 65 41 } //05 00  CopyFileA
		$a_01_6 = {53 65 61 72 63 68 54 72 65 65 46 6f 72 46 69 6c 65 } //00 00  SearchTreeForFile
	condition:
		any of ($a_*)
 
}