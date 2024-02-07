
rule VirTool_Win32_Injector_BA{
	meta:
		description = "VirTool:Win32/Injector.BA,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 01 00 "
		
	strings :
		$a_00_0 = {5c 74 65 73 74 31 32 33 5c 34 34 34 34 5c 52 65 6c 65 61 73 65 5c 34 34 34 34 2e 70 64 62 } //01 00  \test123\4444\Release\4444.pdb
		$a_03_1 = {40 00 68 c0 27 09 00 04 30 6a 00 a2 90 01 02 40 00 ff 15 90 01 02 40 00 90 00 } //01 00 
		$a_03_2 = {ff d6 f6 c3 01 6a 00 6a 00 6a 00 74 17 8a 8b 90 01 02 40 00 32 0d 90 01 02 40 00 80 f1 90 01 01 88 8b 90 01 02 40 00 eb 13 8a 83 90 01 02 40 00 8a d3 80 c2 90 01 01 32 c2 88 83 90 01 02 40 00 ff d6 43 81 fb 27 3a 00 00 7c 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}