
rule VirTool_Win32_Obfuscator_AFX{
	meta:
		description = "VirTool:Win32/Obfuscator.AFX,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 0c 00 00 01 00 "
		
	strings :
		$a_03_0 = {68 00 00 10 00 8b f0 e8 90 01 04 83 c4 04 90 01 04 90 03 0f 12 74 1c 57 8b 46 0c 8b 4e 08 56 89 0c 83 8b 3e 74 1f 57 8d 49 00 8b 46 0c 8b 4e 08 89 0c 83 8b 3e 56 e8 90 01 04 83 c4 04 90 01 04 75 e6 5f ff d3 90 00 } //01 00 
		$a_03_1 = {89 45 fc 68 00 00 10 00 e8 90 01 04 83 c4 04 89 45 f8 83 7d fc 00 74 34 8b 45 fc 8b 48 0c 8b 55 f8 8b 45 fc 8b 40 08 89 04 8a 8b 4d fc 8b 11 89 55 f4 8b 45 fc 89 45 f0 8b 4d f0 51 e8 90 01 04 83 c4 04 8b 55 f4 89 55 fc eb c6 ff 55 f8 90 00 } //01 00 
		$a_03_2 = {68 00 00 10 00 8b f0 e8 90 01 04 90 03 05 05 85 f6 59 8b d8 59 8b d8 85 f6 74 1a 57 8b 46 0c 8b 4e 08 90 03 06 06 56 89 0c 83 8b 3e 89 0c 83 8b 3e 56 e8 90 01 09 75 e8 5f ff d3 90 00 } //01 00 
		$a_03_3 = {89 45 f8 68 00 00 10 00 e8 90 01 04 83 c4 04 89 45 fc 83 7d f8 00 74 34 8b 45 f8 8b 48 0c 8b 55 fc 8b 45 f8 8b 40 08 89 04 8a 8b 4d f8 8b 11 89 55 f4 8b 45 f8 89 45 f0 8b 4d f0 51 e8 90 01 04 83 c4 04 8b 55 f4 89 55 f8 eb c6 ff 55 fc 90 00 } //01 00 
		$a_03_4 = {56 33 c0 be 90 01 02 00 00 56 50 e8 90 01 04 83 c4 08 90 03 03 05 4e 79 f3 83 ee 01 79 f1 5e c3 90 00 } //01 00 
		$a_03_5 = {c7 45 f8 00 00 00 00 c7 45 fc 90 01 04 eb 09 8b 45 fc 83 e8 01 89 45 fc 83 7d fc 00 7c 15 8b 4d fc 51 8b 55 f8 52 e8 90 01 04 83 c4 08 89 45 f8 eb dc 90 00 } //01 00 
		$a_03_6 = {56 33 c0 be 90 01 02 00 00 56 50 e8 90 01 04 90 03 02 02 59 4e 4e 59 59 79 f4 5e c3 90 00 } //01 00 
		$a_03_7 = {c7 45 fc 00 00 00 00 c7 45 f8 90 01 04 eb 09 8b 45 f8 83 e8 01 89 45 f8 83 7d f8 00 7c 15 8b 4d f8 51 8b 55 fc 52 e8 90 01 04 83 c4 08 89 45 fc eb dc 90 00 } //01 00 
		$a_03_8 = {57 68 00 80 00 00 e8 90 01 04 8b d0 90 03 07 07 b9 00 20 00 00 33 c0 33 c0 b9 00 20 00 00 8b fa f3 ab 8b 44 24 0c 83 c4 04 85 c0 89 02 5f 74 03 89 50 04 8b c2 c3 90 00 } //01 00 
		$a_03_9 = {68 00 80 00 00 e8 90 01 04 83 c4 04 89 45 f8 8b 45 f8 89 45 fc 68 00 80 00 00 6a 00 8b 4d fc 51 e8 90 01 04 83 c4 0c 8b 55 fc 8b 45 08 89 02 83 7d 08 00 74 09 90 00 } //01 00 
		$a_03_10 = {56 57 bf 00 80 00 00 57 e8 90 01 04 90 03 03 03 8b f0 57 57 8b f0 6a 00 56 e8 90 01 04 8b 44 24 1c 83 c4 10 90 03 04 04 85 c0 89 06 89 06 85 c0 74 03 89 70 04 90 00 } //01 00 
		$a_03_11 = {56 68 00 80 00 00 e8 90 01 04 68 00 80 00 00 8b f0 6a 00 56 e8 90 01 04 8b 44 24 18 83 c4 10 90 03 04 04 89 06 85 c0 85 c0 89 06 74 03 89 70 04 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}