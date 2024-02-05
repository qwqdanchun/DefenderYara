
rule VirTool_Win32_PipImpos_A_MTB{
	meta:
		description = "VirTool:Win32/PipImpos.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_03_0 = {8b 44 24 18 8b 4c 24 1c 6a 00 6a 00 6a 10 89 44 24 34 8d 90 01 03 50 6a 00 ff 74 24 24 c7 44 24 3c 01 00 00 00 89 4c 24 44 c7 44 24 48 02 00 00 00 ff 15 90 00 } //01 00 
		$a_03_1 = {50 6a 00 8d 90 01 03 50 68 40 16 40 00 6a 00 6a 00 ff 90 01 01 68 20 4e 00 00 50 ff 90 01 01 85 c0 90 00 } //01 00 
		$a_03_2 = {89 74 24 1c e8 90 01 04 83 c4 0c 8d 90 01 03 50 68 00 01 00 00 68 50 e4 41 00 6a 02 56 ff 15 90 01 04 68 00 00 06 00 6a 00 68 50 e4 41 00 ff 15 90 01 04 50 89 44 24 24 ff 15 90 00 } //01 00 
		$a_03_3 = {68 81 00 06 00 6a 00 6a 00 68 50 b4 41 00 ff 15 90 01 04 8b f8 85 ff 90 00 } //01 00 
		$a_03_4 = {83 c4 04 8d 90 01 03 6a 00 50 68 ff 00 00 00 8d 90 01 06 50 56 ff 15 90 01 04 56 ff 15 90 01 04 85 c0 90 00 } //01 00 
		$a_03_5 = {64 a3 00 00 00 00 89 55 bc 89 4d ac 33 ff 89 7d a8 33 c0 89 45 b0 89 45 a4 33 db 89 5d a0 89 45 b8 33 f6 89 75 b4 c7 45 e0 04 00 00 00 89 45 fc 8d 90 01 02 50 56 56 8d 90 01 02 50 51 ff 15 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}