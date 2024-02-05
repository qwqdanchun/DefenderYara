
rule VirTool_Win32_VBInject_AEA{
	meta:
		description = "VirTool:Win32/VBInject.AEA,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 03 00 00 02 00 "
		
	strings :
		$a_03_0 = {dd 1c 01 6a 08 58 69 c0 90 01 02 00 00 8b 4d 90 01 01 dd 05 90 01 02 40 00 dd 1c 01 6a 08 58 69 c0 90 01 02 00 00 8b 4d 90 01 01 dd 05 90 01 02 40 00 dd 1c 01 c7 85 90 01 02 ff ff 70 17 00 00 c7 85 90 01 02 ff ff 01 00 00 00 83 25 90 01 03 00 00 eb 90 00 } //02 00 
		$a_03_1 = {00 1c 25 00 00 6a 08 58 69 c0 90 01 02 00 00 8b 4d 90 01 01 dd 05 90 01 02 40 00 dd 1c 01 6a 08 58 69 c0 90 01 02 00 00 8b 4d 90 01 01 dd 05 90 01 02 40 00 dd 1c 01 6a 08 58 69 c0 90 01 02 00 00 90 00 } //01 00 
		$a_03_2 = {50 6a 04 e8 90 01 03 ff 83 c4 14 a1 90 01 03 00 8b 4d 90 01 01 dd 04 c1 e8 90 01 03 ff 8b 90 09 1b 00 8d 85 90 01 01 ff ff ff 50 8d 85 90 01 01 ff ff ff 50 8d 85 90 01 01 ff ff ff 50 8d 85 90 01 01 ff ff ff 90 00 } //01 00 
		$a_00_3 = {80 10 } //00 00 
	condition:
		any of ($a_*)
 
}