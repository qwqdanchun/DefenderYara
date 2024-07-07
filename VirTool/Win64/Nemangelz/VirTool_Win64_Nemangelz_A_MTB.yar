
rule VirTool_Win64_Nemangelz_A_MTB{
	meta:
		description = "VirTool:Win64/Nemangelz.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {4c 8b a5 e8 d2 00 00 4d 8b 84 24 e8 08 00 00 48 c7 44 24 20 22 00 00 00 90 02 14 48 89 f1 4c 89 ea 90 01 05 48 89 f1 90 01 05 48 89 c2 49 89 84 24 10 1f 00 00 90 01 07 49 89 84 24 18 1f 00 00 90 00 } //1
		$a_03_1 = {49 8b 84 24 d0 1e 00 00 4d 6b a4 24 e0 1e 00 00 48 90 01 07 6a 03 5f 4d 85 e4 90 02 14 48 89 85 40 ba 00 00 48 83 c0 30 4c 89 ad 48 ba 00 00 48 89 8d 50 ba 00 00 4c 89 ad 58 ba 00 00 90 01 07 48 89 8d 00 b2 00 00 90 00 } //1
		$a_03_2 = {4d 8b 84 24 e8 08 00 00 48 c7 44 24 20 25 00 00 00 90 02 14 48 89 f1 4c 89 ea 90 01 05 48 89 f1 90 01 05 48 89 c2 49 89 84 24 10 1f 00 00 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}