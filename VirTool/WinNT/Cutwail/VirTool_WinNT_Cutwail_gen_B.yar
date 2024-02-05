
rule VirTool_WinNT_Cutwail_gen_B{
	meta:
		description = "VirTool:WinNT/Cutwail.gen!B,SIGNATURE_TYPE_PEHSTR_EXT,14 00 0f 00 06 00 00 0a 00 "
		
	strings :
		$a_02_0 = {73 65 72 76 69 63 65 73 2e 65 78 65 90 02 10 77 69 6e 6c 6f 67 6f 6e 2e 65 78 65 90 02 10 73 65 72 76 69 63 65 73 2e 65 78 65 90 02 10 77 69 6e 6c 6f 67 6f 6e 2e 65 78 65 90 02 10 73 65 72 76 69 63 65 73 2e 65 78 65 90 02 10 77 69 6e 6c 6f 67 6f 6e 2e 65 78 65 90 00 } //05 00 
		$a_02_1 = {8b 5d 10 6a 0d bf 90 02 04 8d b3 54 01 00 00 59 33 c0 f3 a6 0f 85 3d 01 00 00 8b 75 0c 81 c6 54 01 00 00 6a 0d bf 90 02 04 59 33 c0 f3 a6 0f 84 22 01 00 00 53 e8 90 00 } //05 00 
		$a_00_2 = {8d 90 88 00 00 00 8d 8e 88 00 00 00 89 11 89 88 8c 00 00 00 8b 45 10 05 88 00 00 00 89 00 8b 45 10 8d 88 88 00 00 00 89 88 8c 00 00 00 e9 e2 00 00 00 } //0a 00 
		$a_02_3 = {0f bf 00 3d 93 08 00 00 74 7d 3d 28 0a 00 00 74 67 3d ce 0e 00 00 0f 85 bd 00 00 00 8d 45 08 50 ff 75 08 ff 15 90 02 04 85 c0 0f 8c a8 00 00 00 8b 4d 08 8b 91 8c 90 00 } //05 00 
		$a_00_4 = {8b 89 88 00 00 00 b8 88 00 00 00 2b c8 2b d0 8d 82 88 00 00 00 8d 91 88 00 00 00 89 10 89 81 8c 00 00 00 8b 45 08 05 88 00 00 00 89 00 8b 45 08 8d 88 88 00 00 00 89 88 8c 00 00 00 eb 61 8d 45 08 50 ff 75 08 } //05 00 
		$a_00_5 = {8b 45 08 8b 88 a4 00 00 00 8b 80 a0 00 00 00 ba a0 00 00 00 2b ca 2b c2 03 ca 8d 90 a0 00 00 00 89 11 89 88 a4 00 00 00 8b 45 08 05 a0 00 00 00 89 00 8b 45 08 8d 88 a0 00 00 00 89 88 a4 00 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}