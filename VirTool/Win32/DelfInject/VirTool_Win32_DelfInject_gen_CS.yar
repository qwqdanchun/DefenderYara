
rule VirTool_Win32_DelfInject_gen_CS{
	meta:
		description = "VirTool:Win32/DelfInject.gen!CS,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {eb 02 ff d3 ff d3 3b f0 77 f8 } //01 00 
		$a_01_1 = {80 3a 47 75 39 80 7a 03 50 75 33 80 7a 07 41 75 2d } //01 00 
		$a_01_2 = {8a 13 30 10 40 43 eb } //00 00 
	condition:
		any of ($a_*)
 
}