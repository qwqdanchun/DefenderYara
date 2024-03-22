
rule VirTool_Win64_ThrowBack_B{
	meta:
		description = "VirTool:Win64/ThrowBack.B,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {41 b9 00 30 00 00 45 8b c0 33 d2 ff 90 01 05 48 8b f8 48 85 c0 90 01 06 48 83 64 24 20 00 45 8b ce 4c 8b c6 48 8b d0 48 8b cb ff 90 01 05 85 c0 90 01 06 48 90 01 07 48 89 44 24 30 83 64 24 28 00 48 83 64 24 20 00 4c 8b cf 45 33 c0 33 d2 48 8b cb ff 90 01 05 48 89 44 24 50 ff 90 01 05 83 f8 08 90 00 } //01 00 
		$a_03_1 = {44 8b c0 33 d2 41 bd 00 00 00 02 41 8b cd ff 90 01 05 48 8b d8 ff 90 01 05 48 85 db 90 01 02 4c 90 01 04 ba eb 01 02 00 48 8b cb ff 90 01 05 48 8b 4c 24 70 48 85 c9 90 01 02 48 90 01 03 48 89 44 24 28 90 01 04 89 44 24 20 44 8b c8 45 33 c0 41 8b d5 ff 90 01 05 85 c0 74 10 48 8b 4d 80 ff 90 01 05 ff 90 01 05 48 8b 4c 24 70 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}