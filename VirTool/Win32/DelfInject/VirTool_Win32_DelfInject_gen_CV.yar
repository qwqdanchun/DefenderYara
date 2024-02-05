
rule VirTool_Win32_DelfInject_gen_CV{
	meta:
		description = "VirTool:Win32/DelfInject.gen!CV,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {8b c8 03 ca 8a 09 e9 90 01 02 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 90 00 } //01 00 
		$a_03_1 = {80 f1 95 eb 90 01 02 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 90 00 } //01 00 
		$a_03_2 = {8b f0 03 f2 88 0e e9 90 01 02 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 90 00 } //01 00 
		$a_03_3 = {42 4b 0f 85 90 01 02 ff ff 5e 5b c3 90 09 20 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}