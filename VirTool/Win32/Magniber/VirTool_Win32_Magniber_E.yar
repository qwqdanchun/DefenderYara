
rule VirTool_Win32_Magniber_E{
	meta:
		description = "VirTool:Win32/Magniber.E,SIGNATURE_TYPE_CMDHSTR_EXT,04 00 04 00 03 00 00 03 00 "
		
	strings :
		$a_00_0 = {5c 00 63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 00 00 } //01 00 
		$a_00_1 = {28 00 47 00 65 00 74 00 2d 00 57 00 6d 00 69 00 4f 00 62 00 6a 00 65 00 63 00 74 00 20 00 57 00 69 00 6e 00 33 00 32 00 5f 00 53 00 68 00 61 00 64 00 6f 00 77 00 43 00 6f 00 70 00 79 00 29 00 2e 00 44 00 65 00 6c 00 65 00 74 00 65 00 28 00 29 00 } //01 00  (Get-WmiObject Win32_ShadowCopy).Delete()
		$a_00_2 = {53 00 65 00 74 00 2d 00 4d 00 70 00 50 00 72 00 65 00 66 00 65 00 72 00 65 00 6e 00 63 00 65 00 20 00 2d 00 45 00 6e 00 61 00 62 00 6c 00 65 00 43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 6c 00 65 00 64 00 46 00 6f 00 6c 00 64 00 65 00 72 00 41 00 63 00 63 00 65 00 73 00 73 00 20 00 30 00 } //00 00  Set-MpPreference -EnableControlledFolderAccess 0
	condition:
		any of ($a_*)
 
}