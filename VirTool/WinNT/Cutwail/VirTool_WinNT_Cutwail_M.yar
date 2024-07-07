
rule VirTool_WinNT_Cutwail_M{
	meta:
		description = "VirTool:WinNT/Cutwail.M,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_00_0 = {53 00 73 00 65 00 72 00 76 00 69 00 63 00 65 00 73 00 2e 00 65 00 78 00 65 00 00 00 5c 00 44 00 72 00 69 00 76 00 65 00 72 00 00 00 } //1
		$a_03_1 = {0f b7 00 66 3d 28 0a 73 09 83 25 90 01 02 01 00 00 eb 0c 75 0a c7 05 90 01 02 01 00 64 01 00 00 a1 90 01 02 01 00 c3 90 00 } //1
		$a_02_2 = {8b 49 28 03 c8 51 56 68 90 01 02 01 00 56 ff 75 90 01 01 57 ff 15 90 01 04 56 56 56 57 ff 15 90 00 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_03_1  & 1)*1+(#a_02_2  & 1)*1) >=3
 
}