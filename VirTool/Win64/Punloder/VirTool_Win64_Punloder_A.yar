
rule VirTool_Win64_Punloder_A{
	meta:
		description = "VirTool:Win64/Punloder.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_02_0 = {58 48 89 4c 24 08 48 89 54 24 10 4c 89 44 24 18 4c 89 4c 24 20 48 83 ec 28 8b 90 01 05 e8 90 01 04 48 83 c4 28 48 8b 4c 24 08 48 8b 54 24 10 4c 8b 44 24 18 4c 8b 4c 24 20 4c 8b d1 0f 05 c3 90 00 } //01 00 
		$a_02_1 = {48 63 85 84 00 00 00 48 3d 4f 01 00 00 90 01 02 48 63 85 84 00 00 00 48 8d 90 01 05 0f be 04 01 35 c4 00 00 00 88 85 a4 00 00 00 48 63 45 44 48 8b 90 01 05 48 03 c8 48 8b c1 48 c7 44 24 20 00 00 00 00 41 b9 01 00 00 00 90 00 } //01 00 
		$a_02_2 = {48 c7 44 24 38 00 00 00 00 48 c7 44 24 30 00 00 00 00 c7 44 24 28 20 00 00 00 c7 44 24 20 00 00 00 00 45 33 c9 45 33 c0 33 d2 48 8d 90 01 05 ff 15 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}