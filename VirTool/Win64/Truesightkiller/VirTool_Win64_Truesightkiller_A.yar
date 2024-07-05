
rule VirTool_Win64_Truesightkiller_A{
	meta:
		description = "VirTool:Win64/Truesightkiller.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {48 89 4c 24 60 41 b9 ff 01 0f 00 48 89 4c 24 58 4c 8b c6 48 89 4c 24 50 48 8b d6 48 89 4c 24 48 48 89 4c 24 40 48 89 44 24 38 89 4c 24 30 48 8b cf c7 44 24 28 03 00 00 00 c7 44 24 20 01 00 00 00 ff 90 01 05 48 8b d8 48 85 c0 90 01 02 48 8b 90 00 } //01 00 
		$a_03_1 = {45 33 c9 4c 89 7c 24 30 c7 44 24 28 80 00 00 00 90 01 07 45 33 c0 c7 44 24 20 03 00 00 00 90 01 04 ff 90 01 05 48 8b 90 01 05 48 8b f0 48 83 f8 ff 90 00 } //01 00 
		$a_01_2 = {ba 44 e0 22 00 } //01 00 
		$a_80_3 = {5c 5c 2e 5c } //\\.\  01 00 
		$a_80_4 = {2e 73 79 73 00 } //.sys  00 00 
	condition:
		any of ($a_*)
 
}