
rule VirTool_Win32_Injector_gen_S{
	meta:
		description = "VirTool:Win32/Injector.gen!S,SIGNATURE_TYPE_PEHSTR_EXT,04 00 03 00 03 00 00 02 00 "
		
	strings :
		$a_01_0 = {41 8b 45 08 03 45 fc 8a 10 32 94 8d fc fb ff ff 8b 45 08 03 45 fc 88 10 } //01 00 
		$a_01_1 = {68 9a 02 00 00 6a 00 ff 15 } //01 00 
		$a_01_2 = {68 2b 02 00 00 6a 00 ff 15 } //00 00 
	condition:
		any of ($a_*)
 
}