
rule VirTool_Win32_TonickInject{
	meta:
		description = "VirTool:Win32/TonickInject,SIGNATURE_TYPE_PEHSTR_EXT,1c 00 1c 00 0c 00 00 14 00 "
		
	strings :
		$a_03_0 = {66 33 45 d0 0f bf d0 52 ff 15 90 01 04 8b d0 8d 4d c8 ff 15 90 01 04 50 ff 15 90 01 04 8b d0 8d 4d d4 ff 15 90 00 } //14 00 
		$a_03_1 = {66 33 45 d0 0f bf c0 50 e8 90 01 04 8b d0 8d 4d c8 e8 90 01 04 50 e8 90 01 04 8b d0 8d 4d d4 e8 90 00 } //14 00 
		$a_03_2 = {6b 70 ff fb 12 e7 0b 90 01 01 00 04 00 23 44 ff 2a 31 74 ff 32 04 00 48 ff 44 ff 35 4c ff 00 0c 6b 70 ff f3 ff 00 c6 1c 90 01 02 00 07 f4 01 70 70 ff 1e 90 01 02 00 0b 6b 70 ff f4 01 a9 70 70 ff 00 0a 04 72 ff 64 6c 90 00 } //04 00 
		$a_00_3 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //02 00  WriteProcessMemory
		$a_01_4 = {4f 00 76 00 56 00 6a 00 68 00 67 00 77 00 5e 00 60 00 6f 00 7c 00 43 00 6b 00 5d 00 6a 00 73 00 65 00 7b 00 7c 00 7a 00 } //02 00  OvVjhgw^`o|Ck]jse{|z
		$a_01_5 = {57 00 6b 00 71 00 70 00 70 00 67 00 6b 00 49 00 65 00 66 00 64 00 6f 00 48 00 76 00 } //02 00  WkqppgkIefdoHv
		$a_01_6 = {52 00 67 00 77 00 50 00 6d 00 74 00 62 00 69 00 6d 00 49 00 64 00 62 00 79 00 6b 00 77 00 64 00 } //02 00  RgwPmtbimIdbykwd
		$a_01_7 = {53 00 67 00 70 00 71 00 68 00 63 00 53 00 60 00 7b 00 6f 00 6a 00 68 00 } //01 00  SgpqhcS`{ojh
		$a_01_8 = {4e 74 55 6e 6d 61 70 56 69 65 77 4f 66 53 65 63 74 69 6f 6e } //01 00  NtUnmapViewOfSection
		$a_01_9 = {56 69 72 74 75 61 6c 41 6c 6c 6f 63 45 78 } //01 00  VirtualAllocEx
		$a_01_10 = {53 65 74 54 68 72 65 61 64 43 6f 6e 74 65 78 74 } //01 00  SetThreadContext
		$a_01_11 = {52 65 73 75 6d 65 54 68 72 65 61 64 } //01 00  ResumeThread
	condition:
		any of ($a_*)
 
}