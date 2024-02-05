
rule VirTool_Win32_Injector_EP{
	meta:
		description = "VirTool:Win32/Injector.EP,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 06 00 00 01 00 "
		
	strings :
		$a_03_0 = {42 8d 85 dd 82 ff ff 8a 90 01 01 88 90 00 } //01 00 
		$a_03_1 = {2d 88 00 00 00 36 8b 45 f4 8b 43 28 83 c0 90 01 01 66 8b 00 66 3b 45 90 01 01 0f 84 90 01 02 00 00 36 8b 45 f4 90 00 } //01 00 
		$a_03_2 = {8b 43 28 83 c0 90 01 01 66 8b 00 66 3b 45 90 01 01 74 90 01 01 eb 90 00 } //01 00 
		$a_03_3 = {8b 43 28 83 c0 90 01 01 66 8b 00 66 3b 45 90 01 01 0f 84 90 01 01 00 00 00 e9 90 00 } //01 00 
		$a_03_4 = {8b 42 28 83 c0 90 01 01 66 8b 00 66 3b 45 90 01 01 0f 84 90 01 02 00 00 e9 90 00 } //01 00 
		$a_01_5 = {8d 85 dd 82 ff ff 33 c9 8a 08 33 4e 04 88 08 40 4a 75 f3 8d 85 dd 82 ff ff ff d0 } //00 00 
		$a_00_6 = {5d } //04 00 
	condition:
		any of ($a_*)
 
}