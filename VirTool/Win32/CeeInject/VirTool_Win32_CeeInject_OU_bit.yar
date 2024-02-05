
rule VirTool_Win32_CeeInject_OU_bit{
	meta:
		description = "VirTool:Win32/CeeInject.OU!bit,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {8b 55 08 8a 02 32 45 90 01 01 8b 4d 08 88 01 90 00 } //01 00 
		$a_01_1 = {8a c1 3c 61 7c 06 3c 7a 7f 02 24 df } //01 00 
		$a_01_2 = {8b 55 f8 8b 45 e8 03 42 1c 8b 4d fc 8b 55 e8 03 14 88 8b c2 } //00 00 
	condition:
		any of ($a_*)
 
}