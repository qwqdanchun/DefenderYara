
rule Trojan_Win32_Keylogger_RPA_MTB{
	meta:
		description = "Trojan:Win32/Keylogger.RPA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {6d 2e 70 69 70 65 64 72 65 61 6d 2e 6e 65 74 } //01 00  m.pipedream.net
		$a_01_1 = {53 74 61 72 74 75 70 } //01 00  Startup
		$a_01_2 = {6b 65 79 73 2e 74 78 74 } //01 00  keys.txt
		$a_01_3 = {6b 65 79 6c 6f 67 67 65 72 } //01 00  keylogger
		$a_01_4 = {47 65 74 41 73 79 6e 63 4b 65 79 53 74 61 74 65 } //00 00  GetAsyncKeyState
	condition:
		any of ($a_*)
 
}