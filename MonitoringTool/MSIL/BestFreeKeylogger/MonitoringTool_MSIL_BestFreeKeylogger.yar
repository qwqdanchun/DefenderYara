
rule MonitoringTool_MSIL_BestFreeKeylogger{
	meta:
		description = "MonitoringTool:MSIL/BestFreeKeylogger,SIGNATURE_TYPE_PEHSTR_EXT,20 00 20 00 0e 00 00 0a 00 "
		
	strings :
		$a_01_0 = {55 00 6e 00 68 00 69 00 64 00 65 00 20 00 42 00 65 00 73 00 74 00 20 00 46 00 72 00 65 00 65 00 20 00 4b 00 65 00 79 00 6c 00 6f 00 67 00 67 00 65 00 72 00 } //0a 00  Unhide Best Free Keylogger
		$a_01_1 = {55 00 6e 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 20 00 6f 00 74 00 68 00 65 00 72 00 20 00 6b 00 65 00 79 00 6c 00 6f 00 67 00 67 00 65 00 72 00 73 00 20 00 62 00 65 00 66 00 6f 00 72 00 65 00 20 00 75 00 73 00 65 00 20 00 62 00 65 00 73 00 74 00 20 00 66 00 72 00 65 00 65 00 20 00 6b 00 65 00 79 00 6c 00 6f 00 67 00 67 00 65 00 72 00 20 00 69 00 66 00 20 00 79 00 6f 00 75 00 20 00 68 00 61 00 76 00 65 00 20 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 65 00 64 00 } //0a 00  Uninstall other keyloggers before use best free keylogger if you have installed
		$a_01_2 = {52 65 67 69 73 74 65 72 46 4b 4c 2e 72 65 73 6f 75 72 63 65 73 } //01 00  RegisterFKL.resources
		$a_01_3 = {63 68 6b 45 6e 61 62 6c 65 43 6c 69 70 4c 6f 67 } //01 00  chkEnableClipLog
		$a_01_4 = {63 68 6b 45 6e 61 62 6c 65 53 63 72 65 65 6e 73 68 6f 74 73 } //01 00  chkEnableScreenshots
		$a_01_5 = {63 68 6b 45 6e 61 62 6c 65 4b 65 79 4c 6f 67 } //01 00  chkEnableKeyLog
		$a_01_6 = {63 68 6b 44 6f 6e 6f 74 55 73 62 53 63 72 65 65 6e } //01 00  chkDonotUsbScreen
		$a_01_7 = {63 68 6b 44 6f 6e 6f 74 45 6d 61 69 6c 53 63 72 65 65 6e } //01 00  chkDonotEmailScreen
		$a_01_8 = {63 68 6b 44 6f 6e 6f 74 46 74 70 53 63 72 65 65 6e } //01 00  chkDonotFtpScreen
		$a_01_9 = {63 68 6b 44 6f 6e 6f 74 4e 65 74 77 6f 72 6b 53 63 72 65 65 6e } //01 00  chkDonotNetworkScreen
		$a_01_10 = {63 68 6b 45 6e 61 62 6c 65 45 6d 61 69 6c 4c 6f 67 69 6e 67 } //01 00  chkEnableEmailLoging
		$a_01_11 = {63 68 6b 45 6e 61 62 6c 65 55 73 62 4c 6f 67 69 6e 67 } //01 00  chkEnableUsbLoging
		$a_01_12 = {63 68 6b 45 6e 61 62 6c 65 46 54 50 4c 6f 67 69 6e 67 } //01 00  chkEnableFTPLoging
		$a_01_13 = {63 68 6b 45 6e 61 62 6c 65 4c 61 6e 4c 6f 67 69 6e 67 } //00 00  chkEnableLanLoging
		$a_00_14 = {5d 04 00 00 e2 20 03 00 5c 3c 00 00 f2 20 03 00 00 00 01 00 } //0c 00 
	condition:
		any of ($a_*)
 
}