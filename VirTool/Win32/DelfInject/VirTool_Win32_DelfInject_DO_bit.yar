
rule VirTool_Win32_DelfInject_DO_bit{
	meta:
		description = "VirTool:Win32/DelfInject.DO!bit,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 02 00 00 "
		
	strings :
		$a_03_0 = {bf 01 00 00 00 8b 45 fc e8 90 01 03 ff 8b 55 fc 0f b6 54 3a ff 33 c2 50 8b 45 f8 e8 90 01 03 ff 8b 55 f8 0f b6 54 1a ff 33 c2 5a 33 d0 8d 45 ec e8 90 01 03 ff 8b 55 ec 8d 45 f0 e8 90 01 03 ff 43 8b 45 f8 e8 90 01 03 ff 3b d8 7e 05 bb 01 00 00 00 47 4e 75 af 90 00 } //2
		$a_03_1 = {8d 55 e8 b8 90 01 04 e8 90 01 04 8b 45 e8 8d 4d ec ba 90 01 04 e8 90 01 04 8b 55 ec b8 90 01 04 e8 90 01 04 6a 00 6a 00 6a 00 e8 90 00 } //1
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*1) >=3
 
}