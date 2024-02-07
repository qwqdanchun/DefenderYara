
rule VirTool_WinNT_Cutwail_N{
	meta:
		description = "VirTool:WinNT/Cutwail.N,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {5c 00 52 00 45 00 47 00 49 00 53 00 54 00 52 00 59 00 5c 00 4d 00 41 00 43 00 48 00 49 00 4e 00 45 00 5c 00 53 00 59 00 53 00 54 00 45 00 4d 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 53 00 65 00 74 00 5c 00 43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 } //01 00  \REGISTRY\MACHINE\SYSTEM\CurrentControlSet\Control\Windows
		$a_00_1 = {43 00 53 00 44 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 } //01 00  CSDVersion
		$a_00_2 = {73 00 65 00 72 00 76 00 69 00 63 00 65 00 73 00 2e 00 65 00 78 00 65 00 } //01 00  services.exe
		$a_00_3 = {5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 52 00 6f 00 6f 00 74 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 64 00 72 00 69 00 76 00 65 00 72 00 73 00 5c 00 6e 00 74 00 66 00 73 00 2e 00 73 00 79 00 73 00 } //0a 00  \SystemRoot\system32\drivers\ntfs.sys
		$a_02_4 = {68 44 4e 57 52 6a 30 6a 00 ff 15 90 01 02 01 00 8b f0 85 f6 74 26 6a 00 6a 01 57 6a 00 68 90 01 02 01 00 6a 00 55 56 ff 15 90 01 02 01 00 6a 00 6a 00 68 45 34 23 12 56 ff 15 90 01 02 01 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}