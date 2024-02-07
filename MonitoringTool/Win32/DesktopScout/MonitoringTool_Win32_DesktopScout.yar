
rule MonitoringTool_Win32_DesktopScout{
	meta:
		description = "MonitoringTool:Win32/DesktopScout,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {64 74 73 70 72 6f 63 2e 64 6c 6c 00 6a 00 a1 50 } //01 00 
		$a_01_1 = {73 76 63 61 67 6e 74 2e 65 78 65 00 55 8b ec 81 } //01 00 
		$a_01_2 = {70 72 6f 63 65 78 70 2e 65 78 65 00 } //01 00 
		$a_01_3 = {53 74 61 72 74 53 74 65 61 6c 74 68 48 6f 6f 6b 00 } //01 00 
		$a_01_4 = {53 74 6f 70 53 74 65 61 6c 74 68 48 6f 6f 6b 00 } //01 00  瑓灯瑓慥瑬䡨潯k
		$a_01_5 = {5b 00 42 00 61 00 63 00 6b 00 73 00 70 00 61 00 63 00 65 00 5d 00 } //01 00  [Backspace]
		$a_01_6 = {5b 00 45 00 73 00 63 00 5d 00 } //01 00  [Esc]
		$a_01_7 = {5b 00 54 00 61 00 62 00 5d 00 } //00 00  [Tab]
	condition:
		any of ($a_*)
 
}
rule MonitoringTool_Win32_DesktopScout_2{
	meta:
		description = "MonitoringTool:Win32/DesktopScout,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 55 6e 69 6e 73 74 61 6c 6c 5c 44 65 73 6b 74 6f 70 20 53 63 6f 75 74 } //01 00  \Uninstall\Desktop Scout
		$a_01_1 = {63 68 6b 53 63 72 65 65 6e 4c 6f 67 67 65 72 45 6e 61 62 6c 65 64 43 6c 69 63 6b } //01 00  chkScreenLoggerEnabledClick
		$a_01_2 = {64 74 73 62 72 61 6e 64 2e 64 61 74 } //01 00  dtsbrand.dat
		$a_01_3 = {47 6c 6f 62 61 6c 5c 44 54 53 33 4d 75 74 65 78 33 30 53 54 50 } //01 00  Global\DTS3Mutex30STP
		$a_01_4 = {5c 73 79 73 74 65 6d 33 32 5c 63 6f 6e 66 69 67 5c 73 79 73 74 65 6d 70 72 6f 66 69 6c 65 5c } //01 00  \system32\config\systemprofile\
		$a_01_5 = {54 00 53 00 63 00 72 00 65 00 65 00 6e 00 4c 00 6f 00 67 00 67 00 65 00 72 00 2e 00 43 00 72 00 65 00 61 00 74 00 65 00 64 00 } //01 00  TScreenLogger.Created
		$a_01_6 = {54 00 55 00 72 00 6c 00 4c 00 6f 00 67 00 67 00 65 00 72 00 2e 00 43 00 72 00 65 00 61 00 74 00 65 00 64 00 } //01 00  TUrlLogger.Created
		$a_01_7 = {54 00 44 00 69 00 73 00 6b 00 4c 00 6f 00 67 00 67 00 65 00 72 00 2e 00 43 00 72 00 65 00 61 00 74 00 65 00 64 00 } //00 00  TDiskLogger.Created
	condition:
		any of ($a_*)
 
}
rule MonitoringTool_Win32_DesktopScout_3{
	meta:
		description = "MonitoringTool:Win32/DesktopScout,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 01 00 "
		
	strings :
		$a_01_0 = {44 00 65 00 73 00 6b 00 74 00 6f 00 70 00 20 00 53 00 63 00 6f 00 75 00 74 00 2e 00 } //01 00  Desktop Scout.
		$a_01_1 = {69 00 70 00 2e 00 67 00 6c 00 6f 00 62 00 61 00 6c 00 70 00 61 00 74 00 72 00 6f 00 6c 00 2e 00 6e 00 65 00 74 00 2f 00 } //01 00  ip.globalpatrol.net/
		$a_01_2 = {49 00 50 00 46 00 65 00 74 00 63 00 68 00 55 00 73 00 65 00 72 00 6e 00 61 00 6d 00 65 00 } //01 00  IPFetchUsername
		$a_01_3 = {5b 00 42 00 61 00 63 00 6b 00 73 00 70 00 61 00 63 00 65 00 5d 00 } //01 00  [Backspace]
		$a_01_4 = {53 00 65 00 6e 00 64 00 20 00 43 00 74 00 72 00 6c 00 2d 00 41 00 6c 00 74 00 2d 00 44 00 65 00 6c 00 } //01 00  Send Ctrl-Alt-Del
		$a_01_5 = {5b 00 4c 00 69 00 63 00 65 00 6e 00 73 00 65 00 64 00 20 00 74 00 6f 00 20 00 6d 00 6f 00 6e 00 69 00 74 00 6f 00 72 00 20 00 25 00 64 00 20 00 41 00 67 00 65 00 6e 00 74 00 73 00 5d 00 } //01 00  [Licensed to monitor %d Agents]
		$a_01_6 = {43 00 6f 00 6e 00 66 00 69 00 72 00 6d 00 20 00 41 00 67 00 65 00 6e 00 74 00 20 00 53 00 68 00 75 00 74 00 64 00 6f 00 77 00 6e 00 } //01 00  Confirm Agent Shutdown
		$a_01_7 = {50 00 72 00 6f 00 63 00 65 00 73 00 73 00 20 00 4d 00 61 00 6e 00 61 00 67 00 65 00 72 00 } //01 00  Process Manager
		$a_01_8 = {6d 00 6f 00 64 00 61 00 70 00 70 00 5c 00 } //01 00  modapp\
		$a_01_9 = {6d 00 6f 00 64 00 73 00 63 00 72 00 5c 00 } //00 00  modscr\
	condition:
		any of ($a_*)
 
}