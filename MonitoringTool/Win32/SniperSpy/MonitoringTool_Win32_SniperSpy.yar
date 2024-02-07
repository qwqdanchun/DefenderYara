
rule MonitoringTool_Win32_SniperSpy{
	meta:
		description = "MonitoringTool:Win32/SniperSpy,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 04 00 00 03 00 "
		
	strings :
		$a_01_0 = {53 6e 69 70 65 72 53 70 79 20 43 6f 6e 66 69 67 75 72 61 74 69 6f 6e 20 4d 6f 64 75 6c 65 } //03 00  SniperSpy Configuration Module
		$a_00_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 77 00 77 00 77 00 2e 00 73 00 6e 00 69 00 70 00 65 00 72 00 73 00 70 00 79 00 2e 00 63 00 6f 00 6d 00 2f 00 67 00 75 00 69 00 64 00 65 00 2e 00 68 00 74 00 6d 00 6c 00 } //02 00  http://www.sniperspy.com/guide.html
		$a_01_2 = {6c 62 6c 52 65 74 69 6e 61 78 } //02 00  lblRetinax
		$a_00_3 = {6b 00 65 00 79 00 6c 00 6f 00 67 00 67 00 65 00 72 00 3d 00 74 00 72 00 75 00 65 00 } //00 00  keylogger=true
	condition:
		any of ($a_*)
 
}
rule MonitoringTool_Win32_SniperSpy_2{
	meta:
		description = "MonitoringTool:Win32/SniperSpy,SIGNATURE_TYPE_PEHSTR_EXT,10 00 0e 00 0b 00 00 08 00 "
		
	strings :
		$a_01_0 = {3c 00 62 00 3e 00 53 00 6e 00 69 00 70 00 65 00 72 00 53 00 70 00 79 00 20 00 76 00 65 00 72 00 73 00 69 00 6f 00 6e 00 3a 00 3c 00 2f 00 62 00 3e 00 } //08 00  <b>SniperSpy version:</b>
		$a_01_1 = {53 00 6e 00 69 00 70 00 65 00 72 00 53 00 70 00 79 00 5c 00 46 00 54 00 50 00 43 00 6c 00 61 00 73 00 73 00 } //04 00  SniperSpy\FTPClass
		$a_01_2 = {63 00 74 00 72 00 6c 00 70 00 61 00 6e 00 65 00 6c 00 2f 00 6c 00 69 00 76 00 65 00 64 00 65 00 73 00 6b 00 2f 00 61 00 72 00 65 00 77 00 65 00 6c 00 69 00 76 00 65 00 2e 00 70 00 68 00 70 00 } //04 00  ctrlpanel/livedesk/arewelive.php
		$a_01_3 = {5c 00 6c 00 69 00 76 00 65 00 6b 00 65 00 79 00 6c 00 6f 00 67 00 2e 00 6c 00 6b 00 6c 00 } //02 00  \livekeylog.lkl
		$a_01_4 = {77 00 2e 00 6c 00 6f 00 67 00 73 00 76 00 69 00 65 00 77 00 65 00 72 00 2e 00 63 00 6f 00 6d 00 } //02 00  w.logsviewer.com
		$a_01_5 = {6d 00 79 00 6c 00 6f 00 67 00 73 00 76 00 69 00 65 00 77 00 65 00 72 00 2e 00 63 00 6f 00 6d 00 } //02 00  mylogsviewer.com
		$a_01_6 = {3c 00 2f 00 42 00 72 00 3e 00 5b 00 3c 00 61 00 20 00 68 00 72 00 65 00 66 00 3d 00 73 00 65 00 74 00 63 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 2e 00 70 00 68 00 70 00 } //01 00  </Br>[<a href=setcommand.php
		$a_01_7 = {4b 00 49 00 4c 00 4c 00 41 00 4e 00 54 00 49 00 53 00 50 00 59 00 57 00 41 00 52 00 45 00 } //01 00  KILLANTISPYWARE
		$a_01_8 = {2f 00 6c 00 69 00 76 00 65 00 63 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 2e 00 70 00 68 00 70 00 } //01 00  /livecommand.php
		$a_01_9 = {2f 00 6c 00 69 00 76 00 65 00 75 00 70 00 6c 00 6f 00 61 00 64 00 2e 00 70 00 68 00 70 00 } //01 00  /liveupload.php
		$a_01_10 = {69 00 43 00 61 00 70 00 74 00 75 00 72 00 65 00 49 00 6e 00 74 00 65 00 72 00 76 00 61 00 6c 00 3d 00 } //00 00  iCaptureInterval=
	condition:
		any of ($a_*)
 
}