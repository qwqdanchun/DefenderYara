
rule VirTool_Win32_CeeInject_KXD_bit{
	meta:
		description = "VirTool:Win32/CeeInject.KXD!bit,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {f9 72 05 75 90 01 04 2b 05 90 01 04 eb 06 90 01 06 33 05 90 01 04 f8 73 06 74 e9 90 01 04 33 05 90 01 04 eb 05 74 e9 74 75 90 01 01 89 07 8d 7f 04 8b ce 90 00 } //01 00 
		$a_01_1 = {8d 15 61 19 43 00 ff 12 } //00 00 
	condition:
		any of ($a_*)
 
}