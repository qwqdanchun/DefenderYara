
rule VirTool_Win32_Injector_FN{
	meta:
		description = "VirTool:Win32/Injector.FN,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 04 00 00 04 00 "
		
	strings :
		$a_01_0 = {ff 95 04 ff ff ff c7 45 fc 6d 00 00 00 8b 85 e8 fd ff ff 0f b7 48 06 39 8d ec fd ff ff 0f 8d 8e 00 00 00 } //02 00 
		$a_03_1 = {ff ff 68 00 00 00 b9 ba 00 00 00 2b 8d 90 01 02 ff ff 89 8d 90 00 } //02 00 
		$a_03_2 = {ec 01 00 00 8b 8d 90 01 01 ff ff ff 51 8b 95 90 01 01 ff ff ff 52 ff 95 90 01 01 ff ff ff b8 00 30 00 00 90 00 } //02 00 
		$a_03_3 = {89 02 b9 07 00 00 00 be 90 01 02 00 10 8d bd 90 01 02 ff ff f3 a5 66 a5 a4 33 c9 90 00 } //00 00 
		$a_00_4 = {5d 04 00 00 5f 38 } //03 80 
	condition:
		any of ($a_*)
 
}