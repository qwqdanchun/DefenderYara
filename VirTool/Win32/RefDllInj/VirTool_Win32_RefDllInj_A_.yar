
rule VirTool_Win32_RefDllInj_A_{
	meta:
		description = "VirTool:Win32/RefDllInj.A!!RefDllInj.gen!A,SIGNATURE_TYPE_ARHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {4d 5a e8 00 00 00 00 5b 52 45 55 89 e5 81 c3 90 01 04 ff d3 89 c3 57 6a 04 50 ff d0 68 90 01 04 6a 05 50 ff d3 90 00 } //0a 00 
	condition:
		any of ($a_*)
 
}