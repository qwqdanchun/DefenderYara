
rule TrojanClicker_Win32_Zxboy{
	meta:
		description = "TrojanClicker:Win32/Zxboy,SIGNATURE_TYPE_PEHSTR_EXT,10 00 10 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {22 20 74 61 72 67 65 74 3d 5f 62 6c 61 6e 6b } //02 00  " target=_blank
		$a_01_1 = {25 73 5c 75 70 64 61 74 65 2e 69 6e 69 } //03 00  %s\update.ini
		$a_01_2 = {5c 73 79 73 74 65 6d 33 32 5c 73 79 73 61 64 73 2e 69 6e 69 } //03 00  \system32\sysads.ini
		$a_01_3 = {68 74 74 70 3a 2f 2f 61 64 73 2e 38 38 36 36 2e 6f 72 67 2f } //02 00  http://ads.8866.org/
		$a_01_4 = {73 79 73 61 64 73 2e 67 69 66 } //02 00  sysads.gif
		$a_01_5 = {75 70 64 61 74 65 2e 67 69 66 } //02 00  update.gif
		$a_01_6 = {75 70 64 61 74 65 2e 6a 70 67 } //02 00  update.jpg
		$a_01_7 = {75 70 64 61 74 65 2e 65 78 65 } //05 00  update.exe
		$a_01_8 = {68 74 74 70 3a 2f 2f 77 77 77 2e 7a 78 62 6f 79 2e 63 6f 6d 23 68 74 74 70 3a 2f 2f } //00 00  http://www.zxboy.com#http://
	condition:
		any of ($a_*)
 
}