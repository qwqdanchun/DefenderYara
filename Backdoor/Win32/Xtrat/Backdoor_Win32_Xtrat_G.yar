
rule Backdoor_Win32_Xtrat_G{
	meta:
		description = "Backdoor:Win32/Xtrat.G,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 09 00 00 "
		
	strings :
		$a_00_0 = {58 00 74 00 72 00 65 00 6d 00 65 00 20 00 52 00 41 00 54 00 } //1 Xtreme RAT
		$a_00_1 = {58 00 74 00 72 00 65 00 6d 00 65 00 4b 00 65 00 79 00 6c 00 6f 00 67 00 67 00 65 00 72 00 } //1 XtremeKeylogger
		$a_00_2 = {58 00 54 00 52 00 45 00 4d 00 45 00 42 00 49 00 4e 00 44 00 45 00 52 00 } //1 XTREMEBINDER
		$a_00_3 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 46 00 61 00 6b 00 65 00 4d 00 65 00 73 00 73 00 61 00 67 00 65 00 } //1 SOFTWARE\FakeMessage
		$a_01_4 = {25 00 44 00 45 00 46 00 41 00 55 00 4c 00 54 00 42 00 52 00 4f 00 57 00 53 00 45 00 52 00 25 00 } //1 %DEFAULTBROWSER%
		$a_01_5 = {2e 00 78 00 74 00 72 00 } //1 .xtr
		$a_00_6 = {6e 69 74 4b 65 79 6c 6f 67 67 65 72 } //1 nitKeylogger
		$a_00_7 = {6e 69 74 49 6e 6a 65 63 74 53 65 72 76 65 72 } //1 nitInjectServer
		$a_01_8 = {73 00 65 00 72 00 76 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //1 server.exe
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_01_8  & 1)*1) >=6
 
}