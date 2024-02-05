
rule VirTool_Win32_Conjecture_A{
	meta:
		description = "VirTool:Win32/Conjecture.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {48 8b 8c 24 08 02 00 00 48 8b 14 01 48 8d 90 01 05 e8 90 01 04 b8 08 00 00 00 48 6b c0 03 48 8b 8c 24 08 02 00 00 48 8b 0c 01 e8 90 01 04 48 ff c0 48 89 44 24 58 48 8b 44 24 58 48 d1 e0 48 8b c8 e8 90 01 04 48 89 84 24 a0 00 00 00 b8 08 00 00 00 48 6b c0 03 48 c7 44 24 20 ff ff ff ff 48 8b 8c 24 08 02 00 00 4c 8b 0c 01 4c 8b 44 24 58 48 8b 94 24 a0 00 00 00 48 90 01 04 e8 90 01 04 48 8b 8c 24 a0 00 00 00 90 00 } //01 00 
		$a_03_1 = {44 8b c0 33 d2 b9 ff ff 1f 00 ff 15 90 01 04 48 89 84 24 c0 00 00 00 41 b8 70 00 00 00 33 d2 48 8d 90 01 06 e8 90 01 04 4c 8d 90 01 06 45 33 c0 ba 01 00 00 00 33 c9 ff 15 90 01 04 ff 15 90 01 04 4c 8b 84 24 a8 00 00 00 33 d2 48 8b c8 ff 15 90 01 04 48 89 84 24 58 01 00 00 4c 8d 90 01 06 45 33 c0 ba 01 00 00 00 48 8b 8c 24 58 01 00 00 ff 15 90 01 04 48 c7 44 24 30 00 00 00 00 48 c7 44 24 28 00 00 00 00 48 c7 44 24 20 08 00 00 00 4c 8d 90 01 06 41 b8 00 00 02 00 33 d2 48 8b 8c 24 58 01 00 00 ff 15 90 01 04 c7 84 24 f0 00 00 00 70 00 00 00 b8 08 00 00 00 48 6b c0 05 b9 08 00 00 00 48 6b c9 04 90 00 } //01 00 
		$a_03_2 = {45 33 c0 48 8b 94 24 d8 00 00 00 48 8b 8c 24 b0 00 00 00 ff 15 90 01 04 48 8b 8c 24 d8 00 00 00 ff 15 90 01 04 48 8b 90 01 06 ff 15 90 00 } //01 00 
		$a_03_3 = {48 63 05 58 d6 01 00 c7 44 24 20 40 00 00 00 41 b9 00 30 00 00 4c 8b c0 33 d2 48 8b 8c 24 d0 00 00 00 ff 15 90 01 04 48 89 84 24 b0 00 00 00 48 c7 84 24 c8 00 00 00 00 00 00 00 48 63 05 1c d6 01 00 48 8b 8c 24 c8 00 00 00 48 89 4c 24 20 4c 8b c8 4c 8b 44 24 70 48 8b 94 24 b0 00 00 00 48 8b 8c 24 d0 00 00 00 ff 15 90 01 04 89 44 24 50 83 7c 24 50 00 75 14 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}