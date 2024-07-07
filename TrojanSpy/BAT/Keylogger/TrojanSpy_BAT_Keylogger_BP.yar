
rule TrojanSpy_BAT_Keylogger_BP{
	meta:
		description = "TrojanSpy:BAT/Keylogger.BP,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {53 65 74 53 74 61 72 74 75 70 } //1 SetStartup
		$a_01_1 = {4b 00 65 00 79 00 4c 00 6f 00 67 00 67 00 65 00 72 00 2e 00 50 00 72 00 6f 00 70 00 65 00 72 00 74 00 69 00 65 00 73 00 } //1 KeyLogger.Properties
		$a_01_2 = {70 00 61 00 73 00 74 00 65 00 62 00 69 00 6e 00 2e 00 63 00 6f 00 6d 00 2f 00 61 00 70 00 69 00 2f 00 61 00 70 00 69 00 5f 00 70 00 6f 00 73 00 74 00 2e 00 70 00 68 00 70 00 } //1 pastebin.com/api/api_post.php
		$a_01_3 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //1 SOFTWARE\Microsoft\Windows\CurrentVersion\Run
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}