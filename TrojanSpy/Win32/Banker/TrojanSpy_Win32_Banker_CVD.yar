
rule TrojanSpy_Win32_Banker_CVD{
	meta:
		description = "TrojanSpy:Win32/Banker.CVD,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0b 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {57 69 6e 45 78 65 63 } //01 00  WinExec
		$a_00_1 = {67 65 74 68 6f 73 74 62 79 6e 61 6d 65 } //05 00  gethostbyname
		$a_02_2 = {8d 95 e4 fe ff ff 8d 85 fc fe ff ff e8 90 01 04 8b 95 e4 fe ff ff 8d 83 14 03 00 00 e8 90 01 04 8d 95 e0 fe ff ff b8 90 01 04 e8 90 01 04 8b 85 e0 fe ff ff e8 90 01 04 50 6a 00 e8 90 01 04 85 c0 76 3b 6a 00 6a 00 6a 10 8d 95 dc fe ff ff b8 90 01 04 e8 90 01 04 8b 85 dc fe ff ff e8 90 01 04 50 6a 00 e8 90 01 04 50 e8 90 01 04 a1 f0 1a 4f 00 8b 00 e8 90 01 04 8d 95 d8 fe ff ff b8 90 01 04 e8 90 01 04 8b 85 d8 fe ff ff e8 90 01 04 50 8b 83 14 03 00 00 e8 90 01 04 5a e8 90 01 04 85 c0 0f 84 b7 00 00 00 8d 95 d0 fe ff ff b8 90 01 04 e8 90 01 04 8b 85 d0 fe ff ff e8 90 01 04 8b d0 8d 85 d4 fe ff ff 90 00 } //05 00 
		$a_00_3 = {42 74 54 74 54 6f 76 70 4f 4d 76 71 4f 4d 76 61 50 4e 38 6b 4f 73 7a 6a 42 63 39 6f 42 74 31 6c 53 64 48 58 52 32 7a 64 53 73 38 6c 53 73 44 6f 51 4e 31 71 42 74 48 62 52 4e 31 69 4f 4e 48 62 53 6f 7a 37 47 71 72 49 50 4e 35 72 50 4e 44 71 42 63 48 6c 46 74 31 58 50 73 4b 7a 44 4a 30 00 ff ff ff ff 4c 00 00 00 51 37 48 71 53 37 43 77 42 6f 7a 66 52 64 48 62 53 63 76 62 54 36 39 58 52 63 6a 66 52 63 53 6b 4f 73 35 66 55 36 34 6b 50 73 7a 73 42 63 39 6f 42 72 44 39 49 4b 39 33 42 73 62 6b 50 36 4c 75 42 64 31 6f 52 73 44 62 53 74 44 58 00 00 00 00 ff ff ff ff 14 00 00 00 47 73 35 66 55 36 34 57 48 4d 44 6c 52 63 7a 6a } //00 00 
	condition:
		any of ($a_*)
 
}