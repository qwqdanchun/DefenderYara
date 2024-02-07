
rule MonitoringTool_MSIL_SimpleKeylogger{
	meta:
		description = "MonitoringTool:MSIL/SimpleKeylogger,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 69 6d 70 6c 65 4b 65 6c 6f 67 67 65 72 57 69 6e 64 6f 77 73 } //01 00  SimpleKeloggerWindows
		$a_01_1 = {46 72 6d 5f 53 49 6d 70 6c 65 4c 6f 67 67 65 72 } //01 00  Frm_SImpleLogger
		$a_01_2 = {4e 4b 4c 5f 72 65 70 6f 72 74 56 69 77 65 72 } //01 00  NKL_reportViwer
		$a_01_3 = {43 00 6c 00 69 00 63 00 6b 00 20 00 54 00 6f 00 20 00 76 00 69 00 65 00 77 00 20 00 4b 00 65 00 79 00 53 00 74 00 72 00 6f 00 6b 00 65 00 20 00 52 00 65 00 70 00 6f 00 72 00 74 00 } //00 00  Click To view KeyStroke Report
		$a_00_4 = {78 09 } //02 00  ॸ
	condition:
		any of ($a_*)
 
}
rule MonitoringTool_MSIL_SimpleKeylogger_2{
	meta:
		description = "MonitoringTool:MSIL/SimpleKeylogger,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {55 00 6e 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 20 00 53 00 69 00 6d 00 70 00 6c 00 65 00 20 00 4b 00 65 00 79 00 20 00 4c 00 6f 00 67 00 67 00 65 00 72 00 } //01 00  Uninstall Simple Key Logger
		$a_01_1 = {59 00 6f 00 75 00 20 00 77 00 69 00 6c 00 6c 00 20 00 72 00 65 00 63 00 65 00 69 00 76 00 65 00 20 00 74 00 68 00 65 00 20 00 6c 00 6f 00 67 00 20 00 66 00 69 00 6c 00 65 00 20 00 74 00 6f 00 20 00 74 00 68 00 65 00 20 00 61 00 62 00 6f 00 76 00 65 00 20 00 65 00 6d 00 61 00 69 00 6c 00 20 00 61 00 64 00 64 00 72 00 65 00 73 00 73 00 20 00 61 00 74 00 3a 00 } //01 00  You will receive the log file to the above email address at:
		$a_01_2 = {48 00 69 00 64 00 65 00 73 00 20 00 74 00 68 00 69 00 73 00 20 00 61 00 70 00 70 00 6c 00 69 00 63 00 61 00 74 00 69 00 6f 00 6e 00 2e 00 20 00 20 00 50 00 72 00 65 00 73 00 73 00 20 00 43 00 54 00 52 00 4c 00 20 00 2b 00 20 00 53 00 48 00 49 00 46 00 54 00 20 00 2b 00 20 00 41 00 4c 00 54 00 20 00 2b 00 20 00 46 00 31 00 30 00 20 00 74 00 6f 00 20 00 73 00 68 00 6f 00 77 00 20 00 74 00 68 00 65 00 20 00 70 00 72 00 6f 00 67 00 72 00 61 00 6d 00 20 00 61 00 67 00 61 00 69 00 6e 00 } //01 00  Hides this application.  Press CTRL + SHIFT + ALT + F10 to show the program again
		$a_01_3 = {45 00 6e 00 61 00 62 00 6c 00 65 00 20 00 73 00 63 00 72 00 65 00 65 00 6e 00 20 00 63 00 61 00 70 00 74 00 75 00 72 00 65 00 20 00 6f 00 6e 00 20 00 6b 00 65 00 79 00 62 00 6f 00 61 00 72 00 64 00 20 00 72 00 65 00 74 00 75 00 72 00 6e 00 } //01 00  Enable screen capture on keyboard return
		$a_01_4 = {53 00 74 00 61 00 72 00 74 00 20 00 6c 00 6f 00 67 00 67 00 69 00 6e 00 67 00 20 00 61 00 6c 00 6c 00 20 00 6b 00 65 00 79 00 62 00 6f 00 61 00 72 00 64 00 20 00 61 00 63 00 74 00 69 00 76 00 69 00 74 00 69 00 65 00 73 00 } //00 00  Start logging all keyboard activities
		$a_00_5 = {5d 04 00 } //00 fc 
	condition:
		any of ($a_*)
 
}