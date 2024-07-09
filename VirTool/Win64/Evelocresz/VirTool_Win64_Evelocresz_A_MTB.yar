
rule VirTool_Win64_Evelocresz_A_MTB{
	meta:
		description = "VirTool:Win64/Evelocresz.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {48 83 ec 38 [0-13] 48 8b c8 [0-13] 48 89 05 38 1b 02 00 48 85 c0 ?? ?? ?? ?? ?? ?? ?? ?? ?? b9 01 00 00 00 ?? ?? ?? ?? ?? ?? 48 85 c0 } //1
		$a_03_1 = {48 8b 15 0f 1b 02 00 ?? ?? ?? ?? ?? ?? ?? 48 8b c8 48 c7 44 24 20 00 00 00 00 41 b9 01 00 00 00 ?? ?? ?? ?? ?? ?? 85 c0 } //1
		$a_03_2 = {48 89 5a 78 48 8b 41 08 48 83 80 f8 00 00 00 03 48 85 db ?? ?? 4d 85 c0 ?? ?? 48 81 7b c8 00 00 02 00 ?? ?? 83 7b d0 44 ?? ?? 48 b8 31 00 33 00 33 00 37 00 49 39 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}