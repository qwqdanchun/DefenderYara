
rule Backdoor_Win32_PcClient{
	meta:
		description = "Backdoor:Win32/PcClient,SIGNATURE_TYPE_PEHSTR_EXT,6f 00 6f 00 0c 00 00 01 00 "
		
	strings :
		$a_00_0 = {5c 73 76 63 68 6f 73 74 2e 65 78 65 } //01 00 
		$a_02_1 = {43 3a 5c 57 49 4e 44 4f 57 53 5c 53 59 53 54 45 4d 33 32 5c 90 02 20 2e 64 6c 6c 90 00 } //01 00 
		$a_02_2 = {43 3a 5c 57 49 4e 44 4f 57 53 5c 53 59 53 54 45 4d 33 32 5c 64 72 69 76 65 72 73 5c 90 02 20 2e 73 79 73 90 00 } //01 00 
		$a_02_3 = {43 3a 5c 57 49 4e 44 4f 57 53 5c 53 59 53 54 45 4d 33 32 5c 90 02 20 2e 64 72 76 90 00 } //01 00 
		$a_02_4 = {43 3a 5c 57 49 4e 44 4f 57 53 5c 53 59 53 54 45 4d 33 32 5c 90 02 20 2e 70 78 79 90 00 } //01 00 
		$a_00_5 = {63 6d 64 2e 65 78 65 } //01 00 
		$a_00_6 = {53 74 72 53 74 72 41 } //01 00 
		$a_00_7 = {4f 70 65 6e 53 65 72 76 69 63 65 41 } //01 00 
		$a_00_8 = {43 6c 6f 73 65 53 65 72 76 69 63 65 48 61 6e 64 6c 65 } //01 00 
		$a_00_9 = {44 65 6c 65 74 65 53 65 72 76 69 63 65 } //01 00 
		$a_00_10 = {4f 70 65 6e 53 43 4d 61 6e 61 67 65 72 41 } //64 00 
		$a_01_11 = {5c 73 76 63 68 6f 73 74 2e 65 78 65 00 00 00 00 44 6f 53 65 72 76 69 63 65 00 00 00 75 70 64 61 74 65 65 76 65 6e 74 00 25 73 3d 00 2e 73 79 73 00 00 00 00 64 72 69 76 65 72 73 5c 00 00 00 00 2e 70 78 79 00 00 00 00 2e 64 72 76 00 00 00 00 2e 64 6c 6c 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Backdoor_Win32_PcClient_2{
	meta:
		description = "Backdoor:Win32/PcClient,SIGNATURE_TYPE_PEHSTR,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 73 76 63 68 6f 73 74 2e 65 78 65 00 00 00 00 44 6f 53 65 72 76 69 63 65 00 00 00 75 70 64 61 74 65 65 76 65 6e 74 00 25 73 3d 00 2e 73 79 73 00 00 00 00 64 72 69 76 65 72 73 5c 00 } //01 00 
		$a_01_1 = {81 3e 46 a0 1f 26 5a 95 1e 7a 4e 02 64 10 64 fa 1f 36 ba 0a 90 cf 8d d1 61 1a 72 9a a2 6f 98 1f 7c a4 a3 31 79 63 ab ca a0 49 1a 93 06 a1 07 c8 20 08 0e 62 3b ea 15 27 74 e2 52 d9 84 7c 4b c4 6e 1f ba 01 9e fa 20 80 46 63 41 ba 50 99 35 9e 05 19 41 9b 9a 01 4e 37 2f e8 e0 04 9a ba ab d5 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Backdoor_Win32_PcClient_3{
	meta:
		description = "Backdoor:Win32/PcClient,SIGNATURE_TYPE_PEHSTR,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 73 76 63 68 6f 73 74 2e 65 78 65 00 00 00 00 44 6f 53 65 72 76 69 63 65 00 00 00 75 70 64 61 74 65 65 76 65 6e 74 00 25 73 3d 00 2e 73 79 73 00 00 00 00 64 72 69 76 65 72 73 5c 00 } //01 00 
		$a_01_1 = {ea 8f 57 79 4f 17 af 21 c4 da d9 24 f0 13 06 b7 df 18 66 14 23 e0 6b 58 29 91 5e a4 d8 7e ed 19 96 2c c8 a7 06 e8 80 33 e2 d9 18 e7 1d 1b e0 7e 91 21 99 67 66 b0 44 01 93 0c d6 f0 32 87 90 56 7c f9 05 20 a2 7e e9 c7 6a f8 16 f3 5a 33 c8 57 e0 75 4e 91 cf 77 b8 97 14 ca 12 c8 fe d9 48 f2 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Backdoor_Win32_PcClient_4{
	meta:
		description = "Backdoor:Win32/PcClient,SIGNATURE_TYPE_PEHSTR,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 73 76 63 68 6f 73 74 2e 65 78 65 00 44 6f 53 65 72 76 69 63 65 00 00 00 6d 79 67 75 69 64 00 00 6d 79 70 61 72 65 6e 74 74 68 72 65 61 64 69 64 00 00 00 00 25 73 3d 00 2e 73 79 73 00 00 00 00 64 72 69 76 65 72 73 5c 00 } //01 00 
		$a_01_1 = {81 31 2a e2 cf 3f 0c e2 0a e8 70 00 3e e9 b5 10 0a 94 88 3a e0 a8 8c 25 31 89 10 09 1e 2d 25 9c 74 26 24 6a d4 20 00 4c 61 11 34 e1 40 4c a8 f6 49 db c4 64 11 e9 b8 c2 4a aa 09 80 5b 81 60 6f 69 c1 c0 0e b0 21 3c 9e 8c 0f 18 e1 1c 49 49 ec 40 a1 1e 30 41 a4 45 20 c0 5a 28 10 05 66 b9 15 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Backdoor_Win32_PcClient_5{
	meta:
		description = "Backdoor:Win32/PcClient,SIGNATURE_TYPE_PEHSTR,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 73 76 63 68 6f 73 74 2e 65 78 65 00 00 44 6f 53 65 72 76 69 63 65 00 00 00 6d 79 67 75 69 64 00 00 6d 79 70 61 72 65 6e 74 74 68 72 65 61 64 69 64 00 00 00 00 25 73 3d 00 2e 73 79 73 00 00 00 00 64 72 69 76 65 72 73 5c 00 } //01 00 
		$a_01_1 = {81 a3 2b 0d 5f f1 50 ef 1a 3a a2 57 00 3b 40 85 99 03 32 88 18 85 1e be c4 57 d1 86 1d d4 80 c9 d0 41 0c 98 8d 95 30 58 90 90 08 0d b8 ef 67 ad 40 02 6d c5 03 61 55 24 58 83 01 61 c0 12 3d 42 5f 8f 8c 81 ac b9 d5 b8 00 8b a4 d9 12 dd c1 b1 c7 0f 62 bc 44 0d f4 d0 6e 58 c3 52 58 43 17 a8 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Backdoor_Win32_PcClient_6{
	meta:
		description = "Backdoor:Win32/PcClient,SIGNATURE_TYPE_PEHSTR,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 73 76 63 68 6f 73 74 2e 65 78 65 00 00 00 44 6f 53 65 72 76 69 63 65 00 00 00 6d 79 67 75 69 64 00 00 6d 79 70 61 72 65 6e 74 74 68 72 65 61 64 69 64 00 00 00 00 25 73 3d 00 2e 73 79 73 00 00 00 00 64 72 69 76 65 72 73 5c 00 } //01 00 
		$a_01_1 = {3e 89 81 03 84 41 b5 54 7d 4e c0 a0 d0 16 21 1b f6 ce 83 f6 35 21 28 e0 4b c0 67 ba 16 65 09 56 4f 54 27 66 19 10 68 ac 16 61 0f 18 20 17 30 61 78 08 82 01 8e 61 08 10 e0 ea a7 cb 72 d0 9e 14 06 3c e1 aa 9d 76 ec 5e 1e ed 6a 4e f6 62 44 27 3a a6 0f a8 19 3e 1b 24 44 13 a3 8c 09 01 ea 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Backdoor_Win32_PcClient_7{
	meta:
		description = "Backdoor:Win32/PcClient,SIGNATURE_TYPE_PEHSTR,0f 00 0e 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 59 53 54 45 4d 5c 43 75 72 72 65 6e 74 43 6f 6e 74 72 6f 6c 53 65 74 5c 53 65 72 76 69 63 65 73 5c 00 00 53 59 53 54 45 4d 5c 43 6f 6e 74 72 6f 6c 53 65 74 30 30 31 5c 53 65 72 76 69 63 65 73 5c 00 } //01 00 
		$a_01_1 = {70 61 73 73 00 00 00 00 6e 61 6d 65 00 00 00 00 70 6f 72 74 } //01 00 
		$a_01_2 = {6d 79 74 68 72 65 61 64 69 64 3d 25 64 3b 6d 79 73 65 72 76 65 72 61 64 64 72 3d 25 73 3b 6d 79 73 65 72 76 65 72 70 6f 72 74 3d 25 64 } //01 00 
		$a_01_3 = {55 73 65 72 2d 41 67 65 6e 74 3a 20 4d 6f 7a 69 6c 6c 61 2f 34 2e 30 20 28 63 6f 6d 70 61 74 69 62 6c 65 3b 20 4d 53 49 45 20 37 2e 30 3b 20 57 69 6e 64 6f 77 73 20 4e 54 20 35 2e 32 3b 20 2e 4e 45 54 20 43 4c 52 20 31 2e 31 2e 34 33 32 32 3b 20 2e 4e 45 54 20 43 4c 52 20 32 2e 30 2e 35 30 37 32 37 3b 20 49 6e 66 6f 50 61 74 68 2e 31 29 } //01 00 
		$a_01_4 = {25 30 34 64 25 30 32 64 25 30 32 64 2f 25 30 32 64 25 30 32 64 25 30 32 64 2f 25 64 2e 6a 73 70 } //0a 00 
		$a_01_5 = {50 72 6f 78 79 53 65 72 76 65 72 00 53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 49 6e 74 65 72 6e 65 74 20 53 65 74 74 69 6e 67 73 00 50 72 6f 78 79 45 6e 61 62 6c 65 00 2e 65 78 65 00 00 00 00 53 4f 46 54 57 41 52 45 5c 43 6c 61 73 73 65 73 5c 48 54 54 50 5c 73 68 65 6c 6c 5c 6f 70 65 6e 5c 63 6f 6d 6d 61 6e 64 00 00 00 00 25 73 3d 00 53 65 44 65 62 75 67 50 72 69 76 69 6c 65 67 65 00 00 00 00 5c 73 76 63 68 6f 73 74 2e 65 78 65 20 2d 6b 20 } //00 00 
	condition:
		any of ($a_*)
 
}