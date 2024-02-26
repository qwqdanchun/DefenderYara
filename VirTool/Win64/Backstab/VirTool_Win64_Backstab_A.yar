
rule VirTool_Win64_Backstab_A{
	meta:
		description = "VirTool:Win64/Backstab.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {48 89 5d a0 ff 90 01 03 00 00 48 8b c8 90 01 07 ff 90 01 03 00 00 85 c0 90 01 02 48 8b 4d a0 90 01 08 48 89 44 24 20 90 01 05 89 5c 24 74 90 01 03 c7 45 90 01 01 04 00 00 00 ff 90 01 03 00 00 90 00 } //01 00 
		$a_03_1 = {48 89 5c 24 28 90 01 04 41 b9 10 00 00 00 48 89 5c 24 20 33 d2 ff 90 01 03 00 00 48 8b 4d 90 01 01 85 c0 90 00 } //01 00 
		$a_03_2 = {bf 01 00 00 00 89 7c 24 40 ff 90 01 03 00 00 33 d2 b9 00 10 00 00 44 8b c0 89 44 24 44 44 8b f0 ff 90 01 03 00 00 49 3b c4 90 00 } //01 00 
		$a_03_3 = {48 33 c4 48 89 85 30 08 00 00 0f 10 90 01 04 00 8b 05 0b 42 00 00 4c 8b e2 48 89 54 24 78 44 8b f9 89 4c 24 60 33 d2 41 b8 f4 01 00 00 0f 29 85 10 04 00 00 90 01 07 89 85 20 04 00 00 e8 90 01 02 00 00 33 db 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}