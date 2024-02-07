
rule VirTool_Win32_VBInject_AEE{
	meta:
		description = "VirTool:Win32/VBInject.AEE,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 02 00 00 02 00 "
		
	strings :
		$a_03_0 = {8a 3c 0a 66 0f 90 01 0a 90 02 0a 8a 1c 0e 90 01 0a 90 02 0a 80 f3 90 90 90 01 0a 90 02 0a 38 fb 75 90 00 } //01 00 
		$a_01_1 = {81 fd 29 f6 29 f6 75 } //00 00 
		$a_00_2 = {78 68 } //00 00  xh
	condition:
		any of ($a_*)
 
}
rule VirTool_Win32_VBInject_AEE_2{
	meta:
		description = "VirTool:Win32/VBInject.AEE,SIGNATURE_TYPE_PEHSTR_EXT,64 00 64 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {52 6a 02 ff 15 90 01 03 00 83 c4 0c c7 45 fc 08 00 00 00 eb 90 00 } //01 00 
		$a_03_1 = {00 eb 0f 8b 55 90 01 01 03 55 90 01 01 0f 80 90 01 03 00 89 55 90 01 01 8b 45 90 01 01 3b 45 90 01 01 7f 90 09 14 00 c7 45 90 01 05 c7 45 90 01 01 01 00 00 00 c7 45 90 01 01 00 00 00 90 00 } //01 00 
		$a_00_2 = {78 7e } //00 00  x~
	condition:
		any of ($a_*)
 
}
rule VirTool_Win32_VBInject_AEE_3{
	meta:
		description = "VirTool:Win32/VBInject.AEE,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {ff ff c5 f1 44 00 c7 85 90 01 02 ff ff 01 00 00 00 83 65 90 01 01 00 eb 0c 8b 45 90 01 01 03 85 90 01 02 ff ff 89 45 90 01 01 8b 45 90 01 01 3b 85 90 01 02 ff ff 0f 8f 90 01 02 00 00 d9 e8 51 51 dd 1c 24 e8 90 09 04 00 c7 85 90 00 } //02 00 
		$a_03_1 = {dd 58 34 d9 e8 51 51 dd 1c 24 e8 90 01 04 8b 45 08 dd 58 34 d9 e8 51 51 dd 1c 24 e8 90 00 } //01 00 
		$a_00_2 = {78 c0 } //01 00 
	condition:
		any of ($a_*)
 
}
rule VirTool_Win32_VBInject_AEE_4{
	meta:
		description = "VirTool:Win32/VBInject.AEE,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {6a 0b 6a 79 6a 79 ff d7 50 56 ff 53 64 85 c0 db e2 7d 0f } //01 00 
		$a_03_1 = {68 00 00 fa 43 68 00 00 c8 43 68 00 00 48 43 68 00 00 c8 42 6a 04 56 ff 90 01 04 00 85 c0 db e2 7d 0e 68 c8 02 00 00 68 90 01 03 00 56 50 ff d7 8b 90 01 01 6a 00 68 00 00 fa 43 68 00 00 c8 43 68 00 00 48 43 68 00 00 c8 42 6a 04 56 ff 90 01 04 00 85 c0 db e2 7d 0e 68 c8 02 00 00 68 90 01 03 00 56 50 ff d7 8b 0e 6a 00 68 00 00 fa 43 68 00 00 c8 43 68 00 00 48 43 68 00 00 c8 42 90 00 } //02 00 
		$a_03_2 = {00 00 8b 50 14 2b ca 8b 50 0c c7 04 ca 90 01 04 c7 44 ca 04 90 01 04 8b 06 b9 90 01 02 00 00 8b 50 14 2b ca 8b 50 0c c7 04 ca 90 01 04 c7 44 ca 04 90 01 04 8b 06 b9 90 01 02 00 00 8b 50 14 2b ca 8b 50 0c c7 04 ca 90 01 04 c7 44 ca 04 90 01 04 8b 06 b9 90 01 02 00 00 8b 50 14 2b ca 8b 50 0c c7 04 ca 90 01 04 c7 44 ca 04 90 01 04 8b 06 b9 90 01 02 00 00 8b 50 14 2b ca 8b 50 0c c7 04 ca 90 01 04 c7 44 ca 04 90 01 04 8b 06 b9 90 01 02 00 00 8b 50 14 2b ca 8b 50 0c c7 04 ca 90 01 04 c7 44 ca 04 90 09 13 00 ba 90 01 03 00 8d 90 01 02 ff 15 90 01 04 8b 06 b9 90 00 } //02 00 
		$a_03_3 = {00 00 8b 50 14 2b ca 8b 50 0c c7 04 ca 90 01 04 c7 44 ca 04 90 01 04 8b 06 b9 90 01 02 00 00 8b 50 14 2b ca 8b 50 0c c7 04 ca 90 01 04 c7 44 ca 04 90 01 04 8b 90 01 01 3c 50 e8 90 01 02 ff ff 89 85 90 01 02 ff ff ff 15 90 01 03 00 90 09 05 00 8b 06 b9 90 00 } //01 00 
		$a_00_4 = {78 f9 02 } //00 01 
	condition:
		any of ($a_*)
 
}
rule VirTool_Win32_VBInject_AEE_5{
	meta:
		description = "VirTool:Win32/VBInject.AEE,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 0c 00 00 01 00 "
		
	strings :
		$a_03_0 = {ba b6 0f 3e fb 53 55 8b 48 90 01 01 56 be 3d 28 3b ed bd d8 04 52 61 c7 81 c8 08 00 00 b6 9a a8 78 8b 48 90 00 } //01 00 
		$a_01_1 = {c7 81 a8 0b 00 00 3a 51 19 29 8b 50 54 b9 af 50 5b aa 89 8a 54 08 00 00 8b 50 54 } //01 00 
		$a_01_2 = {ba 59 0b 40 0b 53 55 8b 48 54 bd c4 0a 40 51 bb 5a 7a 41 0b 56 c7 81 58 0c 00 00 80 0e a9 ff 8b 48 54 } //01 00 
		$a_03_3 = {83 a5 60 fe ff ff 00 c7 45 fc 51 00 00 00 c7 45 98 c4 09 00 00 c7 45 9c 01 00 00 00 83 65 d8 00 eb 0f 8b 45 d8 03 45 9c 0f 80 90 01 01 01 00 00 89 45 d8 8b 45 d8 3b 45 98 7f 2b c7 45 fc 52 00 00 00 e8 90 01 02 ff ff e8 90 01 02 fc ff c7 45 fc 53 00 00 00 e8 90 01 02 ff ff e8 90 01 02 fc ff c7 45 fc 54 00 00 00 eb be 90 00 } //01 00 
		$a_01_4 = {8b 46 44 bf e2 fe 68 a7 c7 80 ec 02 00 00 e3 77 2d 78 8b 46 44 c7 80 a4 03 00 00 6a ab 64 0f } //01 00 
		$a_01_5 = {b9 6d 00 00 00 c7 04 d0 73 37 7f 35 c7 44 d0 04 2b df c0 fd 8b 06 8b 50 14 2b ca 8b 50 0c c7 04 ca 5f d5 c2 29 c7 44 ca 04 23 56 55 22 } //01 00 
		$a_03_6 = {31 32 0f db 90 01 01 66 0f 63 90 01 01 0f df 90 01 01 66 0f fd 90 01 01 83 c2 04 66 0f e9 90 01 01 0f 64 90 01 01 0f f5 90 01 01 0f fd 90 01 01 66 0f e1 90 01 01 39 5a fc 75 d7 90 00 } //01 00 
		$a_03_7 = {ac 30 0e 00 c7 45 90 01 01 01 00 00 00 83 65 dc 00 eb 0f 8b 45 dc 03 45 90 01 01 0f 80 90 01 01 20 00 00 89 45 dc 8b 45 dc 3b 45 90 01 01 0f 8f bb 00 00 00 c7 45 fc 06 00 00 00 8d 45 90 01 01 50 8b 45 08 8b 00 ff 75 08 ff 90 90 d8 00 00 00 db e2 89 45 90 01 01 83 7d 90 01 01 00 7d 1d 68 d8 00 00 00 90 09 03 00 c7 45 90 00 } //01 00 
		$a_03_8 = {bf 92 67 18 2f c7 90 01 03 00 00 61 44 44 b8 8b 90 01 02 c7 90 01 03 00 00 3a 92 70 63 8b 90 01 02 c7 90 01 03 00 00 e6 10 13 43 8b 90 00 } //01 00 
		$a_03_9 = {00 00 03 93 4d 47 8b 90 01 02 c7 90 01 03 00 00 ea 13 16 af 8b 90 01 02 c7 90 01 03 00 00 92 67 18 2f 8b 90 01 02 c7 90 01 03 00 00 ad 76 38 04 90 09 04 00 c7 90 00 } //01 00 
		$a_03_10 = {ff ac 30 0e 00 c7 85 90 01 02 ff ff 01 00 00 00 83 65 dc 00 eb 12 8b 45 dc 03 85 90 01 02 ff ff 0f 80 90 01 01 20 00 00 89 45 dc 8b 45 dc 3b 85 90 01 02 ff ff 0f 8f bb 00 00 00 c7 45 fc 06 00 00 00 8d 45 90 01 01 50 8b 45 08 8b 00 ff 75 08 ff 90 90 d8 00 00 00 db e2 89 45 90 01 01 83 7d 90 01 01 00 7d 1d 68 d8 00 00 00 90 00 } //01 00 
		$a_03_11 = {75 e1 83 c6 04 70 57 b8 96 cd 10 03 2b f0 70 4e 57 03 f0 57 70 48 56 e8 90 01 02 ff ff 89 45 cc e8 90 01 02 fc ff ff 75 d8 90 00 } //01 00 
	condition:
		any of ($a_*)
 
}