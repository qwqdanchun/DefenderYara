
rule HackTool_Win32_Meterpreter_A_dll{
	meta:
		description = "HackTool:Win32/Meterpreter.A!dll,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {8b 54 24 04 8d 5a 04 53 ff 12 c2 04 00 } //1
		$a_01_1 = {8b 54 24 04 8b 5a 04 8d 4a 08 51 53 ff 12 c2 04 00 } //1
		$a_01_2 = {8b 54 24 04 ff 72 04 ff 12 c2 04 00 } //1
		$a_01_3 = {73 74 64 61 70 69 5f 6e 65 74 5f 74 63 70 5f 63 6c 69 65 6e 74 } //1 stdapi_net_tcp_client
		$a_01_4 = {73 74 64 61 70 69 5f 6e 65 74 5f 74 63 70 5f 73 65 72 76 65 72 } //1 stdapi_net_tcp_server
		$a_01_5 = {73 74 64 61 70 69 5f 6e 65 74 5f 75 64 70 5f 63 6c 69 65 6e 74 } //1 stdapi_net_udp_client
		$a_01_6 = {73 74 64 61 70 69 5f 66 73 5f 66 69 6c 65 } //1 stdapi_fs_file
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}
rule HackTool_Win32_Meterpreter_A_dll_2{
	meta:
		description = "HackTool:Win32/Meterpreter.A!dll,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {75 e3 81 f9 5b bc 4a 6a 0f 85 } //1
		$a_03_1 = {81 f9 5d 68 fa 3c 75 90 01 01 8b 90 00 } //1
		$a_03_2 = {b8 0a 4c 53 75 21 8b 45 90 01 01 0f b7 90 00 } //1
		$a_03_3 = {8e 4e 0e ec 74 90 02 03 aa fc 0d 7c 74 90 02 03 54 ca af 91 74 90 02 03 1b c6 46 79 74 90 02 03 f2 32 f6 0e 75 90 00 } //1
		$a_01_4 = {64 a1 30 00 00 00 6a 04 89 75 f8 c7 45 d4 02 00 00 00 8b 40 0c c7 45 c8 01 00 00 00 8b 58 14 89 5d ec 58 85 db } //1
		$a_01_5 = {8b 77 28 33 ff 57 57 6a ff 03 f3 ff 55 d8 33 c0 57 40 50 53 ff d6 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}
rule HackTool_Win32_Meterpreter_A_dll_3{
	meta:
		description = "HackTool:Win32/Meterpreter.A!dll,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 07 00 00 "
		
	strings :
		$a_01_0 = {5f 52 65 66 6c 65 63 74 69 76 65 4c 6f 61 64 65 72 40 } //1 _ReflectiveLoader@
		$a_01_1 = {75 e3 81 f9 5b bc 4a 6a 0f 85 } //1
		$a_03_2 = {8e 4e 0e ec 74 90 02 03 aa fc 0d 7c 74 90 02 03 54 ca af 91 74 90 02 03 f2 32 f6 0e 75 90 00 } //1
		$a_03_3 = {81 f9 5d 68 fa 3c 75 90 01 01 8b 90 00 } //1
		$a_03_4 = {b8 0a 4c 53 75 21 8b 45 90 01 01 0f b7 90 00 } //1
		$a_01_5 = {8b 5e 3c 6a 40 03 de 68 00 30 00 00 89 5d f0 ff 73 50 6a 00 ff } //1
		$a_01_6 = {8b 5d f0 8b 73 28 33 db 53 53 6a ff 03 f7 ff 55 dc 33 c0 53 40 50 57 ff d6 5f 8b c6 5e 5b 8b e5 5d c3 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=6
 
}
rule HackTool_Win32_Meterpreter_A_dll_4{
	meta:
		description = "HackTool:Win32/Meterpreter.A!dll,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_81_0 = {5c 70 69 70 65 5c 73 70 6f 6f 6c 73 73 } //1 \pipe\spoolss
		$a_03_1 = {73 61 6d 73 72 76 2e 64 6c 6c 90 02 20 53 61 6d 49 43 6f 6e 6e 65 63 74 90 02 20 53 61 6d 72 4f 70 65 6e 44 6f 6d 61 69 6e 90 00 } //1
		$a_03_2 = {47 6c 6f 62 61 6c 5c 53 41 4d 90 02 20 47 6c 6f 62 61 6c 5c 46 52 45 45 90 00 } //1
		$a_03_3 = {50 6a 00 68 ff 00 0f 00 ff 15 90 01 04 50 ff 15 90 01 04 85 c0 90 01 02 8d 45 dc 50 6a 02 ff 75 f4 ff 15 90 01 04 85 c0 90 00 } //1
		$a_03_4 = {6a 40 68 00 10 00 00 ff 75 f0 6a 00 53 ff 15 90 01 04 89 45 dc 85 c0 90 01 02 8d 4d 90 01 01 51 ff 75 f0 68 6a 2f 00 10 50 53 ff 15 90 01 04 85 c0 90 00 } //1
		$a_03_5 = {6c 73 61 73 73 2e 65 78 65 90 02 20 53 65 44 65 62 75 67 50 72 69 76 69 6c 65 67 65 90 00 } //1
		$a_01_6 = {63 6d 64 2e 65 78 65 20 2f 63 20 65 63 68 6f 20 25 73 20 3e 20 25 73 } //1 cmd.exe /c echo %s > %s
	condition:
		((#a_81_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1+(#a_03_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}
rule HackTool_Win32_Meterpreter_A_dll_5{
	meta:
		description = "HackTool:Win32/Meterpreter.A!dll,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_81_0 = {5c 70 69 70 65 5c 73 70 6f 6f 6c 73 73 } //1 \pipe\spoolss
		$a_03_1 = {73 61 6d 73 72 76 2e 64 6c 6c 90 02 20 53 61 6d 49 43 6f 6e 6e 65 63 74 90 02 20 53 61 6d 72 4f 70 65 6e 44 6f 6d 61 69 6e 90 00 } //1
		$a_03_2 = {47 6c 6f 62 61 6c 5c 53 41 4d 90 02 20 47 6c 6f 62 61 6c 5c 46 52 45 45 90 00 } //1
		$a_03_3 = {45 33 c0 48 8b c8 ba ff 00 0f 00 ff 15 90 01 04 85 c0 90 01 02 48 8b 4c 24 48 4c 8d 90 01 03 ba 02 00 00 00 ff 15 90 01 04 85 c0 90 00 } //1
		$a_03_4 = {45 8b fe c7 44 24 20 04 00 00 00 41 b9 00 30 00 00 45 8b c6 33 d2 48 8b cf ff 15 90 01 04 4c 8b f0 48 85 c0 90 01 02 48 89 5c 24 20 45 8b cf 4c 8b c6 48 8b d0 48 8b cf ff 15 90 00 } //1
		$a_03_5 = {6c 73 61 73 73 2e 65 78 65 90 02 20 53 65 44 65 62 75 67 50 72 69 76 69 6c 65 67 65 90 00 } //1
		$a_01_6 = {63 6d 64 2e 65 78 65 20 2f 63 20 65 63 68 6f 20 25 73 20 3e 20 25 73 } //1 cmd.exe /c echo %s > %s
	condition:
		((#a_81_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1+(#a_03_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}
rule HackTool_Win32_Meterpreter_A_dll_6{
	meta:
		description = "HackTool:Win32/Meterpreter.A!dll,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {55 89 e5 56 57 8b 75 08 8b 4d 0c e8 00 00 00 00 58 83 c0 2b 83 ec 08 89 e2 c7 42 04 33 00 00 00 89 02 e8 0f 00 00 00 66 8c d8 66 8e d0 83 c4 14 5f 5e 5d c2 08 00 8b 3c e4 ff 2a 48 31 c0 57 ff d6 5f 50 c7 44 24 04 23 00 00 00 89 3c 24 ff 2c 24 } //1
		$a_00_1 = {fc 48 89 ce 48 89 e7 48 83 e4 f0 e8 c8 00 00 00 41 51 41 50 52 51 56 48 31 d2 65 48 8b 52 60 48 8b 52 18 48 8b 52 20 48 8b 72 50 48 0f b7 4a 4a 4d 31 c9 48 31 c0 ac 3c 61 7c 02 2c 20 41 c1 c9 0d 41 01 c1 e2 ed 52 41 51 48 8b 52 20 8b 42 3c 48 01 d0 66 81 78 18 0b 02 75 72 8b 80 88 00 00 00 } //1
		$a_00_2 = {48 85 c0 74 67 48 01 d0 50 8b 48 18 44 8b 40 20 49 01 d0 e3 56 48 ff c9 41 8b 34 88 48 01 d6 4d 31 c9 48 31 c0 ac 41 c1 c9 0d 41 01 c1 38 e0 75 f1 4c 03 4c 24 08 45 39 d1 75 d8 58 44 8b 40 24 49 01 d0 66 41 8b 0c 48 44 8b 40 1c 49 01 d0 41 8b 04 88 48 01 d0 41 58 41 58 5e 59 5a 41 58 41 59 41 5a 48 83 ec 20 41 52 ff e0 58 41 59 5a 48 8b 12 e9 4f ff ff ff 5d 4d 31 c9 41 51 48 8d 46 18 50 ff 76 10 ff 76 08 41 51 41 51 49 b8 01 00 00 00 00 00 00 00 48 31 d2 48 8b 0e 41 ba c8 38 a4 40 ff d5 48 85 c0 74 0c 48 b8 00 00 00 00 00 00 00 00 eb 0a 48 b8 01 00 00 00 00 00 00 00 48 83 c4 50 48 89 fc c3 } //1
		$a_01_3 = {fc 80 79 10 00 0f 85 13 01 00 00 c6 41 10 01 48 83 ec 78 e8 c8 00 00 00 41 51 41 50 52 51 56 48 31 d2 65 48 8b 52 60 48 8b 52 18 48 8b 52 20 48 8b 72 50 48 0f b7 4a 4a 4d 31 c9 48 31 c0 ac 3c 61 7c 02 2c 20 41 c1 c9 0d 41 01 c1 e2 ed 52 41 51 48 8b 52 20 8b 42 3c 48 01 d0 66 81 78 18 0b 02 75 72 8b 80 88 00 00 00 48 85 c0 74 67 48 01 d0 50 8b 48 18 44 8b 40 20 49 01 d0 e3 56 48 ff c9 41 8b 34 88 48 01 d6 4d 31 c9 48 31 c0 ac 41 c1 c9 0d 41 01 c1 38 } //1
		$a_01_4 = {e0 75 f1 4c 03 4c 24 08 45 39 d1 75 d8 58 44 8b 40 24 49 01 d0 66 41 8b 0c 48 44 8b 40 1c 49 01 d0 41 8b 04 88 48 01 d0 41 58 41 58 5e 59 5a 41 58 41 59 41 5a 48 83 ec 20 41 52 ff e0 58 41 59 5a 48 8b 12 e9 4f ff ff ff 5d 48 31 d2 65 48 8b 42 30 48 39 90 c8 02 00 00 75 0e 48 8d 95 07 01 00 00 48 89 90 c8 02 00 00 4c 8b 01 4c 8b 49 08 48 31 c9 48 31 d2 51 51 41 ba 38 68 0d 16 ff d5 48 81 c4 a8 00 00 00 c3 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 } //1
		$a_01_5 = {fc 8b 74 24 04 55 89 e5 e8 89 00 00 00 60 89 e5 31 d2 64 8b 52 30 8b 52 0c 8b 52 14 8b 72 28 0f b7 4a 26 31 ff 31 c0 ac 3c 61 7c 02 2c 20 c1 cf 0d 01 c7 e2 f0 52 57 8b 52 10 8b 42 3c 01 d0 8b 40 78 85 c0 74 4a 01 d0 50 8b 48 18 8b 58 20 01 d3 e3 3c 49 8b 34 8b 01 d6 31 ff 31 c0 ac c1 cf 0d 01 c7 38 e0 75 f4 03 7d f8 3b 7d 24 75 e2 58 8b 58 24 01 d3 66 8b 0c 4b 8b 58 1c 01 d3 8b 04 8b 01 d0 89 44 24 24 5b 5b 61 59 5a 51 ff e0 58 5f 5a 8b 12 eb 86 5b 80 7e 10 00 75 3b c6 46 10 01 68 a6 95 bd 9d ff d3 3c 06 7c 1a 31 c9 64 8b 41 18 39 88 a8 01 00 00 75 0c 8d 93 cf 00 00 00 89 90 a8 01 00 00 31 c9 51 51 ff 76 08 ff 36 51 51 68 38 68 0d 16 ff d3 c9 c2 0c 00 00 00 00 00 00 00 00 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}