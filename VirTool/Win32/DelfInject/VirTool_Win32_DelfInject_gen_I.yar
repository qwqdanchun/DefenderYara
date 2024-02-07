
rule VirTool_Win32_DelfInject_gen_I{
	meta:
		description = "VirTool:Win32/DelfInject.gen!I,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 0b 00 00 01 00 "
		
	strings :
		$a_01_0 = {57 75 84 60 82 7f 73 51 74 74 82 75 83 83 } //01 00 
		$a_01_1 = {56 82 75 75 5c 79 72 82 71 82 89 } //01 00 
		$a_01_2 = {56 82 75 75 62 75 83 7f 85 82 73 75 } //01 00 
		$a_01_3 = {53 7c 7f 83 75 58 71 7e 74 7c 75 } //01 00 
		$a_01_4 = {56 79 7e 74 62 75 83 7f 85 82 73 75 51 } //01 00 
		$a_01_5 = {63 79 8a 75 7f 76 62 75 83 7f 85 82 73 75 } //01 00 
		$a_01_6 = {5c 7f 71 74 62 75 83 7f 85 82 73 75 } //01 00 
		$a_01_7 = {5c 7f 73 7b 62 75 83 7f 85 82 73 75 } //01 00 
		$a_01_8 = {52 74 6c 44 65 63 6f 6d 70 72 65 73 73 42 75 66 66 65 72 } //01 00  RtlDecompressBuffer
		$a_00_9 = {5a 77 55 6e 6d 61 70 56 69 65 77 4f 66 53 65 63 74 69 6f 6e } //01 00  ZwUnmapViewOfSection
		$a_01_10 = {8b 45 fc 8a 44 38 ff 88 45 fb 8d 45 f4 8a 55 fb 80 ea 10 e8 } //00 00 
	condition:
		any of ($a_*)
 
}