
rule TrojanClicker_Win32_Iebatost_A{
	meta:
		description = "TrojanClicker:Win32/Iebatost.A,SIGNATURE_TYPE_PEHSTR_EXT,69 00 69 00 0c 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 42 6c 6f 63 6b 65 64 50 6f 70 75 70 5c 2e 63 75 72 72 65 6e 74 } //01 00  \BlockedPopup\.current
		$a_01_1 = {5c 4e 61 76 69 67 61 74 69 6e 67 5c 2e 63 75 72 72 65 6e 74 } //01 00  \Navigating\.current
		$a_01_2 = {5c 53 65 63 75 72 69 74 79 42 61 6e 64 5c 2e 63 75 72 72 65 6e 74 } //02 00  \SecurityBand\.current
		$a_01_3 = {69 65 2e 67 65 74 69 74 63 6c 65 61 72 2e 63 6f 6d } //03 00  ie.getitclear.com
		$a_01_4 = {66 34 30 30 30 34 5a 78 78 } //03 00  f40004Zxx
		$a_01_5 = {72 30 30 30 30 6b } //03 00  r0000k
		$a_01_6 = {76 6f 64 30 30 } //03 00  vod00
		$a_01_7 = {65 78 78 78 69 } //03 00  exxxi
		$a_01_8 = {66 34 30 30 30 34 } //03 00  f40004
		$a_03_9 = {68 60 ea 00 00 ff d3 90 02 10 ff d6 85 c0 74 90 00 } //64 00 
		$a_01_10 = {89 44 24 10 6a 64 ff d5 6a 00 6a 09 ff d3 c1 e0 10 50 6a 09 68 00 01 00 00 56 ff d7 6a 00 6a 09 ff d3 c1 e0 10 50 6a 09 68 01 01 00 00 56 ff d7 8b 44 24 10 48 89 44 24 10 75 c9 } //64 00 
		$a_03_11 = {6a 64 ff 15 90 01 04 6a 00 6a 09 ff d5 c1 e0 10 50 6a 09 68 00 01 00 00 57 ff d3 6a 00 6a 09 ff d5 c1 e0 10 50 6a 09 68 01 01 00 00 57 ff d3 83 ee 01 85 f6 7f c9 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}