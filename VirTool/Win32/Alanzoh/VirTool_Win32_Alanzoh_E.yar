
rule VirTool_Win32_Alanzoh_E{
	meta:
		description = "VirTool:Win32/Alanzoh.E,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_02_0 = {31 e0 89 44 24 08 c7 44 24 04 00 00 00 00 c7 04 24 00 00 00 00 [0-04] 50 68 01 01 00 00 6a 08 68 [0-04] 68 02 00 00 80 ff 15 f8 6d 49 00 } //1
		$a_02_1 = {8b 6c 24 2c 6a 40 68 00 30 00 00 55 6a 00 56 ff 15 ?? ?? ?? ?? 85 c0 ?? ?? 89 c7 89 e0 50 55 ff 74 24 38 57 56 ff 15 ?? ?? ?? ?? 85 c0 ?? ?? 6a 00 6a 00 6a 00 57 6a 00 6a 00 56 ff 15 d8 6b 49 00 } //1
		$a_02_2 = {6a 14 6a 01 e8 ?? ?? ?? ?? 83 c4 08 89 47 04 83 ec 10 0f 28 05 c0 d3 46 00 0f 11 04 24 ff 15 ?? ?? ?? ?? 89 c6 8b 47 04 89 70 10 ff 77 04 ff 37 ff 15 } //1
		$a_02_3 = {8b 44 24 20 83 ec 18 8d 4c ?? ?? 89 4c 24 14 0f 28 05 f0 d3 ?? ?? 0f 11 44 24 04 89 04 24 ff 15 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_02_3  & 1)*1) >=4
 
}