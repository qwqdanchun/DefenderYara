
rule MonitoringTool_MSIL_GenKeylogger{
	meta:
		description = "MonitoringTool:MSIL/GenKeylogger,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {53 00 65 00 6e 00 64 00 20 00 61 00 6e 00 20 00 65 00 6d 00 61 00 69 00 6c 00 20 00 6e 00 6f 00 74 00 69 00 66 00 69 00 63 00 61 00 74 00 69 00 6f 00 6e 00 20 00 77 00 68 00 65 00 6e 00 20 00 4b 00 65 00 79 00 6c 00 6f 00 67 00 67 00 65 00 72 00 20 00 73 00 74 00 61 00 72 00 74 00 73 00 } //1 Send an email notification when Keylogger starts
		$a_01_1 = {49 00 6d 00 6d 00 65 00 64 00 69 00 61 00 74 00 65 00 6c 00 79 00 20 00 68 00 69 00 64 00 65 00 20 00 4b 00 65 00 79 00 6c 00 6f 00 67 00 67 00 65 00 72 00 20 00 77 00 68 00 65 00 6e 00 20 00 6c 00 6f 00 67 00 67 00 69 00 6e 00 67 00 20 00 73 00 74 00 61 00 72 00 74 00 73 00 } //1 Immediately hide Keylogger when logging starts
		$a_01_2 = {49 00 66 00 20 00 79 00 6f 00 75 00 20 00 77 00 61 00 6e 00 74 00 20 00 74 00 6f 00 20 00 73 00 68 00 6f 00 77 00 20 00 74 00 68 00 65 00 20 00 4b 00 65 00 79 00 6c 00 6f 00 67 00 67 00 65 00 72 00 20 00 70 00 72 00 6f 00 67 00 72 00 61 00 6d 00 20 00 61 00 67 00 61 00 69 00 6e 00 20 00 6c 00 61 00 74 00 65 00 72 00 2c 00 20 00 70 00 72 00 65 00 73 00 73 00 20 00 43 00 54 00 52 00 4c 00 20 00 2b 00 20 00 41 00 4c 00 54 00 20 00 2b 00 20 00 5a 00 } //1 If you want to show the Keylogger program again later, press CTRL + ALT + Z
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}