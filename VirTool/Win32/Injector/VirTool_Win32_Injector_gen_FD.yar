
rule VirTool_Win32_Injector_gen_FD{
	meta:
		description = "VirTool:Win32/Injector.gen!FD,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {8b 85 64 fd ff ff 83 c0 01 33 85 74 fd ff ff 03 d0 88 55 ff dd 05 90 01 04 dd 9d 90 00 } //01 00 
		$a_03_1 = {83 bd 34 fe ff ff 28 7d 20 e8 90 01 04 25 01 00 00 80 79 05 48 83 c8 fe 40 8b 8d 34 fe ff ff 89 84 8d a8 fe ff ff eb c8 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}