
rule VirTool_Win64_SOCKRDP_A_MTB{
	meta:
		description = "VirTool:Win64/SOCKRDP.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {48 89 85 d0 47 00 00 48 8d 90 01 05 c6 05 d6 59 00 00 04 48 89 05 c7 59 00 00 8b d9 48 8d 90 01 05 48 8b fa 48 8d 90 01 05 48 89 05 a5 59 00 00 90 00 } //01 00 
		$a_03_1 = {48 89 44 24 50 44 0f b6 05 03 53 00 00 48 8d 90 01 05 33 f6 41 83 c8 01 83 c9 ff 48 89 74 24 40 ff 15 90 01 04 48 89 05 e9 52 00 00 48 85 c0 90 01 02 4c 8d 4c 24 48 48 8b c8 4c 8d 44 24 40 8d 56 01 ff 15 90 01 04 85 c0 90 00 } //01 00 
		$a_03_2 = {48 8d 0d 88 37 00 00 e8 b3 90 01 03 45 33 c0 33 d2 33 c9 ff 15 26 23 00 00 45 33 c0 33 d2 33 c9 48 89 05 f8 58 00 00 ff 15 90 01 04 4c 89 64 24 48 45 33 c9 48 89 05 0b 59 00 00 45 33 c0 33 c0 33 d2 48 89 44 24 50 33 c9 0f 10 44 24 48 48 89 44 24 58 48 89 44 24 60 0f 10 4c 24 58 0f 11 45 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}