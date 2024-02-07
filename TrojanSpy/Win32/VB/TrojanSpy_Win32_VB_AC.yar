
rule TrojanSpy_Win32_VB_AC{
	meta:
		description = "TrojanSpy:Win32/VB.AC,SIGNATURE_TYPE_PEHSTR_EXT,2b 00 2b 00 08 00 00 0a 00 "
		
	strings :
		$a_01_0 = {57 69 6e 64 6f 77 73 55 70 64 61 74 61 } //0a 00  WindowsUpdata
		$a_00_1 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //0a 00  MSVBVM60.DLL
		$a_00_2 = {43 72 65 61 74 65 54 6f 6f 6c 68 65 6c 70 33 32 53 6e 61 70 73 68 6f 74 } //0a 00  CreateToolhelp32Snapshot
		$a_01_3 = {77 68 65 72 65 41 6d 49 } //01 00  whereAmI
		$a_00_4 = {69 00 66 00 20 00 65 00 78 00 69 00 73 00 74 00 20 00 00 00 1c 00 00 00 20 00 67 00 6f 00 74 00 6f 00 20 00 73 00 65 00 6c 00 66 00 6b 00 69 00 6c 00 6c 00 } //01 00 
		$a_01_5 = {26 00 75 00 73 00 65 00 72 00 6e 00 61 00 6d 00 65 00 3d 00 } //01 00  &username=
		$a_01_6 = {4f 00 4e 00 4c 00 49 00 4e 00 45 00 20 00 2d 00 20 00 28 00 } //01 00  ONLINE - (
		$a_00_7 = {43 00 3a 00 5c 00 74 00 6d 00 70 00 73 00 73 00 73 00 2e 00 6c 00 6f 00 67 00 } //00 00  C:\tmpsss.log
	condition:
		any of ($a_*)
 
}