
rule PWS_Win32_QQpass_DL{
	meta:
		description = "PWS:Win32/QQpass.DL,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_00_0 = {49 6e 73 74 61 6c 6c 00 53 4f 46 54 57 41 52 45 5c 54 65 6e 63 65 6e 74 5c 51 51 } //01 00 
		$a_00_1 = {20 2f 53 54 41 54 3a 00 20 50 57 44 48 41 53 48 3a 00 00 00 20 2f 53 54 41 52 54 20 51 51 55 49 4e 3a } //01 00 
		$a_00_2 = {65 78 70 6c 6f 72 65 72 2e 65 78 65 20 68 74 74 70 73 3a 2f 2f 61 63 63 6f 75 6e 74 2e 71 71 2e 63 6f 6d 2f 63 67 69 2d 62 69 6e 2f 61 75 74 68 5f 66 6f 72 67 65 74 } //01 00  explorer.exe https://account.qq.com/cgi-bin/auth_forget
		$a_01_3 = {53 65 74 57 69 6e 64 6f 77 73 48 6f 6f 6b 45 78 41 } //01 00  SetWindowsHookExA
		$a_01_4 = {47 65 74 53 79 73 74 65 6d 44 69 72 65 63 74 6f 72 79 41 } //01 00  GetSystemDirectoryA
		$a_00_5 = {52 43 50 54 20 54 4f 3a 20 00 00 00 4d 41 49 4c 20 46 52 4f 4d 3a 20 } //01 00 
		$a_00_6 = {00 5c 6b 65 79 2e 64 61 74 00 } //00 00 
	condition:
		any of ($a_*)
 
}