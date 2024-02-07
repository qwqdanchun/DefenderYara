
rule Backdoor_Win32_Zegost_H{
	meta:
		description = "Backdoor:Win32/Zegost.H,SIGNATURE_TYPE_PEHSTR_EXT,13 00 10 00 0e 00 00 04 00 "
		
	strings :
		$a_01_0 = {8b ac 24 18 04 00 00 83 c9 ff 8b fd 33 c0 f2 ae f7 d1 49 89 b4 24 c8 03 00 00 8b c1 89 b4 24 cc 03 00 00 } //04 00 
		$a_01_1 = {83 c4 04 c1 e9 02 f3 ab 8b ca 83 e1 03 f3 aa b8 56 55 55 55 8b fd f7 6c 24 10 8b c2 c1 e8 1f 03 d0 85 d2 } //04 00 
		$a_03_2 = {8b 4c 24 10 8b ea 33 d2 0f be 07 47 8b 44 84 14 3b c6 75 90 01 01 4a eb 90 01 01 c1 e1 06 0b c8 42 83 fa 04 90 00 } //04 00 
		$a_01_3 = {8b 86 a4 00 00 00 6a ff 50 c7 44 24 18 03 00 00 00 c6 86 b5 00 00 00 00 e8 } //01 00 
		$a_01_4 = {5c 6b 62 2d 78 36 38 30 38 31 32 35 2e 69 73 6f } //01 00  \kb-x6808125.iso
		$a_01_5 = {3c 62 6f 64 79 3e 3c 68 31 3e 34 30 33 20 46 6f 72 62 69 64 64 65 6e 3c 2f 68 31 3e 3c 2f 62 6f 64 79 3e } //01 00  <body><h1>403 Forbidden</h1></body>
		$a_01_6 = {54 68 72 65 61 64 4b 65 79 4c 6f 67 67 65 72 } //01 00  ThreadKeyLogger
		$a_01_7 = {54 68 72 65 61 64 50 72 6f 63 65 73 73 41 6e 64 41 6e 74 69 76 69 72 75 73 } //01 00  ThreadProcessAndAntivirus
		$a_01_8 = {5f 77 6f 6e 64 65 72 66 75 6c 5f } //01 00  _wonderful_
		$a_01_9 = {69 61 6d 73 6c 65 65 70 69 6e 67 } //01 00  iamsleeping
		$a_01_10 = {55 30 39 47 56 46 64 42 55 6b 56 63 58 45 31 70 59 33 4a 76 63 32 39 6d 64 46 78 63 56 32 6c 75 5a 47 39 33 63 31 78 63 } //01 00  U09GVFdBUkVcXE1pY3Jvc29mdFxcV2luZG93c1xc
		$a_01_11 = {63 33 6c 7a 56 45 56 4e 58 46 78 44 64 58 4a 79 52 55 35 55 51 32 39 75 64 48 4a 76 62 46 4e 6c 64 46 78 63 55 } //01 00  c3lzVEVNXFxDdXJyRU5UQ29udHJvbFNldFxcU
		$a_01_12 = {54 57 6c 6a 63 6d 39 7a 62 32 5a 30 58 45 35 6c 64 48 64 76 63 6d 74 63 51 32 39 } //03 00  TWljcm9zb2Z0XE5ldHdvcmtcQ29
		$a_01_13 = {25 73 5c 6b 62 30 78 25 64 7e 2e 74 6d 70 } //00 00  %s\kb0x%d~.tmp
	condition:
		any of ($a_*)
 
}