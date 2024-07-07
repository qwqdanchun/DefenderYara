
rule VirTool_Win32_CeeInject_AMO_bit{
	meta:
		description = "VirTool:Win32/CeeInject.AMO!bit,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {8d 04 0f 8a 04 10 39 9d 90 01 03 ff 75 0f 8b 95 90 01 03 ff 8b b5 90 01 03 ff 88 04 11 8b 85 90 01 03 ff 39 85 90 01 03 ff 75 0e 8b 85 90 01 03 ff 01 05 90 01 03 00 eb 11 b8 f5 01 00 00 2b 85 90 01 03 ff 01 85 90 01 03 ff 41 3b 8d 90 01 03 ff 7c 95 90 00 } //1
		$a_03_1 = {89 45 f8 8a 0d 90 01 03 00 02 4d fc 8b 45 08 02 c9 2a 4d f8 03 c3 2a 4d fc 02 4d 10 30 08 85 f6 74 0d 8b 45 fc 99 2b c2 d1 f8 01 45 fc eb 03 ff 45 fc 85 ff 75 06 ff 05 90 01 03 00 43 3b 5d 0c 7c c1 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}