
rule VirTool_Win64_Bypez_A_MTB{
	meta:
		description = "VirTool:Win64/Bypez.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_00_0 = {8b 45 04 ff c0 89 45 04 48 63 45 04 48 b9 e0 1a 2c 94 fb 7f 00 00 48 03 c1 48 c7 44 24 20 00 00 00 00 41 b9 01 00 00 00 4c 8b 85 18 01 00 00 48 8b d0 48 8b 4d 48 ff 15 } //01 00 
		$a_02_1 = {c7 45 04 00 00 00 00 c7 45 24 00 00 00 00 48 8d 90 01 05 e8 90 01 04 89 45 24 44 8b 45 24 33 d2 b9 ff ff 1f 00 ff 15 90 00 } //01 00 
		$a_02_2 = {c7 45 04 00 00 00 00 33 d2 b9 02 00 00 00 e8 90 01 04 48 89 45 28 48 83 7d 28 ff 74 90 01 01 c7 45 50 30 01 00 00 48 8d 90 01 02 48 8b 4d 28 e8 90 01 04 85 c0 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}