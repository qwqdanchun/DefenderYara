
rule HackTool_Win32_DumpLsass_K{
	meta:
		description = "HackTool:Win32/DumpLsass.K,SIGNATURE_TYPE_CMDHSTR_EXT,14 00 14 00 02 00 00 0a 00 "
		
	strings :
		$a_00_0 = {4d 00 69 00 6e 00 69 00 44 00 75 00 6d 00 70 00 20 00 } //0a 00 
		$a_00_1 = {66 00 75 00 6c 00 6c 00 } //00 00 
	condition:
		any of ($a_*)
 
}