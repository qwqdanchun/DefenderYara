
rule Trojan_BAT_Keylogger_AM_MTB{
	meta:
		description = "Trojan:BAT/Keylogger.AM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {4b 00 65 00 79 00 6c 00 6f 00 67 00 67 00 65 00 72 00 20 00 73 00 74 00 61 00 72 00 74 00 65 00 64 00 2e 00 } //01 00  Keylogger started.
		$a_01_1 = {73 00 65 00 6e 00 64 00 6b 00 65 00 79 00 6c 00 6f 00 67 00 2e 00 70 00 68 00 70 00 } //01 00  sendkeylog.php
		$a_01_2 = {75 00 6e 00 61 00 62 00 6c 00 65 00 20 00 74 00 6f 00 20 00 64 00 65 00 6c 00 65 00 74 00 65 00 20 00 6b 00 65 00 79 00 73 00 74 00 72 00 6f 00 6b 00 65 00 73 00 2e 00 74 00 78 00 74 00 } //01 00  unable to delete keystrokes.txt
		$a_01_3 = {44 00 65 00 73 00 6b 00 74 00 6f 00 70 00 20 00 43 00 61 00 70 00 74 00 75 00 72 00 65 00 20 00 73 00 74 00 61 00 72 00 74 00 65 00 64 00 2e 00 } //01 00  Desktop Capture started.
		$a_01_4 = {47 00 6f 00 6f 00 64 00 62 00 79 00 65 00 } //01 00  Goodbye
		$a_01_5 = {4b 00 65 00 79 00 6c 00 6f 00 67 00 67 00 65 00 72 00 20 00 73 00 74 00 6f 00 70 00 70 00 65 00 64 00 2e 00 } //01 00  Keylogger stopped.
		$a_01_6 = {53 74 61 72 74 4b 65 79 6c 6f 67 67 65 72 } //00 00  StartKeylogger
	condition:
		any of ($a_*)
 
}