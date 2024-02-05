
rule VirTool_Win32_Injector_CP_bit{
	meta:
		description = "VirTool:Win32/Injector.CP!bit,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {8b c7 c1 e8 05 03 85 90 01 02 ff ff 8b cf c1 e1 04 03 8d 90 01 02 ff ff 33 c1 8b 8d 90 01 02 ff ff 03 cf 33 c1 2b f0 8b c6 c1 e8 05 03 85 90 01 02 ff ff 90 00 } //01 00 
		$a_03_1 = {8b ce c1 e1 04 03 8d 90 01 02 ff ff 33 c1 8b 8d 90 01 02 ff ff 81 85 90 01 02 ff ff 47 86 c8 61 03 ce 33 c1 2b f8 ff 85 90 01 02 ff ff 83 bd 90 01 02 ff ff 20 0f 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}