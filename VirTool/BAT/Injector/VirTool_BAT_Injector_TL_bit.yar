
rule VirTool_BAT_Injector_TL_bit{
	meta:
		description = "VirTool:BAT/Injector.TL!bit,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {00 61 73 73 65 6d 62 6c 79 5f 4c 6f 61 64 00 } //01 00 
		$a_01_1 = {00 44 65 63 6f 6d 70 72 65 73 73 00 } //01 00 
		$a_01_2 = {00 45 78 74 72 61 63 74 00 } //01 00 
		$a_03_3 = {2e 00 62 00 69 00 6e 00 90 02 20 2e 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}