
rule VirTool_Win32_VBInject_gen_AO{
	meta:
		description = "VirTool:Win32/VBInject.gen!AO,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 0b 00 00 02 00 "
		
	strings :
		$a_01_0 = {6d 00 61 00 73 00 73 00 61 00 66 00 61 00 63 00 6b 00 61 00 } //02 00  massafacka
		$a_01_1 = {70 00 69 00 6e 00 67 00 3b 00 20 00 31 00 2e 00 32 00 3b 00 20 00 30 00 2e 00 33 00 3b 00 20 00 30 00 2e 00 34 00 20 00 2d 00 20 00 6e 00 3b 00 20 00 31 00 20 00 2d 00 20 00 77 00 3b 00 20 00 35 00 30 00 30 00 20 00 3e 00 20 00 6e 00 75 00 6c 00 } //02 00  ping; 1.2; 0.3; 0.4 - n; 1 - w; 500 > nul
		$a_01_2 = {4d 00 65 00 6c 00 74 00 2e 00 62 00 61 00 74 00 } //02 00  Melt.bat
		$a_01_3 = {56 00 4c 00 43 00 50 00 6f 00 72 00 74 00 } //02 00  VLCPort
		$a_01_4 = {63 00 6f 00 70 00 69 00 65 00 64 00 66 00 69 00 6c 00 65 00 2e 00 65 00 78 00 65 00 } //02 00  copiedfile.exe
		$a_01_5 = {64 00 64 00 64 00 64 00 64 00 65 00 64 00 64 00 64 00 64 00 2e 00 64 00 64 00 64 00 } //01 00  dddddedddd.ddd
		$a_01_6 = {4e 00 74 00 55 00 6e 00 6d 00 61 00 70 00 56 00 69 00 65 00 77 00 4f 00 66 00 53 00 65 00 63 00 74 00 69 00 6f 00 6e 00 } //01 00  NtUnmapViewOfSection
		$a_01_7 = {57 00 72 00 69 00 74 00 65 00 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 4d 00 65 00 6d 00 6f 00 72 00 79 00 } //01 00  WriteProcessMemory
		$a_01_8 = {52 00 74 00 6c 00 44 00 65 00 63 00 6f 00 6d 00 70 00 72 00 65 00 73 00 73 00 42 00 75 00 66 00 66 00 65 00 72 00 } //01 00  RtlDecompressBuffer
		$a_01_9 = {53 00 65 00 74 00 54 00 68 00 72 00 65 00 61 00 64 00 43 00 6f 00 6e 00 74 00 65 00 78 00 74 00 } //01 00  SetThreadContext
		$a_00_10 = {50 72 6f 6a 65 6b 74 31 } //00 00  Projekt1
	condition:
		any of ($a_*)
 
}