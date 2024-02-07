
rule Trojan_BAT_Njrat_RPX_MTB{
	meta:
		description = "Trojan:BAT/Njrat.RPX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 0b 00 00 01 00 "
		
	strings :
		$a_01_0 = {32 00 2e 00 74 00 63 00 70 00 2e 00 65 00 75 00 2e 00 6e 00 67 00 72 00 6f 00 6b 00 2e 00 69 00 6f 00 } //01 00  2.tcp.eu.ngrok.io
		$a_01_1 = {53 00 70 00 79 00 54 00 68 00 65 00 53 00 70 00 79 00 } //01 00  SpyTheSpy
		$a_01_2 = {73 00 6d 00 73 00 6e 00 69 00 66 00 66 00 } //01 00  smsniff
		$a_01_3 = {70 00 72 00 6f 00 63 00 65 00 73 00 73 00 68 00 61 00 63 00 6b 00 65 00 72 00 } //01 00  processhacker
		$a_01_4 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //01 00  Software\Microsoft\Windows\CurrentVersion\Run
		$a_01_5 = {6e 00 65 00 74 00 73 00 68 00 20 00 66 00 69 00 72 00 65 00 77 00 61 00 6c 00 6c 00 20 00 61 00 64 00 64 00 20 00 61 00 6c 00 6c 00 6f 00 77 00 65 00 64 00 70 00 72 00 6f 00 67 00 72 00 61 00 6d 00 } //01 00  netsh firewall add allowedprogram
		$a_01_6 = {47 65 74 4b 65 79 62 6f 61 72 64 53 74 61 74 65 } //01 00  GetKeyboardState
		$a_01_7 = {47 5a 69 70 53 74 72 65 61 6d } //01 00  GZipStream
		$a_01_8 = {52 65 70 6c 61 63 65 } //01 00  Replace
		$a_01_9 = {4c 61 74 65 43 61 6c 6c } //01 00  LateCall
		$a_01_10 = {54 6f 41 72 72 61 79 } //00 00  ToArray
	condition:
		any of ($a_*)
 
}