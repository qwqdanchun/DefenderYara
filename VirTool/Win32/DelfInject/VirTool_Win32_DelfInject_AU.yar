
rule VirTool_Win32_DelfInject_AU{
	meta:
		description = "VirTool:Win32/DelfInject.AU,SIGNATURE_TYPE_PEHSTR_EXT,07 00 06 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {03 84 95 ec fb ff ff 25 ff 00 00 80 79 07 48 0d 00 ff ff ff 40 8a 84 85 ec fb ff ff 8b 55 ec 30 04 32 46 4f 0f 85 79 ff ff ff } //01 00 
		$a_03_1 = {8a 44 30 ff 24 0f 32 d8 80 f3 0a 8d 45 fc e8 90 01 04 8b 55 fc 8a 54 3a ff 80 e2 f0 02 d3 88 54 38 ff 46 83 fe 20 7e 05 90 00 } //01 00 
		$a_01_2 = {2b f7 81 fe e8 03 00 00 7d 0b 2b c7 3d d0 07 00 00 7d 02 b3 01 8b c3 } //01 00 
		$a_01_3 = {53 65 72 76 65 72 2e 65 78 65 00 09 25 41 70 70 44 61 74 61 25 00 } //01 00 
		$a_03_4 = {5c 6d 65 6c 74 00 90 01 0a 5c 75 6e 69 6e 73 74 61 6c 6c 00 90 00 } //01 00 
		$a_03_5 = {73 63 68 6d 69 64 74 69 90 09 0c 00 68 3a 5c 00 90 00 } //01 00 
		$a_01_6 = {63 3a 5c 66 69 6c 65 2e 65 78 65 00 53 } //01 00 
		$a_03_7 = {44 69 73 61 62 6c 65 53 52 00 90 01 36 5c 53 79 73 74 65 6d 52 65 73 74 6f 72 65 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}