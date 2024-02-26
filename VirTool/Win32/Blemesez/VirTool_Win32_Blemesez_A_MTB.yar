
rule VirTool_Win32_Blemesez_A_MTB{
	meta:
		description = "VirTool:Win32/Blemesez.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {81 ec 3c 02 00 00 c7 85 60 ff ff ff 46 61 69 6c c7 85 64 ff ff ff 65 64 20 74 c7 85 68 ff ff ff 6f 20 63 72 c7 85 6c ff ff ff 65 61 74 65 c7 85 70 ff ff ff 20 50 65 72 c7 85 74 ff ff ff 73 69 73 74 c7 85 78 ff ff ff 65 6e 63 65 c7 85 7c ff ff ff 2e 0a 00 00 90 01 03 b8 00 00 00 00 b9 18 00 00 00 89 d7 f3 ab 90 01 06 ba 90 01 04 b9 1b 90 00 } //01 00 
		$a_03_1 = {89 45 e0 8b 85 d8 fd ff ff 8b 55 e0 89 54 24 14 90 01 06 89 54 24 10 c7 44 24 0c 01 00 00 00 c7 44 24 08 00 00 00 00 c7 44 24 04 1e d1 40 00 89 04 24 90 01 05 83 ec 18 85 c0 90 01 02 8b 85 d8 fd ff ff 89 04 24 90 01 05 83 ec 04 90 00 } //01 00 
		$a_03_2 = {89 44 24 04 c7 04 24 56 d2 40 00 90 01 05 85 c0 90 01 02 c7 44 24 14 00 00 00 00 c7 44 24 10 00 00 00 00 c7 44 24 0c 00 00 00 00 c7 44 24 08 f3 15 40 00 c7 44 24 04 00 00 00 00 c7 04 24 00 00 00 00 90 01 05 83 ec 18 89 45 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}