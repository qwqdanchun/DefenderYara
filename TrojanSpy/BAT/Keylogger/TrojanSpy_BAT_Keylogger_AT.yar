
rule TrojanSpy_BAT_Keylogger_AT{
	meta:
		description = "TrojanSpy:BAT/Keylogger.AT,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {3a 00 5a 00 6f 00 6e 00 65 00 2e 00 49 00 64 00 65 00 6e 00 74 00 69 00 66 00 69 00 65 00 72 00 } //01 00  :Zone.Identifier
		$a_01_1 = {53 00 63 00 72 00 65 00 65 00 6e 00 73 00 68 00 6f 00 74 00 73 00 } //01 00  Screenshots
		$a_01_2 = {4b 00 65 00 79 00 6c 00 6f 00 67 00 67 00 65 00 72 00 } //01 00  Keylogger
		$a_01_3 = {5c 00 27 00 4c 00 6f 00 67 00 73 00 27 00 2e 00 6c 00 6f 00 67 00 } //01 00  \'Logs'.log
		$a_01_4 = {41 00 6e 00 6f 00 6e 00 69 00 6d 00 6f 00 75 00 73 00 40 00 41 00 6e 00 6f 00 6e 00 69 00 6d 00 6f 00 75 00 73 00 2e 00 63 00 6f 00 6d 00 } //01 00  Anonimous@Anonimous.com
		$a_01_5 = {46 00 54 00 50 00 50 00 55 00 54 00 } //01 00  FTPPUT
		$a_01_6 = {48 00 4b 00 43 00 55 00 5c 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 4f 00 6e 00 63 00 65 00 } //00 00  HKCU\Software\Microsoft\Windows\CurrentVersion\RunOnce
		$a_00_7 = {5d 04 00 00 } //96 1c 
	condition:
		any of ($a_*)
 
}