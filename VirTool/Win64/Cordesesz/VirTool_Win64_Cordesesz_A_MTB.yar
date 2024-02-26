
rule VirTool_Win64_Cordesesz_A_MTB{
	meta:
		description = "VirTool:Win64/Cordesesz.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {48 89 45 d0 48 8b 45 18 48 89 45 d8 48 8d 90 01 05 48 89 45 e0 c7 45 e8 ce 00 00 00 48 8b 45 20 48 89 45 f0 48 90 01 03 48 89 c2 48 8b 90 00 } //01 00 
		$a_03_1 = {48 89 45 b8 48 8b 45 30 48 89 45 c0 48 c7 45 c8 00 00 00 00 c7 45 d0 00 00 00 00 48 c7 45 d8 00 00 00 00 48 c7 45 e0 00 00 00 00 48 c7 45 e8 00 00 00 00 48 c7 45 f0 00 00 00 00 48 90 01 03 48 89 c2 48 8b 90 00 } //01 00 
		$a_03_2 = {48 c7 45 f8 ff ff ff ff 48 8d 90 01 05 48 89 c2 48 8b 05 48 cf 0e 00 48 89 c1 e8 90 01 04 48 89 c1 48 8b 05 46 cf 0e 00 48 89 c2 e8 90 01 04 48 8b 45 f8 48 89 c1 e8 90 01 04 48 89 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}