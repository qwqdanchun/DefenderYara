
rule VirTool_Win32_CeeInject_UW_bit{
	meta:
		description = "VirTool:Win32/CeeInject.UW!bit,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {74 0a 6a 40 68 00 30 00 00 56 eb 09 6a 02 6a 00 68 00 10 00 00 6a 00 ff 15 } //02 00 
		$a_03_1 = {85 ff 74 08 8a 4c 24 90 01 01 02 c8 eb 06 8d 0c 06 8a 0c 11 85 db 75 03 88 0c 10 40 3b c5 7c e2 90 00 } //01 00 
		$a_03_2 = {8a 44 24 68 32 c3 90 02 10 88 44 24 13 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}