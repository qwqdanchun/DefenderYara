
rule VirTool_Win32_CeeInject_MG_bit{
	meta:
		description = "VirTool:Win32/CeeInject.MG!bit,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {8b 55 08 03 55 90 01 01 0f b6 02 0f b6 0d 90 01 04 33 c1 8b 55 0c 03 55 90 01 01 88 02 8b 45 0c 03 45 90 01 01 0f b6 08 0f b6 15 90 01 04 2b ca 8b 45 0c 03 45 90 01 01 88 08 eb 90 00 } //1
		$a_03_1 = {6a 40 68 00 30 00 00 6b 05 90 01 04 05 50 6a 00 ff 15 90 01 04 89 45 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}