
rule TrojanSpy_BAT_Keylogger_AG{
	meta:
		description = "TrojanSpy:BAT/Keylogger.AG,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //01 00  Software\Microsoft\Windows\CurrentVersion\Run
		$a_01_1 = {55 00 73 00 62 00 20 00 43 00 61 00 70 00 74 00 75 00 72 00 65 00 } //01 00  Usb Capture
		$a_01_2 = {53 00 63 00 72 00 65 00 65 00 6e 00 73 00 68 00 6f 00 74 00 73 00 } //01 00  Screenshots
		$a_01_3 = {57 00 65 00 62 00 43 00 61 00 6d 00 } //01 00  WebCam
		$a_01_4 = {46 00 54 00 50 00 50 00 55 00 54 00 } //01 00  FTPPUT
		$a_01_5 = {42 00 75 00 72 00 6e 00 20 00 4b 00 65 00 79 00 6c 00 6f 00 67 00 67 00 65 00 72 00 } //00 00  Burn Keylogger
		$a_00_6 = {87 10 00 } //00 9f 
	condition:
		any of ($a_*)
 
}