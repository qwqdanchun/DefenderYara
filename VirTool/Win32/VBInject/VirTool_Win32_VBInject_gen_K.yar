
rule VirTool_Win32_VBInject_gen_K{
	meta:
		description = "VirTool:Win32/VBInject.gen!K,SIGNATURE_TYPE_PEHSTR,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 00 75 00 73 00 65 00 72 00 73 00 5c 00 45 00 6d 00 70 00 65 00 72 00 6f 00 72 00 20 00 5a 00 68 00 6f 00 75 00 20 00 54 00 61 00 69 00 20 00 4e 00 75 00 5c 00 44 00 65 00 73 00 6b 00 74 00 6f 00 70 00 5c 00 53 00 74 00 75 00 62 00 53 00 52 00 43 00 5f 00 48 00 61 00 74 00 5c 00 53 00 74 00 75 00 62 00 20 00 53 00 52 00 43 00 20 00 55 00 44 00 20 00 62 00 79 00 20 00 52 00 61 00 69 00 64 00 58 00 5c 00 53 00 74 00 75 00 62 00 20 00 53 00 52 00 43 00 } //01 00  \users\Emperor Zhou Tai Nu\Desktop\StubSRC_Hat\Stub SRC UD by RaidX\Stub SRC
		$a_01_1 = {6d 6f 64 52 43 34 00 } //01 00 
		$a_01_2 = {52 65 73 75 6d 65 54 68 72 65 61 64 } //01 00  ResumeThread
		$a_01_3 = {43 72 65 61 74 65 50 72 6f 63 65 73 73 41 } //01 00  CreateProcessA
		$a_01_4 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //01 00  WriteProcessMemory
		$a_01_5 = {52 65 61 64 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //00 00  ReadProcessMemory
	condition:
		any of ($a_*)
 
}