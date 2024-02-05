
rule VirTool_Win64_Priviclisz_A_MTB{
	meta:
		description = "VirTool:Win64/Priviclisz.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {8b f8 33 c9 ff 15 90 01 04 4c 8b c0 44 8b cf 48 8d 90 01 05 b9 04 00 00 00 ff 15 90 01 04 48 8b f8 33 c9 ff 15 90 01 04 48 89 5c 24 58 48 89 44 24 50 48 89 5c 24 48 48 89 5c 24 40 c7 44 90 00 } //01 00 
		$a_03_1 = {b9 d3 07 00 00 44 90 01 03 44 90 01 03 ff 15 90 01 04 48 89 05 a3 5d 00 00 48 85 c0 0f 84 dd 03 00 00 0f b7 c8 48 90 01 03 48 8b 4d 98 4c 8b 3c d1 4d 8b c7 48 8b d0 48 8d 90 01 05 e8 d1 90 01 03 4c 3b 7d b8 0f 85 90 00 } //01 00 
		$a_03_2 = {48 8b d7 48 8d 90 01 05 e8 08 90 01 03 49 83 e7 f1 4c 89 bd 08 02 00 00 48 89 b5 d0 01 00 00 4c 8d 90 01 05 ba 08 00 00 00 48 8b 0d 8b 55 00 00 ff 15 90 01 04 4c 8d 90 01 05 ba 08 00 00 00 48 8b 0d 5a 55 00 00 ff 15 90 01 04 48 8d 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}