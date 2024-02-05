
rule VirTool_Win32_Larcen_A{
	meta:
		description = "VirTool:Win32/Larcen.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {68 00 10 00 00 68 00 04 00 00 6a 00 c7 45 f8 00 00 00 00 ff 15 90 01 04 8b f0 8d 90 01 02 50 53 8d 90 01 02 50 56 ff 15 90 01 04 50 ff 15 90 01 04 89 35 44 84 00 10 5e 90 01 02 ff 15 90 01 04 c7 00 16 00 00 00 ff 15 90 01 04 ff 75 10 ff 75 0c 57 ff 15 90 01 04 8b 4d fc 5f 33 cd 5b e8 90 01 04 8b e5 5d c3 90 00 } //01 00 
		$a_03_1 = {68 80 00 00 00 6a 04 6a 00 6a 00 6a 04 50 ff 15 90 01 04 68 00 04 00 00 8b f8 8d 90 01 05 6a 00 50 e8 90 01 04 ff 35 44 84 00 10 8d 90 01 05 c7 85 e8 f3 ff ff 00 00 00 00 ff 35 40 84 00 10 ff 35 3c 84 00 10 68 60 63 00 10 68 00 04 00 00 50 e8 90 01 04 8d 90 01 05 83 c4 24 8d 90 01 02 66 90 01 01 66 8b 01 83 c1 02 66 85 c0 90 00 } //01 00 
		$a_03_2 = {83 c4 0c 8b 45 fc 8b 48 08 51 8b 55 fc 83 c2 5c 52 8b 45 fc 8b 48 14 51 e8 90 01 04 83 c4 0c 8b 55 fc 83 7a 18 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule VirTool_Win32_Larcen_A_2{
	meta:
		description = "VirTool:Win32/Larcen.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {48 89 bc 24 88 00 00 00 ba 00 04 00 00 48 c7 44 24 30 00 00 00 00 41 b8 00 10 00 00 44 8d 49 04 ff 15 90 01 04 48 8b f8 ff 15 90 01 05 8b cb 4c 8d 90 01 02 48 8b c8 48 8b d7 48 8d 90 01 03 48 89 44 24 20 ff 15 90 01 04 48 89 3d 90 01 01 85 00 00 48 8b bc 24 88 00 00 00 90 02 1e 45 8b c6 8b d5 48 8b ce ff 15 90 01 04 48 8b 4c 24 38 48 33 cc e8 90 01 04 48 83 c4 40 41 5f 41 5e 5e 5d 5b c3 90 00 } //01 00 
		$a_03_1 = {48 c7 44 24 30 00 00 00 00 c7 44 24 28 80 00 00 00 48 8d 90 01 06 45 33 c0 c7 44 24 20 04 00 00 00 41 8d 90 01 02 ff 15 90 01 04 33 d2 48 8d 90 01 06 41 b8 90 01 04 48 8b f0 e8 74 90 01 03 48 8b 0d 90 01 01 84 00 00 4c 8d 90 01 05 4c 8b 0d 90 01 01 84 00 00 ba 00 04 00 00 48 89 4c 24 28 48 8b 0d 90 01 01 84 00 00 48 89 4c 24 20 90 00 } //01 00 
		$a_03_2 = {48 8b 44 24 38 8b 40 04 48 8b 4c 24 38 48 83 c1 90 01 01 44 8b c0 48 8b d1 48 8b 44 24 38 48 8b 48 10 e8 90 01 04 48 8b 44 24 38 8b 40 08 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}