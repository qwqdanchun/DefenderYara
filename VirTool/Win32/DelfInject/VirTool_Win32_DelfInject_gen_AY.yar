
rule VirTool_Win32_DelfInject_gen_AY{
	meta:
		description = "VirTool:Win32/DelfInject.gen!AY,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 0b 00 00 07 00 "
		
	strings :
		$a_03_0 = {6a 04 68 00 30 00 00 8b 45 90 01 01 8b 40 ec 8b 40 50 50 8b 45 90 01 01 8b 40 ec 8b 40 34 50 8b 45 90 01 01 8b 40 f0 50 ff 15 90 00 } //05 00 
		$a_03_1 = {80 e2 0f 32 c2 88 45 f7 8d 45 fc e8 90 01 04 8b 55 fc 8a 54 1a ff 80 e2 f0 8a 4d f7 02 d1 88 54 18 ff 46 8b 45 f0 e8 52 d9 ff ff 3b f0 90 00 } //05 00 
		$a_01_2 = {8a 19 02 5c 24 09 02 5c 24 0a 02 c3 8a 19 88 5c 24 08 33 db 8a d8 8a 1c 1f 88 19 } //05 00 
		$a_00_3 = {64 ff 35 00 00 00 00 64 89 25 00 00 00 00 bb 00 00 00 00 b8 01 00 00 00 0f 3f 07 0b 36 8b 04 24 64 89 05 00 00 00 00 83 c4 08 85 db 0f 94 c0 36 8d 65 fc 36 8b 1c 24 36 8b 6c 24 04 83 c4 08 c3 8b 4c 24 0c c7 81 a4 00 00 00 ff ff ff ff 83 81 } //01 00 
		$a_01_4 = {b8 68 58 4d 56 } //01 00 
		$a_01_5 = {56 69 72 74 75 61 6c 41 6c 6c 6f 63 45 78 } //01 00  VirtualAllocEx
		$a_01_6 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //01 00  WriteProcessMemory
		$a_01_7 = {43 72 65 61 74 65 52 65 6d 6f 74 65 54 68 72 65 61 64 } //01 00  CreateRemoteThread
		$a_01_8 = {53 65 74 54 68 72 65 61 64 43 6f 6e 74 65 78 74 } //01 00  SetThreadContext
		$a_01_9 = {52 65 73 75 6d 65 54 68 72 65 61 64 } //01 00  ResumeThread
		$a_00_10 = {37 36 34 38 37 2d 33 33 37 2d 38 34 32 39 39 35 35 2d 32 32 36 31 34 } //01 00  76487-337-8429955-22614
	condition:
		any of ($a_*)
 
}