
rule VirTool_Win32_CeeInject_RS_bit{
	meta:
		description = "VirTool:Win32/CeeInject.RS!bit,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {6a 00 6a 00 6a 04 6a 00 6a 00 6a 00 a1 90 01 04 8b 00 e8 90 01 04 50 6a 00 a1 90 01 04 8b 00 ff d0 a1 90 01 04 8b 00 8b 15 90 01 04 89 02 eb 67 68 c8 00 00 00 e8 90 01 04 6a 00 a1 90 01 04 8b 00 e8 90 01 04 50 a1 90 01 04 8b 00 ff d0 85 c0 76 da a1 90 01 04 50 6a 00 a1 90 01 04 8b 00 e8 90 01 04 50 e8 90 01 04 50 a1 90 01 04 8b 00 ff d0 90 00 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}