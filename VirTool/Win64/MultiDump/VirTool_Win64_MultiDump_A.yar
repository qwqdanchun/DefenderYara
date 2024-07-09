
rule VirTool_Win64_MultiDump_A{
	meta:
		description = "VirTool:Win64/MultiDump.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {49 8b 56 20 ?? ?? ?? ?? ?? 48 8b 4c 24 58 ?? ?? ?? ?? ?? ?? ?? 48 83 c2 70 4c 89 6c 24 50 41 b9 04 00 00 00 48 89 44 24 20 ff ?? ?? ?? ?? ?? 85 c0 ?? ?? ?? ?? ?? ?? 48 83 7c 24 50 04 ?? ?? ff ?? ?? ?? ?? ?? 4d 8b c6 33 d2 48 8b c8 ff ?? ?? ?? ?? ?? ff ?? ?? ?? ?? ?? 4c 8b c6 33 d2 48 8b c8 ff ?? ?? ?? ?? ?? 48 8b 4c 24 60 ff ?? ?? ?? ?? ?? 48 8b 8d 90 0a 00 00 } //1
		$a_03_1 = {48 8b 4d c8 ?? ?? ?? ?? ?? ?? ?? 45 33 c9 89 b5 50 2d 00 00 45 33 c0 48 89 44 24 20 ?? ?? ?? ?? ff ?? ?? ?? ?? ?? 8b 9d 50 2d 00 00 ff ?? ?? ?? ?? ?? 44 8b c3 ba 08 00 00 00 48 8b c8 ff ?? ?? ?? ?? ?? 48 8b d8 48 85 c0 ?? ?? ?? ?? ?? ?? 44 8b 8d 50 2d 00 00 ?? ?? ?? ?? ?? ?? ?? 48 8b 4d c8 4c 8b c3 ba 03 00 00 00 48 89 44 24 20 ff ?? ?? ?? ?? ?? 85 c0 } //1
		$a_03_2 = {ba 08 00 00 00 41 b8 d0 07 00 00 48 8b c8 ff ?? ?? ?? ?? ?? 41 b9 d0 07 00 00 48 8b d7 4c 8b f0 48 8b cb ?? ?? ?? ?? 4d 8b c6 48 89 44 24 20 ff ?? ?? ?? ?? ?? 85 c0 ?? ?? ?? ?? ?? ?? 48 81 7d 80 d0 07 00 00 ?? ?? ?? ?? ?? ?? 49 8b 7e 20 48 8b 5c 24 58 4c 89 6c 24 78 ff ?? ?? ?? ?? ?? ba 08 00 00 00 41 b8 80 02 00 00 48 8b c8 ff ?? ?? ?? ?? ?? 41 b9 80 02 00 00 48 8b d7 48 8b f0 48 8b cb ?? ?? ?? ?? ?? 4c 8b c6 48 89 44 24 20 ff ?? ?? ?? ?? ?? 85 c0 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}