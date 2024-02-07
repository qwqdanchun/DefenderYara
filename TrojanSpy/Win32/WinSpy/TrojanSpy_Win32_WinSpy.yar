
rule TrojanSpy_Win32_WinSpy{
	meta:
		description = "TrojanSpy:Win32/WinSpy,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 25 00 00 01 00 "
		
	strings :
		$a_01_0 = {54 00 49 00 4d 00 45 00 20 00 53 00 50 00 45 00 4e 00 54 00 20 00 4f 00 4e 00 4c 00 49 00 4e 00 45 00 20 00 52 00 45 00 50 00 4f 00 52 00 54 00 } //01 00  TIME SPENT ONLINE REPORT
		$a_01_1 = {57 00 45 00 42 00 53 00 49 00 54 00 45 00 20 00 56 00 49 00 53 00 49 00 54 00 45 00 44 00 20 00 44 00 45 00 54 00 41 00 49 00 4c 00 20 00 52 00 45 00 50 00 4f 00 52 00 54 00 } //01 00  WEBSITE VISITED DETAIL REPORT
		$a_01_2 = {53 00 69 00 74 00 65 00 73 00 44 00 65 00 74 00 61 00 69 00 6c 00 2e 00 74 00 78 00 74 00 } //01 00  SitesDetail.txt
		$a_01_3 = {50 00 43 00 4c 00 6f 00 63 00 61 00 74 00 69 00 6f 00 6e 00 2e 00 74 00 78 00 74 00 } //01 00  PCLocation.txt
		$a_01_4 = {54 00 69 00 6d 00 65 00 4f 00 6e 00 6c 00 69 00 6e 00 65 00 2e 00 74 00 78 00 74 00 } //01 00  TimeOnline.txt
		$a_01_5 = {5c 00 43 00 61 00 70 00 74 00 75 00 72 00 65 00 } //01 00  \Capture
		$a_01_6 = {52 00 65 00 6d 00 6f 00 74 00 65 00 20 00 46 00 69 00 6c 00 65 00 20 00 63 00 6f 00 75 00 6c 00 64 00 20 00 6e 00 6f 00 74 00 20 00 62 00 65 00 20 00 64 00 65 00 6c 00 65 00 74 00 65 00 64 00 } //01 00  Remote File could not be deleted
		$a_01_7 = {45 00 6e 00 61 00 62 00 6c 00 65 00 20 00 57 00 61 00 74 00 63 00 68 00 } //01 00  Enable Watch
		$a_01_8 = {2d 00 20 00 43 00 4d 00 44 00 20 00 55 00 70 00 6c 00 20 00 46 00 69 00 6c 00 65 00 20 00 4f 00 70 00 65 00 6e 00 20 00 2d 00 } //01 00  - CMD Upl File Open -
		$a_01_9 = {4c 00 4f 00 53 00 54 00 20 00 53 00 54 00 4f 00 4c 00 45 00 4e 00 20 00 50 00 43 00 20 00 52 00 45 00 50 00 4f 00 52 00 54 00 } //01 00  LOST STOLEN PC REPORT
		$a_01_10 = {5c 00 5c 00 5c 00 4f 00 4e 00 4c 00 49 00 4e 00 45 00 54 00 49 00 4d 00 45 00 20 00 } //01 00  \\\ONLINETIME 
		$a_01_11 = {5c 00 5c 00 5c 00 4b 00 45 00 59 00 4c 00 4f 00 47 00 53 00 } //01 00  \\\KEYLOGS
		$a_01_12 = {5c 00 5c 00 5c 00 43 00 48 00 41 00 54 00 52 00 4f 00 4f 00 4d 00 } //01 00  \\\CHATROOM
		$a_01_13 = {5c 00 5c 00 5c 00 57 00 45 00 42 00 53 00 49 00 54 00 45 00 44 00 } //01 00  \\\WEBSITED
		$a_01_14 = {5c 00 5c 00 5c 00 50 00 43 00 41 00 43 00 54 00 49 00 56 00 45 00 54 00 49 00 4d 00 45 00 } //01 00  \\\PCACTIVETIME
		$a_01_15 = {5c 00 5c 00 5c 00 57 00 45 00 42 00 53 00 49 00 54 00 45 00 53 00 } //01 00  \\\WEBSITES
		$a_01_16 = {57 00 65 00 62 00 73 00 69 00 74 00 65 00 73 00 5f 00 53 00 75 00 6d 00 6d 00 61 00 72 00 79 00 2e 00 74 00 78 00 74 00 } //01 00  Websites_Summary.txt
		$a_01_17 = {5c 00 43 00 68 00 61 00 74 00 5f 00 6c 00 6f 00 67 00 2e 00 74 00 78 00 74 00 } //01 00  \Chat_log.txt
		$a_01_18 = {41 00 6c 00 6c 00 6f 00 77 00 3a 00 20 00 47 00 45 00 54 00 2c 00 20 00 50 00 4f 00 53 00 54 00 } //01 00  Allow: GET, POST
		$a_01_19 = {44 00 61 00 74 00 65 00 20 00 46 00 69 00 6c 00 65 00 20 00 43 00 72 00 65 00 61 00 74 00 65 00 64 00 3a 00 } //01 00  Date File Created:
		$a_01_20 = {50 00 43 00 20 00 49 00 44 00 3a 00 } //01 00  PC ID:
		$a_01_21 = {4b 00 45 00 59 00 20 00 50 00 52 00 45 00 53 00 53 00 45 00 44 00 20 00 52 00 45 00 50 00 4f 00 52 00 54 00 } //01 00  KEY PRESSED REPORT
		$a_01_22 = {57 00 69 00 6e 00 64 00 6f 00 77 00 20 00 54 00 69 00 74 00 6c 00 65 00 3a 00 } //01 00  Window Title:
		$a_01_23 = {4b 00 65 00 79 00 20 00 50 00 72 00 65 00 73 00 73 00 65 00 64 00 20 00 3a 00 } //01 00  Key Pressed :
		$a_01_24 = {50 00 72 00 65 00 73 00 73 00 65 00 64 00 4b 00 65 00 79 00 73 00 2e 00 74 00 78 00 74 00 } //01 00  PressedKeys.txt
		$a_01_25 = {74 78 74 4d 79 4b 65 79 00 } //01 00 
		$a_01_26 = {47 6f 53 74 65 61 6c 74 68 00 } //01 00  潇瑓慥瑬h
		$a_01_27 = {53 74 6f 70 4b 65 79 6c 6f 67 00 } //01 00 
		$a_01_28 = {7b 00 4c 00 65 00 66 00 74 00 57 00 69 00 6e 00 4b 00 65 00 79 00 7d 00 } //01 00  {LeftWinKey}
		$a_01_29 = {7b 00 4c 00 65 00 66 00 74 00 41 00 6c 00 74 00 7d 00 } //01 00  {LeftAlt}
		$a_01_30 = {53 00 65 00 6e 00 64 00 46 00 69 00 6c 00 65 00 3a 00 } //01 00  SendFile:
		$a_01_31 = {53 00 61 00 76 00 65 00 20 00 53 00 6e 00 61 00 70 00 3a 00 } //01 00  Save Snap:
		$a_01_32 = {43 00 68 00 65 00 63 00 6b 00 20 00 43 00 61 00 6d 00 3a 00 } //01 00  Check Cam:
		$a_01_33 = {5c 00 43 00 68 00 61 00 74 00 52 00 65 00 70 00 6f 00 72 00 74 00 2e 00 74 00 78 00 74 00 } //01 00  \ChatReport.txt
		$a_01_34 = {5c 00 53 00 69 00 74 00 65 00 73 00 53 00 75 00 6d 00 6d 00 61 00 72 00 79 00 2e 00 74 00 78 00 74 00 } //01 00  \SitesSummary.txt
		$a_01_35 = {41 00 63 00 63 00 65 00 73 00 73 00 6f 00 72 00 69 00 65 00 73 00 5c 00 43 00 6f 00 6d 00 6d 00 6f 00 6e 00 5c 00 2a 00 2e 00 74 00 78 00 74 00 } //01 00  Accessories\Common\*.txt
		$a_01_36 = {53 54 4f 50 43 41 4d 20 53 54 41 52 54 43 41 4d 00 } //00 00 
		$a_00_37 = {5d 04 00 00 eb aa } //03 80 
	condition:
		any of ($a_*)
 
}