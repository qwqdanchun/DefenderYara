
rule VirTool_Win32_Avet_12_MTB{
	meta:
		description = "VirTool:Win32/Avet.12!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_00_0 = {8b 44 24 2c 8b 8c 24 5c 28 00 00 89 4c 24 10 89 54 24 0c 8b 94 24 64 28 00 00 89 54 24 08 89 44 24 04 8b 84 24 68 28 00 00 89 04 24 8b 84 24 74 28 00 00 ff } //1
		$a_02_1 = {8b 84 24 98 28 00 00 8b 84 84 34 28 00 00 8d 54 90 01 02 8b 8c 24 98 28 00 00 c1 e1 0a 01 ca 89 14 24 ff 90 00 } //1
		$a_02_2 = {89 44 24 08 c7 44 90 01 06 89 14 24 e8 90 00 } //1
		$a_00_3 = {81 e9 00 10 00 00 83 09 00 2d 00 10 00 00 3d 00 10 00 00 77 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_00_3  & 1)*1) >=4
 
}