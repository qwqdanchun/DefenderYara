
rule VirTool_Win32_RogPotz_A_MTB{
	meta:
		description = "VirTool:Win32/RogPotz.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 05 00 00 "
		
	strings :
		$a_81_0 = {52 6f 67 75 65 50 6f 74 61 74 6f } //1 RoguePotato
		$a_03_1 = {4c 8b cb 48 89 ?? ?? ?? ?? ?? 4c 8b c7 4c 89 ?? ?? ?? ?? ?? 48 8b d3 48 8d ?? ?? ?? ?? ?? e8 ?? ?? ?? ?? 4c 8b cf 4c 89 6c 24 28 4c 8d ?? ?? ?? ?? ?? 44 89 6c 24 20 33 d2 33 c9 ff 15 ?? ?? ?? ?? 4c 8d ?? ?? ?? 4c 89 6c 24 28 4c 8d ?? ?? ?? ?? ?? 48 89 5c 24 58 33 d2 4c 89 7c 24 60 33 c9 4c 89 64 24 68 4c 89 74 24 70 48 89 7c 24 78 44 89 6c 24 20 ff 15 ?? ?? ?? ?? 33 c9 48 8b f8 ff 15 ?? ?? ?? ?? 4c 8d ?? ?? ?? 4c 89 6c 24 50 ba 01 00 00 00 4c 89 6c 24 48 33 c9 ff 15 ?? ?? ?? ?? 48 8b 4c 24 48 4c 8d ?? ?? ?? 45 33 c0 ba 12 10 00 00 ff 15 ?? ?? ?? ?? b9 20 00 00 00 } //1
		$a_03_2 = {c6 45 da 00 e8 ?? ?? ?? ?? 0f 10 45 af 8b 4d d7 4d 8b c7 0f 10 4d bf 49 8b d4 48 8b f8 0f 11 00 0f 10 45 ef 0f 11 48 10 0f 10 4d ff 0f 11 40 20 0f 11 48 30 89 48 40 48 8d ?? ?? c6 40 44 07 e8 ?? ?? ?? ?? 48 ?? ?? ?? 4c 8d ?? ?? 48 63 c6 44 [0-03] 48 8b d7 c7 44 38 45 00 00 00 00 c7 44 38 49 00 0a 00 ff c7 44 38 4d ff 00 00 00 c6 44 38 51 00 48 8b 01 c7 45 db 00 00 00 00 ff ?? ?? 8b 55 db 48 8d ?? ?? ?? ?? ?? e8 ?? ?? ?? ?? 48 8b cf e8 ?? ?? ?? ?? 49 8b cc e8 ?? ?? ?? ?? 33 c0 48 8b 4d 0f 48 33 cc e8 ?? ?? ?? ?? 4c 8d ?? ?? ?? ?? ?? ?? 49 8b 5b 30 49 8b 73 40 49 8b 7b 48 49 8b e3 41 5f 41 5e 41 5d 41 5c 5d c3 } //1
		$a_03_3 = {8b 74 24 08 85 f6 ?? ?? ?? ?? ?? ?? 85 ff ?? ?? ?? ?? ?? ?? 8b 44 24 10 57 56 57 68 ?? ?? ?? ?? 89 3d d4 14 42 00 a3 d8 14 42 00 e8 ?? ?? ?? ?? 83 c4 10 6a 00 6a 00 56 8b 35 ?? ?? ?? ?? 68 ?? ?? ?? ?? 6a 00 6a 00 ff ?? 8b 44 24 14 8b 4c 24 08 89 44 24 20 8b 44 24 18 6a 00 89 44 24 28 8b 44 24 14 6a 00 89 44 24 30 8d 44 ?? ?? 50 68 ?? ?? ?? ?? 6a 00 6a 00 89 7c 24 34 89 4c 24 44 ff d6 6a 00 89 44 24 0c ff 15 ?? ?? ?? ?? 8d 44 ?? ?? c7 44 24 14 00 00 00 00 50 6a 01 6a 00 c7 44 24 24 00 00 00 00 ff 15 ?? ?? ?? ?? 8d 44 ?? ?? 50 6a 00 68 12 10 00 00 ff 74 24 24 ff 15 } //1
		$a_03_4 = {8b 45 c8 8d 73 ?? 88 45 c8 8b 45 9c 56 c6 45 c9 00 88 45 ca c6 45 cb 00 e8 ?? ?? ?? ?? 0f 10 45 a4 8b f8 8b 45 c8 53 ff 75 a0 0f 11 07 0f 10 45 b4 0f 11 47 10 0f 10 45 cc 0f 11 47 20 0f 10 45 dc 0f 11 47 30 89 47 40 8d ?? ?? 50 c6 47 44 07 e8 ?? ?? ?? ?? 8b 4d 98 8d ?? ?? 83 c4 10 c7 44 1f 45 00 00 00 00 c7 44 1f 49 00 0a 00 ff c7 44 1f 4d ff 00 00 00 c6 44 1f 51 00 8b 01 52 56 57 51 c7 45 c4 00 00 00 00 ff ?? ?? ff 75 c4 68 ?? ?? ?? ?? e8 ?? ?? ?? ?? 57 e8 ?? ?? ?? ?? ff 75 a0 e8 ?? ?? ?? ?? 8b 4d fc 83 c4 10 33 cd 33 c0 5f 5e 5b e8 ?? ?? ?? ?? 8b e5 5d c2 1c 00 } //1
	condition:
		((#a_81_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1) >=3
 
}