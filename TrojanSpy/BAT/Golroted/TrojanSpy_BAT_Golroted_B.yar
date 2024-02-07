
rule TrojanSpy_BAT_Golroted_B{
	meta:
		description = "TrojanSpy:BAT/Golroted.B,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 0f 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 65 6e 64 4c 6f 67 73 50 48 50 } //01 00  SendLogsPHP
		$a_01_1 = {53 65 6e 64 4c 6f 67 73 46 54 50 } //01 00  SendLogsFTP
		$a_01_2 = {73 74 65 61 6c 57 65 62 72 6f 73 77 65 72 73 } //01 00  stealWebroswers
		$a_01_3 = {73 74 65 61 6c 4d 61 69 6c } //01 00  stealMail
		$a_01_4 = {53 70 72 65 61 64 00 } //01 00 
		$a_01_5 = {73 65 65 6b 61 6e 64 64 65 73 74 72 6f 79 } //01 00  seekanddestroy
		$a_00_6 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 73 00 74 00 65 00 61 00 6c 00 65 00 72 00 73 00 } //01 00  Disablestealers
		$a_00_7 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 6c 00 6f 00 67 00 67 00 65 00 72 00 } //01 00  Disablelogger
		$a_00_8 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 73 00 74 00 61 00 72 00 74 00 75 00 70 00 } //01 00  Disablestartup
		$a_00_9 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 73 00 63 00 72 00 65 00 65 00 6e 00 79 00 } //01 00  Disablescreeny
		$a_00_10 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 73 00 70 00 72 00 65 00 61 00 64 00 65 00 72 00 73 00 } //01 00  Disablespreaders
		$a_00_11 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 6d 00 65 00 6c 00 74 00 } //01 00  Disablemelt
		$a_00_12 = {4b 00 65 00 79 00 6c 00 6f 00 67 00 67 00 65 00 72 00 20 00 45 00 6e 00 61 00 62 00 6c 00 65 00 64 00 3a 00 } //01 00  Keylogger Enabled:
		$a_00_13 = {43 00 6c 00 69 00 70 00 62 00 6f 00 61 00 72 00 64 00 2d 00 4c 00 6f 00 67 00 67 00 65 00 72 00 20 00 45 00 6e 00 61 00 62 00 6c 00 65 00 64 00 3a 00 } //01 00  Clipboard-Logger Enabled:
		$a_00_14 = {53 00 74 00 65 00 61 00 6c 00 65 00 72 00 73 00 20 00 45 00 6e 00 61 00 62 00 6c 00 65 00 64 00 3a 00 } //00 00  Stealers Enabled:
		$a_00_15 = {80 10 00 00 } //c6 40 
	condition:
		any of ($a_*)
 
}
rule TrojanSpy_BAT_Golroted_B_2{
	meta:
		description = "TrojanSpy:BAT/Golroted.B,SIGNATURE_TYPE_PEHSTR,04 00 04 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {46 6f 6c 64 65 72 4e 5c 6e 61 6d 65 2e 65 78 65 } //01 00  FolderN\name.exe
		$a_01_1 = {46 6f 6c 64 65 72 4e 5c 6d 61 74 61 32 2e 62 61 74 } //01 00  FolderN\mata2.bat
		$a_01_2 = {46 6f 6c 64 65 72 4e 5c 73 76 68 6f 73 74 2e 62 61 74 } //01 00  FolderN\svhost.bat
		$a_01_3 = {46 6f 6c 64 65 72 4e 5c 6e 61 6d 65 2e 65 78 65 2e 62 61 74 } //01 00  FolderN\name.exe.bat
		$a_01_4 = {46 6f 6c 64 65 72 4e 5c 6d 65 6c 74 2e 62 61 74 } //01 00  FolderN\melt.bat
		$a_01_5 = {73 76 68 6f 73 74 2e 65 78 65 } //00 00  svhost.exe
	condition:
		any of ($a_*)
 
}