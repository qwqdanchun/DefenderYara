
rule VirTool_BAT_Injector_DW{
	meta:
		description = "VirTool:BAT/Injector.DW,SIGNATURE_TYPE_PEHSTR_EXT,06 00 05 00 05 00 00 02 00 "
		
	strings :
		$a_03_0 = {02 28 1e 00 00 06 17 8d 90 01 01 00 00 01 0c 08 16 28 90 01 01 00 00 0a 6f 90 01 01 00 00 0a a2 08 72 11 01 00 70 28 90 01 01 00 00 0a 72 29 01 00 70 28 90 01 01 00 00 0a 6f 14 00 00 06 26 90 00 } //01 00 
		$a_00_1 = {67 65 74 5f 43 6f 6d 69 74 65 } //01 00  get_Comite
		$a_00_2 = {4a 6f 68 6e 79 5f 4c 6f 61 64 } //01 00  Johny_Load
		$a_00_3 = {6f 00 74 00 6f 00 52 00 2e 00 65 00 74 00 69 00 6d 00 6f 00 43 00 } //01 00  otoR.etimoC
		$a_00_4 = {45 00 78 00 65 00 63 00 42 00 79 00 74 00 65 00 73 00 } //00 00  ExecBytes
	condition:
		any of ($a_*)
 
}