
rule VirTool_Win64_Remeshelsz_A{
	meta:
		description = "VirTool:Win64/Remeshelsz.A,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {41 b8 68 00 00 00 ba 00 00 00 00 90 01 07 48 89 c1 90 01 05 c7 05 52 5c 90 01 06 c7 05 84 5c 90 01 06 48 8b 05 19 5c 00 00 48 89 05 9a 90 01 03 48 8b 05 93 90 00 } //01 00 
		$a_03_1 = {48 89 c1 48 8b 90 01 07 89 05 9b 5c 00 00 48 8b 05 88 5c 00 00 48 c7 44 24 30 00 00 00 00 48 c7 44 24 28 00 00 00 00 48 c7 44 24 20 00 00 00 00 41 b9 00 00 00 00 41 b8 10 00 00 00 90 01 07 48 89 c1 48 8b 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}