
rule VirTool_Win32_CeeInject_OI_bit{
	meta:
		description = "VirTool:Win32/CeeInject.OI!bit,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {0f af 11 0f af 95 90 01 04 89 95 90 01 04 8b 45 fc 8b 0c 85 90 01 04 33 0d 90 01 04 8b 55 fc 8b 45 d0 89 0c 90 90 90 00 } //01 00 
		$a_03_1 = {8b 45 e0 c1 e0 90 01 01 50 68 90 01 04 68 90 01 04 6a 00 ff 15 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}