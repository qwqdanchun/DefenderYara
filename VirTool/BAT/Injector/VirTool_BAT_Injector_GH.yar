
rule VirTool_BAT_Injector_GH{
	meta:
		description = "VirTool:BAT/Injector.GH,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {11 05 13 07 11 07 45 04 00 00 00 02 00 00 00 12 00 00 00 22 00 00 00 32 00 00 00 2b 40 } //01 00 
		$a_01_1 = {11 04 8e 69 58 28 01 00 00 2b 00 11 04 16 08 08 8e 69 11 04 8e 69 59 11 04 8e 69 28 } //01 00 
		$a_00_2 = {4c 00 4f 00 41 00 44 00 45 00 52 00 } //01 00  LOADER
		$a_00_3 = {44 00 41 00 54 00 41 00 53 00 49 00 5a 00 45 00 } //01 00  DATASIZE
		$a_00_4 = {52 00 45 00 44 00 41 00 4f 00 4c 00 } //01 00  REDAOL
		$a_00_5 = {45 00 5a 00 49 00 53 00 41 00 54 00 41 00 44 00 } //00 00  EZISATAD
	condition:
		any of ($a_*)
 
}