
rule VirTool_BAT_Injector_AA_bit{
	meta:
		description = "VirTool:BAT/Injector.AA!bit,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {8e b7 5d 91 61 90 01 01 59 20 00 01 00 00 58 20 00 01 00 00 5d d2 9c 90 00 } //01 00 
		$a_01_1 = {03 28 06 00 00 0a 16 fe 03 65 0c } //01 00 
		$a_01_2 = {49 00 45 00 2e 00 49 00 45 00 } //00 00  IE.IE
	condition:
		any of ($a_*)
 
}