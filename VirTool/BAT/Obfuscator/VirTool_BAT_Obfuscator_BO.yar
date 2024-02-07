
rule VirTool_BAT_Obfuscator_BO{
	meta:
		description = "VirTool:BAT/Obfuscator.BO,SIGNATURE_TYPE_PEHSTR_EXT,64 00 64 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {23 53 63 68 65 6d 61 } //01 00  #Schema
		$a_01_1 = {43 6f 6e 66 75 73 65 64 42 79 41 74 74 72 69 62 75 74 65 } //01 00  ConfusedByAttribute
		$a_01_2 = {43 6f 6e 66 75 73 65 72 45 78 20 76 30 2e } //01 00  ConfuserEx v0.
		$a_01_3 = {61 64 64 5f 41 73 73 65 6d 62 6c 79 52 65 73 6f 6c 76 65 } //01 00  add_AssemblyResolve
		$a_01_4 = {67 65 74 5f 50 69 78 65 6c 46 6f 72 6d 61 74 } //00 00  get_PixelFormat
		$a_00_5 = {5d 04 00 00 5b } //66 03 
	condition:
		any of ($a_*)
 
}