
rule VirTool_Win32_Magniber_B{
	meta:
		description = "VirTool:Win32/Magniber.B,SIGNATURE_TYPE_CMDHSTR_EXT,05 00 05 00 04 00 00 02 00 "
		
	strings :
		$a_00_0 = {5c 00 63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 00 00 } //01 00 
		$a_00_1 = {20 00 2f 00 63 00 20 00 } //01 00   /c 
		$a_00_2 = {20 00 26 00 26 00 20 00 } //01 00   && 
		$a_00_3 = {25 00 20 00 7c 00 20 00 } //00 00  % | 
	condition:
		any of ($a_*)
 
}
rule VirTool_Win32_Magniber_B_2{
	meta:
		description = "VirTool:Win32/Magniber.B,SIGNATURE_TYPE_CMDHSTR_EXT,06 00 06 00 04 00 00 03 00 "
		
	strings :
		$a_00_0 = {5c 00 63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 00 00 } //01 00 
		$a_02_1 = {73 00 65 00 74 00 20 00 90 02 08 3d 00 90 00 } //01 00 
		$a_02_2 = {20 00 26 00 20 00 65 00 63 00 68 00 6f 00 20 00 21 00 90 02 08 3a 00 7e 00 90 02 08 2c 00 90 02 08 21 00 21 00 90 02 08 3a 00 7e 00 90 02 08 2c 00 90 02 08 21 00 21 00 90 00 } //01 00 
		$a_02_3 = {20 00 7c 00 20 00 90 02 10 21 00 90 02 08 3a 00 7e 00 90 02 08 2c 00 90 02 08 21 00 21 00 90 02 08 3a 00 7e 00 90 02 08 2c 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule VirTool_Win32_Magniber_B_3{
	meta:
		description = "VirTool:Win32/Magniber.B,SIGNATURE_TYPE_CMDHSTR_EXT,06 00 06 00 05 00 00 03 00 "
		
	strings :
		$a_00_0 = {5c 00 63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 00 00 } //01 00 
		$a_02_1 = {73 00 65 00 74 00 20 00 90 02 08 3d 00 90 00 } //01 00 
		$a_02_2 = {20 00 26 00 26 00 20 00 63 00 6d 00 64 00 20 00 2f 00 63 00 20 00 65 00 63 00 68 00 6f 00 20 00 25 00 90 02 08 3a 00 7e 00 90 02 08 2c 00 90 02 08 25 00 25 00 90 02 08 3a 00 7e 00 90 02 08 2c 00 90 02 08 25 00 25 00 90 02 08 3a 00 7e 00 90 02 08 2c 00 90 00 } //01 00 
		$a_00_3 = {25 00 20 00 7c 00 20 00 70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 20 00 2d 00 } //01 00  % | powershell -
		$a_02_4 = {25 00 20 00 7c 00 20 00 63 00 6d 00 64 00 20 00 2f 00 63 00 20 00 25 00 90 02 08 3a 00 7e 00 90 02 08 2c 00 90 02 08 25 00 25 00 90 02 08 3a 00 7e 00 90 02 08 2c 00 90 02 08 25 00 25 00 90 02 08 3a 00 7e 00 90 02 08 2c 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule VirTool_Win32_Magniber_B_4{
	meta:
		description = "VirTool:Win32/Magniber.B,SIGNATURE_TYPE_CMDHSTR_EXT,05 00 05 00 04 00 00 03 00 "
		
	strings :
		$a_00_0 = {5c 00 63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 00 00 } //01 00 
		$a_00_1 = {3d 00 53 00 65 00 74 00 2d 00 4d 00 70 00 50 00 72 00 65 00 66 00 65 00 72 00 65 00 6e 00 63 00 65 00 20 00 2d 00 45 00 6e 00 61 00 62 00 6c 00 65 00 43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 6c 00 65 00 64 00 46 00 6f 00 6c 00 64 00 65 00 72 00 41 00 63 00 63 00 65 00 73 00 73 00 20 00 30 00 20 00 26 00 26 00 20 00 63 00 6d 00 64 00 20 00 2f 00 63 00 20 00 65 00 63 00 68 00 6f 00 20 00 25 00 } //01 00  =Set-MpPreference -EnableControlledFolderAccess 0 && cmd /c echo %
		$a_00_2 = {3d 00 28 00 47 00 65 00 74 00 2d 00 57 00 6d 00 69 00 4f 00 62 00 6a 00 65 00 63 00 74 00 20 00 57 00 69 00 6e 00 33 00 32 00 5f 00 53 00 68 00 61 00 64 00 6f 00 77 00 43 00 6f 00 70 00 79 00 29 00 2e 00 44 00 65 00 6c 00 65 00 74 00 65 00 28 00 29 00 20 00 26 00 26 00 20 00 63 00 6d 00 64 00 20 00 2f 00 63 00 20 00 65 00 63 00 68 00 6f 00 20 00 25 00 } //01 00  =(Get-WmiObject Win32_ShadowCopy).Delete() && cmd /c echo %
		$a_00_3 = {25 00 20 00 7c 00 20 00 70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 20 00 2d 00 } //00 00  % | powershell -
	condition:
		any of ($a_*)
 
}