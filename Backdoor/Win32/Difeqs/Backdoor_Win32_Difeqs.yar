
rule Backdoor_Win32_Difeqs{
	meta:
		description = "Backdoor:Win32/Difeqs,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0c 00 0b 00 00 03 00 "
		
	strings :
		$a_02_0 = {81 ec 08 02 00 00 33 c0 b1 90 01 01 8a 90 01 02 10 40 00 32 d1 88 90 01 02 10 40 00 40 3d 00 a4 00 00 72 ea 56 68 90 00 } //02 00 
		$a_02_1 = {8b 4c 24 04 33 c0 85 c9 74 0c 51 e8 90 01 01 ff ff ff 8b 40 3c 83 c4 04 c3 90 00 } //02 00 
		$a_02_2 = {8b 44 24 04 56 50 33 f6 e8 90 01 01 ff ff ff 83 c4 04 85 c0 74 0a 8b 4c 24 0c 5e 8b 44 c8 78 c3 8b c6 90 00 } //02 00 
		$a_02_3 = {8b 53 14 8b 7b 0c 8b 6c 24 20 2b d7 03 d6 33 c9 03 d5 33 f6 66 8b 4a 0e 66 8b 72 0c 03 ce 8d 6a 10 85 c9 7e 90 01 01 89 4c 24 20 83 7d 00 03 90 00 } //03 00 
		$a_00_4 = {7e 18 03 fd 8b 44 24 14 8a 04 01 30 04 32 41 3b cf 7c 02 8b cd 42 3b d3 7c ea 8b 4c 24 28 85 c9 } //03 00 
		$a_00_5 = {00 8b f8 83 c4 04 b9 25 00 00 00 b8 72 00 00 00 66 83 ff 0b 66 89 4c 24 14 66 c7 44 24 16 74 } //03 00 
		$a_00_6 = {b9 25 00 00 00 b8 77 00 00 00 bb 73 00 00 00 33 f6 66 83 ff 09 66 89 4c 24 14 66 89 44 24 16 66 } //02 00 
		$a_00_7 = {8b 44 24 04 85 c0 74 06 c7 00 90 01 02 00 10 b8 90 01 02 00 10 c3 90 00 } //03 00 
		$a_00_8 = {89 5c 24 14 6a 40 68 00 10 00 00 57 6a 00 56 ff d5 6a 40 68 00 10 00 00 53 6a 00 56 89 44 24 24 ff d5 6a 04 68 00 10 00 00 68 1c 02 00 00 6a 00 } //02 00 
		$a_00_9 = {99 51 52 50 e8 90 01 02 00 00 8b 7c 24 24 8b 5c 24 18 8b 6c 24 1c 8b f3 8b 0f 2b f1 8b cd 1b 4f 04 3b ca 72 18 90 00 } //02 00 
		$a_03_10 = {0f be 44 24 1b 83 e8 00 0f 90 01 02 01 00 00 48 0f 90 01 02 02 00 00 0f be 44 24 13 48 83 f8 06 0f 90 01 02 02 00 00 ff 24 85 90 01 02 00 10 8b 90 01 01 24 14 66 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}