
rule VirTool_Win32_Joiner_gen_A{
	meta:
		description = "VirTool:Win32/Joiner.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 01 00 "
		
	strings :
		$a_02_0 = {eb 48 6a 00 68 90 01 04 ff 35 90 01 04 68 90 01 04 ff 35 90 01 04 e8 ad 00 00 00 8b db 8a ed 8b c0 90 01 01 6a 00 68 90 01 04 ff 35 90 01 04 68 90 01 04 ff 35 90 01 04 e8 95 00 00 00 eb 05 6f 70 65 6e 00 ff 35 90 01 04 e8 59 00 00 00 8b db 8a ed 8b c0 90 01 01 6a 01 6a 00 6a 00 68 90 01 04 68 90 01 04 6a 00 e8 71 00 00 00 e9 5d fd ff ff 90 00 } //01 00 
		$a_02_1 = {81 c2 05 01 00 00 8b db 8a ed 8b c0 90 01 01 f7 da 6a 02 6a 00 52 ff 35 90 01 04 e8 d7 02 00 00 6a 00 68 90 01 04 68 00 01 00 00 68 90 01 04 ff 35 90 01 04 e8 b5 02 00 00 6a 00 68 90 01 04 6a 04 68 90 01 04 ff 35 90 01 04 e8 9c 02 00 00 83 3d 90 01 04 ff 0f 84 3b 02 00 00 83 3d 90 01 04 00 0f 84 2e 02 00 00 90 01 01 8b 1d 90 01 04 01 1d 90 01 04 8b db 8a ed 8b c0 90 01 01 81 05 90 01 04 05 01 00 00 f7 1d 90 01 04 6a 02 6a 00 ff 35 90 01 04 ff 35 90 01 04 e8 4f 02 00 00 f7 1d 90 01 05 8a ed 8b c0 68 90 01 04 68 00 01 00 00 e8 29 02 00 00 90 00 } //01 00 
		$a_02_2 = {75 73 65 72 33 32 2e 64 6c 6c 00 90 01 03 43 6c 6f 73 65 48 61 6e 64 6c 65 00 90 01 02 43 72 65 61 74 65 46 69 6c 65 41 00 90 01 02 45 78 69 74 50 72 6f 63 65 73 73 00 90 01 02 47 65 74 4d 6f 64 75 6c 65 46 69 6c 65 4e 61 6d 65 41 00 90 01 03 47 65 74 54 65 6d 70 50 61 74 68 41 00 90 01 03 52 65 61 64 46 69 6c 65 00 90 01 03 53 65 74 46 69 6c 65 50 6f 69 6e 74 65 72 00 90 01 03 57 72 69 74 65 46 69 6c 65 00 90 01 02 6c 73 74 72 63 61 74 41 00 90 01 01 6b 65 72 6e 65 6c 33 32 2e 64 6c 6c 00 90 01 03 53 68 65 6c 6c 45 78 65 63 75 74 65 41 00 53 48 45 4c 4c 33 32 2e 64 6c 6c 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}