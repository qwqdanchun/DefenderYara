
rule TrojanDownloader_Win32_Zlob_gen_M{
	meta:
		description = "TrojanDownloader:Win32/Zlob.gen!M,SIGNATURE_TYPE_PEHSTR_EXT,65 00 65 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {74 42 c4 74 2d 2a 99 4a b0 0b cc a3 91 23 49 f3 } //01 00 
		$a_01_1 = {03 bb a3 d3 bf 15 5b 4c a0 1a 4f 37 6c 62 cb f3 } //32 00 
		$a_01_2 = {42 68 6f 4e 65 77 2e 44 4c 4c 00 44 6c 6c 43 61 6e 55 6e 6c 6f 61 64 4e 6f 77 00 44 6c 6c 47 65 74 43 6c 61 73 73 4f 62 6a 65 63 74 00 44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 00 44 6c 6c 55 6e 72 65 67 69 73 74 65 72 53 65 72 76 65 72 00 } //0a 00 
		$a_01_3 = {45 6e 63 6f 64 65 50 6f 69 6e 74 65 72 } //0a 00  EncodePointer
		$a_01_4 = {49 73 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //0a 00  IsDebuggerPresent
		$a_01_5 = {65 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //0a 00  explorer.exe
		$a_01_6 = {47 65 74 50 72 6f 63 65 73 73 57 69 6e 64 6f 77 53 74 61 74 69 6f 6e } //0a 00  GetProcessWindowStation
		$a_01_7 = {47 65 74 41 63 74 69 76 65 57 69 6e 64 6f 77 } //00 00  GetActiveWindow
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_Win32_Zlob_gen_M_2{
	meta:
		description = "TrojanDownloader:Win32/Zlob.gen!M,SIGNATURE_TYPE_PEHSTR_EXT,56 00 56 00 18 00 00 01 00 "
		
	strings :
		$a_01_0 = {e3 0e 3a 28 c1 2c ab 45 82 07 b1 d7 b6 9c 7f 83 } //01 00 
		$a_01_1 = {cc 7b 8d 20 57 98 9e 4c 82 3b d0 4e 72 49 0a 67 } //01 00 
		$a_01_2 = {13 cf 12 af 3b dc 1c 46 b5 ce 89 48 06 c1 53 03 } //01 00 
		$a_01_3 = {4f 81 cf f4 0f 97 5d 40 a4 2c 0c e0 6e b9 73 73 } //01 00 
		$a_01_4 = {a3 8a 41 88 f5 16 c2 4f a9 d8 90 b1 26 6d f8 41 } //01 00 
		$a_01_5 = {c2 0c b7 3c 3f 30 6c 4a 82 4d 01 3a e8 cf db 6b } //01 00 
		$a_01_6 = {fd 94 5a 69 d0 15 d7 4e 8f 40 d2 b3 bd c4 2c 15 } //01 00 
		$a_01_7 = {07 51 d8 ac f9 9c 9e 4c b0 b7 39 94 0a 00 17 c0 } //01 00 
		$a_01_8 = {3b b1 cb 31 4d 24 44 4c ae d5 dc ad 70 f6 62 81 } //01 00 
		$a_01_9 = {a4 a4 8f 42 ec c8 7c 42 85 de 11 c8 0f 67 89 3a } //01 00 
		$a_01_10 = {d1 04 bd ec 33 11 80 44 8a 8c bc 9f dd 54 d6 c1 } //01 00 
		$a_01_11 = {16 bc dc 3a fa 19 59 4c 9c 22 e1 7c 71 b5 fd 7a } //01 00 
		$a_01_12 = {bd db f4 c4 4c 4a 40 4b 97 da 2f e0 6d bb 29 01 } //01 00 
		$a_01_13 = {08 2b 27 15 fe f6 71 4e b2 bd a5 9a d2 3e be 3c } //01 00 
		$a_01_14 = {90 98 f7 05 a6 cf 53 4d 87 bc 2f 39 0d a6 64 5e } //01 00 
		$a_01_15 = {02 4f c5 47 28 1b f1 45 ae 46 b5 cd fb 6e 79 26 } //01 00 
		$a_01_16 = {50 7d 8b 21 37 bc a8 4f a5 7f 6e 8d e6 92 bd 79 } //01 00 
		$a_01_17 = {dd 98 05 48 28 ae b7 48 82 f7 6a dd a1 aa 6b 66 } //01 00 
		$a_01_18 = {b5 64 7d c8 92 df 03 47 90 cb b4 65 b6 98 29 41 } //32 00 
		$a_01_19 = {42 68 6f 4e 65 77 2e 44 4c 4c } //0a 00  BhoNew.DLL
		$a_01_20 = {45 6e 63 6f 64 65 50 6f 69 6e 74 65 72 } //0a 00  EncodePointer
		$a_01_21 = {49 6e 74 65 72 6e 65 74 41 74 74 65 6d 70 74 43 6f 6e 6e 65 63 74 } //0a 00  InternetAttemptConnect
		$a_01_22 = {49 73 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //05 00  IsDebuggerPresent
		$a_01_23 = {65 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //00 00  explorer.exe
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_Win32_Zlob_gen_M_3{
	meta:
		description = "TrojanDownloader:Win32/Zlob.gen!M,SIGNATURE_TYPE_PEHSTR_EXT,5b 00 5b 00 18 00 00 01 00 "
		
	strings :
		$a_01_0 = {e3 0e 3a 28 c1 2c ab 45 82 07 b1 d7 b6 9c 7f 83 } //01 00 
		$a_01_1 = {cc 7b 8d 20 57 98 9e 4c 82 3b d0 4e 72 49 0a 67 } //01 00 
		$a_01_2 = {13 cf 12 af 3b dc 1c 46 b5 ce 89 48 06 c1 53 03 } //01 00 
		$a_01_3 = {4f 81 cf f4 0f 97 5d 40 a4 2c 0c e0 6e b9 73 73 } //01 00 
		$a_01_4 = {a3 8a 41 88 f5 16 c2 4f a9 d8 90 b1 26 6d f8 41 } //01 00 
		$a_01_5 = {c2 0c b7 3c 3f 30 6c 4a 82 4d 01 3a e8 cf db 6b } //01 00 
		$a_01_6 = {fd 94 5a 69 d0 15 d7 4e 8f 40 d2 b3 bd c4 2c 15 } //01 00 
		$a_01_7 = {07 51 d8 ac f9 9c 9e 4c b0 b7 39 94 0a 00 17 c0 } //01 00 
		$a_01_8 = {3b b1 cb 31 4d 24 44 4c ae d5 dc ad 70 f6 62 81 } //01 00 
		$a_01_9 = {a4 a4 8f 42 ec c8 7c 42 85 de 11 c8 0f 67 89 3a } //01 00 
		$a_01_10 = {d1 04 bd ec 33 11 80 44 8a 8c bc 9f dd 54 d6 c1 } //01 00 
		$a_01_11 = {16 bc dc 3a fa 19 59 4c 9c 22 e1 7c 71 b5 fd 7a } //01 00 
		$a_01_12 = {bd db f4 c4 4c 4a 40 4b 97 da 2f e0 6d bb 29 01 } //01 00 
		$a_01_13 = {08 2b 27 15 fe f6 71 4e b2 bd a5 9a d2 3e be 3c } //01 00 
		$a_01_14 = {90 98 f7 05 a6 cf 53 4d 87 bc 2f 39 0d a6 64 5e } //01 00 
		$a_01_15 = {02 4f c5 47 28 1b f1 45 ae 46 b5 cd fb 6e 79 26 } //01 00 
		$a_01_16 = {50 7d 8b 21 37 bc a8 4f a5 7f 6e 8d e6 92 bd 79 } //01 00 
		$a_01_17 = {dd 98 05 48 28 ae b7 48 82 f7 6a dd a1 aa 6b 66 } //01 00 
		$a_01_18 = {b5 64 7d c8 92 df 03 47 90 cb b4 65 b6 98 29 41 } //32 00 
		$a_01_19 = {42 68 6f 4e 65 77 2e 44 4c 4c } //0a 00  BhoNew.DLL
		$a_01_20 = {73 00 65 00 61 00 72 00 63 00 68 00 2e 00 6d 00 73 00 6e 00 2e 00 63 00 6f 00 6d 00 2f 00 64 00 6e 00 73 00 65 00 72 00 72 00 6f 00 72 00 2e 00 61 00 73 00 70 00 78 00 } //0a 00  search.msn.com/dnserror.aspx
		$a_01_21 = {45 6e 63 6f 64 65 50 6f 69 6e 74 65 72 } //0a 00  EncodePointer
		$a_01_22 = {49 6e 74 65 72 6e 65 74 41 74 74 65 6d 70 74 43 6f 6e 6e 65 63 74 } //0a 00  InternetAttemptConnect
		$a_01_23 = {49 73 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //00 00  IsDebuggerPresent
	condition:
		any of ($a_*)
 
}