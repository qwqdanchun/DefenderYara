
rule Trojan_Win32_Qbot_RA_{
	meta:
		description = "Trojan:Win32/Qbot.RA!!Qbot.gen!A,SIGNATURE_TYPE_ARHSTR_EXT,10 00 10 00 11 00 00 01 00 "
		
	strings :
		$a_81_0 = {63 6f 6d 65 74 2e 79 61 68 6f 6f 2e 63 6f 6d 3b 2e 68 69 72 6f 2e 74 76 3b 73 61 66 65 62 72 6f 77 73 69 6e 67 2e 67 6f 6f 67 6c 65 2e 63 6f 6d 3b 67 65 6f 2e 71 75 65 72 79 2e 79 61 68 6f 6f 2e 63 6f 6d 3b 67 6f 6f 67 6c 65 75 73 65 72 63 6f 6e 74 65 6e 74 2e 63 6f } //01 00  comet.yahoo.com;.hiro.tv;safebrowsing.google.com;geo.query.yahoo.com;googleusercontent.co
		$a_81_1 = {3b 73 61 6c 65 73 66 6f 72 63 65 2e 63 6f 6d 3b 6f 66 66 69 63 65 61 70 70 73 2e 6c 69 76 65 2e 63 6f 6d 3b 73 74 6f 72 61 67 65 2e 6c 69 76 65 2e 63 6f 6d 3b 6d 65 73 73 65 6e 67 65 72 2e 6c 69 76 65 2e 63 6f 6d 3b 2e 74 77 69 6d 67 2e 63 6f 6d 3b } //01 00  ;salesforce.com;officeapps.live.com;storage.live.com;messenger.live.com;.twimg.com;
		$a_81_2 = {61 70 69 2e 73 6b 79 70 65 2e 63 6f 6d 3b 6d 61 69 6c 2e 67 6f 6f 67 6c 65 2e 63 6f 6d 3b 2e 62 69 6e 67 2e 63 6f 6d 3b 70 6c 61 79 74 6f 67 61 2e 63 6f 6d } //01 00  api.skype.com;mail.google.com;.bing.com;playtoga.com
		$a_81_3 = {73 69 74 65 61 64 76 69 73 6f 72 2e 63 6f 6d 3b 61 76 67 74 68 72 65 61 74 6c 61 62 73 2e 63 6f 6d 3b 73 61 66 65 77 65 62 2e 6e 6f 72 74 6f 6e 2e 63 6f 6d } //01 00  siteadvisor.com;avgthreatlabs.com;safeweb.norton.com
		$a_81_4 = {74 3d 25 73 20 74 69 6d 65 3d 5b 25 30 32 64 3a 25 30 32 64 3a 25 30 32 64 2d 25 30 32 64 2f 25 30 32 64 2f 25 64 5d } //01 00  t=%s time=[%02d:%02d:%02d-%02d/%02d/%d]
		$a_81_5 = {68 6f 73 74 3d 5b 25 73 3a 25 75 5d 20 75 73 65 72 3d 5b 25 73 5d 20 70 61 73 73 3d 5b 25 73 5d } //01 00  host=[%s:%u] user=[%s] pass=[%s]
		$a_81_6 = {75 72 6c 3d 5b 25 73 5d 20 75 73 65 72 3d 5b 25 73 5d 20 70 61 73 73 3d 5b 25 73 5d } //01 00  url=[%s] user=[%s] pass=[%s]
		$a_81_7 = {61 76 63 75 66 33 32 2e 64 6c 6c } //01 00  avcuf32.dll
		$a_81_8 = {6f 6c 6c 79 64 62 67 2e 65 78 65 } //01 00  ollydbg.exe
		$a_81_9 = {77 69 6e 64 62 67 2e 65 78 65 } //01 00  windbg.exe
		$a_81_10 = {6e 61 76 2e 65 78 65 } //01 00  nav.exe
		$a_81_11 = {50 72 6f 78 69 66 69 65 72 2e 65 78 65 } //01 00  Proxifier.exe
		$a_81_12 = {4d 69 63 72 6f 73 6f 66 74 2e 4e 6f 74 65 73 2e 65 78 65 } //01 00  Microsoft.Notes.exe
		$a_81_13 = {4e 6f 72 74 6f 6e 20 49 6e 74 65 72 6e 65 74 20 53 65 63 75 72 69 74 79 } //01 00  Norton Internet Security
		$a_81_14 = {41 56 41 53 54 20 53 6f 66 74 77 61 72 65 } //01 00  AVAST Software
		$a_81_15 = {66 61 63 65 62 6f 6f 6b 2e 63 6f 6d 2f 6c 6f 67 69 6e } //01 00  facebook.com/login
		$a_81_16 = {53 45 4c 45 43 54 20 2a 20 46 52 4f 4d 20 41 6e 74 69 56 69 72 75 73 50 72 6f 64 75 63 74 } //00 00  SELECT * FROM AntiVirusProduct
	condition:
		any of ($a_*)
 
}