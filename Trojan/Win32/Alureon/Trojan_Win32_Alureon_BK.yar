
rule Trojan_Win32_Alureon_BK{
	meta:
		description = "Trojan:Win32/Alureon.BK,SIGNATURE_TYPE_PEHSTR_EXT,06 00 05 00 0b 00 00 02 00 "
		
	strings :
		$a_03_0 = {e8 89 9c 24 90 01 04 c7 84 24 90 01 04 83 2c 24 0c c6 84 24 90 01 04 b8 90 00 } //02 00 
		$a_03_1 = {8a c8 80 c1 90 01 01 30 88 90 01 04 40 3d 90 01 04 72 ed 90 00 } //02 00 
		$a_03_2 = {ff d0 c6 45 90 01 01 e9 89 5d 90 01 01 ff 15 90 00 } //02 00 
		$a_03_3 = {8b 44 24 04 8a d1 03 c1 80 c2 90 01 01 30 10 41 3b 4c 24 08 72 ec 90 00 } //02 00 
		$a_01_4 = {33 d2 6a 19 59 f7 f1 80 c2 61 88 14 1e 46 3b f7 72 e3 } //02 00 
		$a_03_5 = {03 cb 23 c8 8a 8c 0d 90 01 04 03 d6 30 0a 46 89 75 10 3b 75 0c 72 b8 90 00 } //02 00 
		$a_00_6 = {5c 00 6b 00 6e 00 6f 00 77 00 6e 00 64 00 6c 00 6c 00 73 00 5c 00 64 00 6c 00 6c 00 2e 00 64 00 6c 00 6c 00 } //01 00  \knowndlls\dll.dll
		$a_01_7 = {25 73 25 73 25 73 2e 74 6d 70 } //01 00  %s%s%s.tmp
		$a_01_8 = {25 73 25 73 2e 73 79 73 } //01 00  %s%s.sys
		$a_01_9 = {5c 5c 3f 5c 67 6c 6f 62 61 6c 72 6f 6f 74 5c 73 79 73 74 65 6d 72 6f 6f 74 5c 73 79 73 74 65 6d 33 32 5c 6f 6c 65 33 32 2e 64 6c 6c } //01 00  \\?\globalroot\systemroot\system32\ole32.dll
		$a_01_10 = {5c 5c 3f 5c 67 6c 6f 62 61 6c 72 6f 6f 74 5c 73 79 73 74 65 6d 72 6f 6f 74 5c 73 79 73 74 65 6d 33 32 5c 6d 73 76 63 72 74 2e 64 6c 6c } //00 00  \\?\globalroot\systemroot\system32\msvcrt.dll
	condition:
		any of ($a_*)
 
}