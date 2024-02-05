
rule VirTool_Win32_VBInject_AEW{
	meta:
		description = "VirTool:Win32/VBInject.AEW,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 06 00 00 0a 00 "
		
	strings :
		$a_03_0 = {c7 45 84 80 b5 01 00 c7 45 88 01 00 00 00 8b 55 08 c7 42 58 00 00 00 00 eb 15 8b 45 08 8b 48 58 03 4d 88 0f 80 90 01 02 00 00 8b 55 08 89 4a 58 8b 45 08 8b 48 58 3b 4d 84 0f 8f 90 00 } //01 00 
		$a_01_1 = {c7 81 e8 0a 00 00 91 51 e5 d2 c7 81 ec 0a 00 00 3b 0e 50 d5 8b 56 4c c7 82 a8 13 00 00 ec d0 0f 6a c7 82 ac 13 00 00 e9 0f 73 f2 8b 46 4c } //01 00 
		$a_01_2 = {c7 81 c8 02 00 00 76 d6 fd ea c7 81 cc 02 00 00 2c 3e b2 a8 8b 56 4c c7 82 48 06 00 00 2b 3e 3b b7 c7 82 4c 06 00 00 c4 7d 3f ed 8b 46 4c } //01 00 
		$a_01_3 = {c7 81 90 08 00 00 c1 b2 b2 3e c7 81 94 08 00 00 56 27 a4 c1 8b 56 4c c7 82 20 0f 00 00 a9 9c d6 59 c7 82 24 0f 00 00 19 be d6 50 } //01 00 
		$a_01_4 = {c7 81 68 0e 00 00 83 29 7f d9 c7 81 6c 0e 00 00 90 34 74 df 8b 56 4c c7 82 80 0c 00 00 c0 46 71 bc c7 82 84 0c 00 00 aa 46 71 bf 8b 46 4c } //01 00 
		$a_01_5 = {c7 81 08 0c 00 00 f1 43 40 51 c7 81 0c 0c 00 00 35 2e a5 13 8b 56 4c c7 82 80 10 00 00 02 5b 2f ad c7 82 84 10 00 00 0e 5b 1b d8 8b 46 4c } //00 00 
		$a_00_6 = {5d } //04 00 
	condition:
		any of ($a_*)
 
}