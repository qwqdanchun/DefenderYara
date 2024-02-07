
rule TrojanDownloader_Win32_Agent_TB{
	meta:
		description = "TrojanDownloader:Win32/Agent.TB,SIGNATURE_TYPE_PEHSTR_EXT,1a 00 1a 00 09 00 00 01 00 "
		
	strings :
		$a_00_0 = {3c 00 73 00 63 00 72 00 69 00 70 00 74 00 20 00 44 00 45 00 46 00 45 00 52 00 20 00 6c 00 61 00 6e 00 67 00 75 00 61 00 67 00 65 00 3d 00 6a 00 61 00 76 00 61 00 73 00 63 00 72 00 69 00 70 00 74 00 3e 00 66 00 75 00 6e 00 63 00 74 00 69 00 6f 00 6e 00 20 00 6d 00 66 00 28 00 29 00 20 00 7b 00 20 00 72 00 65 00 74 00 75 00 72 00 6e 00 20 00 66 00 61 00 6c 00 73 00 65 00 3b 00 20 00 7d 00 } //01 00  <script DEFER language=javascript>function mf() { return false; }
		$a_00_1 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 49 6e 74 65 72 6e 65 74 20 53 65 74 74 69 6e 67 73 5c 5a 6f 6e 65 73 5c 33 } //01 00  Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3
		$a_01_2 = {64 61 74 61 3d 25 73 26 6b 65 79 3d 25 73 } //01 00  data=%s&key=%s
		$a_01_3 = {25 73 7c 25 73 7c 25 73 7c 25 73 7c 25 73 7c 25 73 7c 25 64 7c 25 64 7c 25 73 } //01 00  %s|%s|%s|%s|%s|%s|%d|%d|%s
		$a_00_4 = {3a 52 65 70 65 61 74 20 0a 20 64 65 6c 20 22 25 73 22 20 0a 20 69 66 20 65 78 69 73 74 20 22 25 73 22 20 67 6f 74 6f 20 52 65 70 65 61 74 } //0a 00 
		$a_00_5 = {57 69 6e 69 6e 65 74 2e 64 6c 6c } //01 00  Wininet.dll
		$a_00_6 = {5f 73 65 6c 66 } //01 00  _self
		$a_00_7 = {55 70 64 61 74 65 72 20 25 73 20 2d 20 25 73 } //0a 00  Updater %s - %s
		$a_00_8 = {49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 } //00 00  Internet Explorer
	condition:
		any of ($a_*)
 
}