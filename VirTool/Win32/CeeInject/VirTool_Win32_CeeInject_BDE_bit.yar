
rule VirTool_Win32_CeeInject_BDE_bit{
	meta:
		description = "VirTool:Win32/CeeInject.BDE!bit,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {ba 5c 00 00 00 90 01 04 b8 4c 00 00 00 90 01 04 b9 69 00 00 00 90 01 04 ba 65 00 00 00 90 01 04 b8 62 00 00 00 90 01 04 b9 65 00 00 00 90 01 04 ba 72 00 00 00 90 01 04 b8 74 00 00 00 90 01 04 b9 2e 00 00 00 90 01 04 ba 62 00 00 00 90 00 } //01 00 
		$a_01_1 = {8b 4d f8 83 c1 01 89 4d f8 eb e3 81 7d f8 ef be ad ba 74 04 33 c0 eb 05 } //00 00 
	condition:
		any of ($a_*)
 
}