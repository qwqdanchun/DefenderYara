
rule TrojanProxy_Win32_Horst_gen_C{
	meta:
		description = "TrojanProxy:Win32/Horst.gen!C,SIGNATURE_TYPE_PEHSTR_EXT,61 02 58 02 18 00 00 64 00 "
		
	strings :
		$a_02_0 = {5d c3 8d 54 24 90 01 01 52 56 57 50 8b 44 24 90 01 01 50 ff 15 90 01 04 85 c0 75 90 01 01 90 02 03 b8 04 00 00 00 90 00 } //64 00 
		$a_02_1 = {5d c3 8d 54 24 90 01 01 52 57 56 50 8b 44 24 90 01 01 50 ff 15 90 01 04 85 c0 75 90 01 01 90 02 03 b8 04 00 00 00 90 00 } //64 00 
		$a_02_2 = {5d c3 6a 00 ff 15 90 01 04 8b 44 24 10 8d 54 24 20 52 53 56 57 50 ff 15 90 01 04 85 c0 75 0c b8 04 00 00 00 5f 5e 5b 8b e5 5d c3 90 00 } //64 00 
		$a_02_3 = {5d c3 8b 54 24 90 01 01 8d 4c 24 90 01 01 51 57 56 50 52 ff 15 90 01 04 85 c0 75 90 01 01 50 ff 90 02 06 b8 04 00 00 00 90 00 } //64 00 
		$a_02_4 = {5d c3 8b 54 24 90 01 01 8d 4c 24 90 01 01 51 57 56 50 52 ff 15 90 01 04 85 c0 75 90 01 01 b8 04 00 00 00 90 00 } //64 00 
		$a_02_5 = {c3 8d 54 24 90 01 01 52 53 57 50 8b 44 24 90 01 01 50 ff 15 90 01 04 85 c0 75 0c b8 04 00 00 00 90 00 } //01 00 
		$a_01_6 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //64 00  WriteProcessMemory
		$a_02_7 = {56 33 f6 46 39 35 90 01 04 57 75 10 ff 75 08 ff 15 90 01 04 50 ff 15 90 01 04 83 7d 0c 00 8a 45 10 90 00 } //01 00 
		$a_01_8 = {47 65 74 43 75 72 72 65 6e 74 50 72 6f 63 65 73 73 } //01 00  GetCurrentProcess
		$a_00_9 = {54 65 72 6d 69 6e 61 74 65 50 72 6f 63 65 73 73 } //64 00  TerminateProcess
		$a_02_10 = {5d c3 8b 54 24 90 01 01 8b 45 90 01 01 8d 4c 24 90 01 01 51 52 89 84 24 90 01 02 00 00 ff 15 90 01 04 85 c0 75 90 01 01 b8 06 00 00 00 90 00 } //64 00 
		$a_02_11 = {5d c3 8b 4c 24 90 01 01 8b 55 90 01 01 8d 44 24 90 01 01 50 51 89 94 24 90 01 02 00 00 ff 15 90 01 04 85 c0 75 90 01 01 b8 06 00 00 00 90 00 } //64 00 
		$a_02_12 = {5d c3 8b 45 90 01 01 6a 01 89 84 24 90 01 02 00 00 ff d6 8b 54 24 90 01 01 8d 4c 24 90 01 01 51 52 ff 15 90 01 04 6a 01 8b f8 ff d6 85 ff 75 90 01 01 b8 06 00 00 00 90 00 } //01 00 
		$a_00_13 = {53 65 74 54 68 72 65 61 64 43 6f 6e 74 65 78 74 } //01 00  SetThreadContext
		$a_00_14 = {52 65 73 75 6d 65 54 68 72 65 61 64 } //64 00  ResumeThread
		$a_02_15 = {55 8b ec 83 e4 f8 81 ec 18 08 00 00 8b 45 08 56 57 50 6a 00 6a 00 ff 15 90 01 04 85 c0 75 2a 6a 03 8d 8c 24 18 04 00 00 e8 90 01 04 8b f0 b9 03 01 00 00 90 00 } //64 00 
		$a_02_16 = {55 8b ec 83 e4 f8 81 ec 18 08 00 00 8b 45 08 56 57 50 6a 00 6a 00 ff 15 90 01 04 90 02 02 8b f0 90 02 06 85 f6 75 2a 6a 03 8d 8c 24 18 04 00 00 e8 90 01 04 8b f0 b9 03 01 00 00 90 00 } //01 00 
		$a_00_17 = {4f 70 65 6e 4d 75 74 65 78 41 } //01 00  OpenMutexA
		$a_00_18 = {43 72 65 61 74 65 4d 75 74 65 78 41 } //64 00  CreateMutexA
		$a_00_19 = {73 76 63 68 6f 73 74 2e } //01 00  svchost.
		$a_00_20 = {77 69 6e 69 6e 65 74 2e 64 6c 6c } //01 00  wininet.dll
		$a_00_21 = {77 73 32 5f 33 32 2e 64 6c 6c } //64 00  ws2_32.dll
		$a_00_22 = {33 36 34 35 46 42 43 44 2d 45 43 44 32 2d 32 33 44 30 2d 42 41 43 34 } //64 00  3645FBCD-ECD2-23D0-BAC4
		$a_00_23 = {73 64 72 30 30 30 30 2d 30 30 30 31 } //00 00  sdr0000-0001
	condition:
		any of ($a_*)
 
}