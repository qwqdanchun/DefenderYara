
rule VirTool_Win64_Recesesz_A_MTB{
	meta:
		description = "VirTool:Win64/Recesesz.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {c6 85 a8 01 00 00 01 48 8b 05 9f 6f 44 00 48 83 f8 02 ?? ?? 48 89 9c 24 f0 09 00 00 [0-20] 48 89 11 ba 01 00 00 00 48 89 51 08 48 83 61 20 00 48 89 84 24 f8 09 00 00 4c 89 ac 24 40 0f 00 00 48 89 71 10 48 89 51 18 ?? ?? ?? ?? ?? ?? ?? ba 03 00 00 } //1
		$a_03_1 = {48 8b 84 24 00 0a 00 00 49 89 45 10 f3 0f 6f 84 24 f0 09 00 00 f3 41 0f 7f 45 00 48 8b 94 24 48 0f 00 00 48 89 f9 ?? ?? ?? ?? ?? 48 8b 4c 24 38 4c 89 f2 ?? ?? ?? ?? ?? 48 8b 94 24 c8 02 00 00 4c 89 f9 ?? ?? ?? ?? ?? 48 8b 8c } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}