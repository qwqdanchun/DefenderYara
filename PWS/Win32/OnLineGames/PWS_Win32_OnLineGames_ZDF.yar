
rule PWS_Win32_OnLineGames_ZDF{
	meta:
		description = "PWS:Win32/OnLineGames.ZDF,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 06 00 00 05 00 "
		
	strings :
		$a_02_0 = {57 c6 44 24 90 01 01 6f c6 44 24 90 01 01 7a c6 44 24 90 01 01 68 c6 44 24 90 01 01 2e c6 44 24 90 01 01 2e c6 44 24 90 01 01 6f c6 44 24 90 01 01 72 c6 44 24 90 01 01 67 c6 44 24 90 01 01 00 90 00 } //05 00 
		$a_02_1 = {ff ff ff 47 c6 85 90 01 01 ff ff ff 61 c6 85 90 01 01 ff ff ff 6d 88 85 90 01 01 ff ff ff c6 85 90 01 01 ff ff ff 54 c6 85 90 01 01 ff ff ff 72 c6 85 90 01 01 ff ff ff 6f c6 85 90 01 01 ff ff ff 79 c6 85 90 01 01 ff ff ff 48 c6 85 90 01 01 ff ff ff 6f c6 85 90 01 01 ff ff ff 72 c6 85 90 01 01 ff ff ff 73 90 00 } //05 00 
		$a_00_2 = {2e 69 6e 69 00 00 00 00 25 73 25 73 00 00 00 00 46 74 70 50 75 74 46 69 6c 65 00 00 5c 00 00 00 6d 73 70 61 69 6e 74 2e 65 78 65 00 4d 53 50 61 } //01 00 
		$a_01_3 = {43 72 65 61 74 65 54 6f 6f 6c 68 65 6c 70 33 32 53 6e 61 70 73 68 6f 74 } //01 00  CreateToolhelp32Snapshot
		$a_01_4 = {52 65 61 64 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //01 00  ReadProcessMemory
		$a_01_5 = {49 6e 74 65 72 6e 65 74 4f 70 65 6e 41 } //00 00  InternetOpenA
	condition:
		any of ($a_*)
 
}