
rule VirTool_Win32_Injector_gen_CU{
	meta:
		description = "VirTool:Win32/Injector.gen!CU,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 03 00 06 00 00 "
		
	strings :
		$a_03_0 = {68 40 00 00 00 68 00 30 00 00 ff b4 24 90 01 04 ff 75 34 8d ac 24 90 01 04 ff 75 00 68 04 00 00 00 90 00 } //1
		$a_03_1 = {0f bf 5d 06 4b 3b 9c 24 90 01 04 0f 8c 90 00 } //1
		$a_03_2 = {0f bf 45 06 39 c3 0f 90 04 01 02 8d 85 90 09 04 00 8d 6c 24 90 00 } //1
		$a_03_3 = {8b 45 28 89 84 24 90 01 04 8b 5d 34 03 9c 24 90 01 04 53 90 00 } //1
		$a_03_4 = {68 00 30 00 00 ff b4 24 90 01 04 ff 75 34 8d ac 24 90 01 04 ff 75 00 68 04 00 00 00 ff 35 90 01 04 ff 35 90 01 04 e8 90 00 } //1
		$a_03_5 = {68 00 00 00 00 68 00 00 00 00 68 00 00 00 00 8d 6c 24 90 01 01 ff 75 54 ff b4 24 90 01 04 ff 75 34 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1+(#a_03_5  & 1)*1) >=3
 
}