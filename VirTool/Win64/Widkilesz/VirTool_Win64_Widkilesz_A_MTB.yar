
rule VirTool_Win64_Widkilesz_A_MTB{
	meta:
		description = "VirTool:Win64/Widkilesz.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {c7 44 24 5c 01 00 00 00 e8 90 01 04 84 c0 0f 84 aa 01 00 00 48 90 01 04 45 31 c0 41 b9 3f 00 0f 00 48 c7 c1 02 00 00 80 48 89 44 24 20 48 8d 90 01 05 ff 15 90 01 04 85 90 00 } //1
		$a_03_1 = {48 8b 4c 24 60 45 31 c0 c7 44 24 28 04 00 00 00 41 b9 04 00 00 00 48 8d 90 01 05 48 89 74 24 20 ff 90 01 01 31 c0 31 d2 31 c9 48 90 00 } //1
		$a_03_2 = {48 8b 54 24 78 4c 90 01 04 ff 15 90 01 04 48 8b 4c 24 78 85 c0 74 1d ff 15 90 01 04 8b 44 24 6c 85 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}