
rule PWS_Win32_Legmir_E_dll{
	meta:
		description = "PWS:Win32/Legmir.E!dll,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 09 00 0b 00 00 05 00 "
		
	strings :
		$a_00_0 = {25 73 3f 69 64 3d 25 73 26 70 3d 25 73 26 71 3d 25 73 26 6c 63 6b 3d 25 73 26 73 72 76 3d 25 73 26 6a 73 31 3d 25 73 26 69 64 31 3d 25 73 26 64 6a 31 3d 25 64 26 70 63 3d 25 73 } //05 00  %s?id=%s&p=%s&q=%s&lck=%s&srv=%s&js1=%s&id1=%s&dj1=%d&pc=%s
		$a_00_1 = {25 73 3f 73 65 72 76 65 72 3d 25 73 26 75 73 65 72 3d 25 73 26 70 73 77 3d 25 73 26 6c 6f 63 6b 70 73 77 3d 25 73 26 72 6f 6c 65 3d 25 73 26 6c 65 76 65 6c 3d 25 64 26 72 6f 6c 65 73 3d 25 73 } //05 00  %s?server=%s&user=%s&psw=%s&lockpsw=%s&role=%s&level=%d&roles=%s
		$a_00_2 = {6c 69 6e 2e 61 73 70 3f 73 72 76 3d 25 73 26 69 64 3d 25 73 26 70 3d 25 73 26 73 3d 25 73 26 73 73 3d 25 73 26 6a 73 3d 25 73 26 67 6a 3d 25 73 26 64 6a 3d 25 64 26 79 7a 3d 25 73 } //02 00  lin.asp?srv=%s&id=%s&p=%s&s=%s&ss=%s&js=%s&gj=%s&dj=%d&yz=%s
		$a_00_3 = {25 73 2f 74 69 2e 61 73 70 3f 73 3d 25 73 26 75 3d 25 73 } //01 00  %s/ti.asp?s=%s&u=%s
		$a_00_4 = {46 6f 72 74 68 67 6f 65 72 } //01 00  Forthgoer
		$a_01_5 = {53 65 74 57 69 6e 64 6f 77 73 48 6f 6f 6b 45 78 41 } //01 00  SetWindowsHookExA
		$a_00_6 = {55 6e 68 6f 6f 6b 57 69 6e 64 6f 77 73 48 6f 6f 6b 45 78 } //01 00  UnhookWindowsHookEx
		$a_01_7 = {53 65 44 65 62 75 67 50 72 69 76 69 6c 65 67 65 } //01 00  SeDebugPrivilege
		$a_00_8 = {6d 72 65 63 76 } //01 00  mrecv
		$a_00_9 = {6d 73 65 6e 64 } //01 00  msend
		$a_00_10 = {57 53 47 41 4d 45 } //00 00  WSGAME
	condition:
		any of ($a_*)
 
}