
rule Backdoor_Win32_Xtrat_G{
	meta:
		description = "Backdoor:Win32/Xtrat.G,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 09 00 00 01 00 "
		
	strings :
		$a_00_0 = {58 00 74 00 72 00 65 00 6d 00 65 00 20 00 52 00 41 00 54 00 } //01 00  Xtreme RAT
		$a_00_1 = {58 00 74 00 72 00 65 00 6d 00 65 00 4b 00 65 00 79 00 6c 00 6f 00 67 00 67 00 65 00 72 00 } //01 00  XtremeKeylogger
		$a_00_2 = {58 00 54 00 52 00 45 00 4d 00 45 00 42 00 49 00 4e 00 44 00 45 00 52 00 } //01 00  XTREMEBINDER
		$a_00_3 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 46 00 61 00 6b 00 65 00 4d 00 65 00 73 00 73 00 61 00 67 00 65 00 } //01 00  SOFTWARE\FakeMessage
		$a_01_4 = {25 00 44 00 45 00 46 00 41 00 55 00 4c 00 54 00 42 00 52 00 4f 00 57 00 53 00 45 00 52 00 25 00 } //01 00  %DEFAULTBROWSER%
		$a_01_5 = {2e 00 78 00 74 00 72 00 } //01 00  .xtr
		$a_00_6 = {6e 69 74 4b 65 79 6c 6f 67 67 65 72 } //01 00  nitKeylogger
		$a_00_7 = {6e 69 74 49 6e 6a 65 63 74 53 65 72 76 65 72 } //01 00  nitInjectServer
		$a_01_8 = {73 00 65 00 72 00 76 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //00 00  server.exe
		$a_00_9 = {87 10 00 00 } //8b e5 
	condition:
		any of ($a_*)
 
}