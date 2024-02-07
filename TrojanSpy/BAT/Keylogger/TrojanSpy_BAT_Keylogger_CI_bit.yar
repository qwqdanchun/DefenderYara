
rule TrojanSpy_BAT_Keylogger_CI_bit{
	meta:
		description = "TrojanSpy:BAT/Keylogger.CI!bit,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {47 65 74 4b 65 79 53 74 61 74 65 } //01 00  GetKeyState
		$a_01_1 = {47 65 74 41 73 79 6e 63 4b 65 79 53 74 61 74 65 } //01 00  GetAsyncKeyState
		$a_01_2 = {47 65 74 4b 65 79 62 6f 61 72 64 53 74 61 74 65 } //01 00  GetKeyboardState
		$a_01_3 = {53 79 73 74 65 6d 2e 4e 65 74 2e 4d 61 69 6c } //01 00  System.Net.Mail
		$a_01_4 = {4d 61 69 6c 41 64 64 72 65 73 73 } //01 00  MailAddress
		$a_01_5 = {4e 65 74 77 6f 72 6b 43 72 65 64 65 6e 74 69 61 6c } //01 00  NetworkCredential
		$a_01_6 = {73 00 6d 00 74 00 70 00 2e 00 67 00 6d 00 61 00 69 00 6c 00 2e 00 63 00 6f 00 6d 00 } //01 00  smtp.gmail.com
		$a_01_7 = {40 00 67 00 6d 00 61 00 69 00 6c 00 2e 00 63 00 6f 00 6d 00 } //01 00  @gmail.com
		$a_01_8 = {6c 00 6f 00 67 00 2e 00 74 00 78 00 74 00 } //00 00  log.txt
	condition:
		any of ($a_*)
 
}