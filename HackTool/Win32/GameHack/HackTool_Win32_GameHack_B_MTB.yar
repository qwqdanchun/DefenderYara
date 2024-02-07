
rule HackTool_Win32_GameHack_B_MTB{
	meta:
		description = "HackTool:Win32/GameHack.B!MTB,SIGNATURE_TYPE_PEHSTR,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 00 53 00 65 00 74 00 74 00 69 00 6e 00 67 00 73 00 5c 00 53 00 61 00 76 00 65 00 2e 00 69 00 6e 00 69 00 } //01 00  \Settings\Save.ini
		$a_01_1 = {56 00 49 00 52 00 54 00 55 00 41 00 4c 00 49 00 5a 00 45 00 52 00 5f 00 45 00 4e 00 44 00 } //01 00  VIRTUALIZER_END
		$a_01_2 = {56 00 49 00 52 00 54 00 55 00 41 00 4c 00 49 00 5a 00 45 00 52 00 5f 00 53 00 54 00 41 00 52 00 54 00 } //01 00  VIRTUALIZER_START
		$a_01_3 = {53 48 44 6f 63 56 77 43 74 6c 2e 57 65 62 42 72 6f 77 73 65 72 } //01 00  SHDocVwCtl.WebBrowser
		$a_01_4 = {42 6f 74 20 45 2d 50 49 4e 20 3a } //01 00  Bot E-PIN :
		$a_01_5 = {56 4c 43 20 6d 65 64 69 61 20 70 6c 61 79 65 72 } //01 00  VLC media player
		$a_01_6 = {47 65 74 41 73 79 6e 63 4b 65 79 53 74 61 74 65 } //01 00  GetAsyncKeyState
		$a_01_7 = {41 00 43 00 4d 00 45 00 5f 00 49 00 53 00 54 00 49 00 52 00 41 00 50 00 2e 00 76 00 62 00 70 00 } //00 00  ACME_ISTIRAP.vbp
	condition:
		any of ($a_*)
 
}