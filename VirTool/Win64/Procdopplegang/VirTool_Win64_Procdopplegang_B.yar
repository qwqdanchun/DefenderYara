
rule VirTool_Win64_Procdopplegang_B{
	meta:
		description = "VirTool:Win64/Procdopplegang.B,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {48 8b 54 24 68 41 b9 00 30 00 00 48 8b 4c 24 60 c7 44 24 20 04 00 00 00 8b 82 f0 03 00 00 03 02 44 8b c0 8b d8 ff 90 01 05 48 8b 54 24 68 44 8b cb 48 8b 4c 24 60 4c 8b c2 4c 89 74 24 20 ff 90 01 05 85 c0 90 01 02 ff 90 00 } //01 00 
		$a_03_1 = {48 81 ec c8 00 00 00 48 90 01 06 48 33 c4 48 89 84 24 b0 00 00 00 49 8b f8 48 8b da 48 8b e9 ff 90 01 05 c6 44 24 40 00 90 01 05 45 33 f6 4c 8b c8 4c 89 74 24 38 45 33 c0 4c 89 74 24 30 ba ff ff 1f 00 48 89 7c 24 28 c7 44 24 20 04 00 00 00 ff 90 00 } //01 00 
		$a_03_2 = {48 8b 4c 24 60 4c 8b ce 4c 89 74 24 30 45 33 c0 44 89 74 24 28 33 d2 4c 89 74 24 20 ff 90 01 05 48 8b d8 48 85 c0 90 01 02 ff 90 01 05 8b d0 90 01 07 e8 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}