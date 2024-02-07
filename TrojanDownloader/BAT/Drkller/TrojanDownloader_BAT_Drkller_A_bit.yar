
rule TrojanDownloader_BAT_Drkller_A_bit{
	meta:
		description = "TrojanDownloader:BAT/Drkller.A!bit,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //01 00  Software\Microsoft\Windows\CurrentVersion\Run
		$a_01_1 = {70 00 72 00 6f 00 63 00 65 00 78 00 70 00 } //01 00  procexp
		$a_01_2 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 43 00 4d 00 44 00 } //01 00  DisableCMD
		$a_01_3 = {5c 00 77 00 69 00 6e 00 69 00 6e 00 69 00 74 00 2e 00 65 00 78 00 65 00 } //01 00  \wininit.exe
		$a_01_4 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 77 00 77 00 77 00 2e 00 77 00 68 00 61 00 74 00 73 00 6d 00 79 00 69 00 70 00 2e 00 75 00 73 00 2f 00 73 00 68 00 6f 00 77 00 69 00 70 00 73 00 69 00 6d 00 70 00 6c 00 65 00 2e 00 70 00 68 00 70 00 } //01 00  http://www.whatsmyip.us/showipsimple.php
		$a_01_5 = {73 00 6d 00 74 00 70 00 2e 00 67 00 6d 00 61 00 69 00 6c 00 2e 00 63 00 6f 00 6d 00 } //00 00  smtp.gmail.com
	condition:
		any of ($a_*)
 
}