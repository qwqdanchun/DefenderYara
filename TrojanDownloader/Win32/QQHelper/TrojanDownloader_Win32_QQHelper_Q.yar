
rule TrojanDownloader_Win32_QQHelper_Q{
	meta:
		description = "TrojanDownloader:Win32/QQHelper.Q,SIGNATURE_TYPE_PEHSTR,0b 00 0b 00 0b 00 00 01 00 "
		
	strings :
		$a_01_0 = {25 73 5b 25 73 5d } //01 00  %s[%s]
		$a_01_1 = {25 73 25 73 3d 25 73 } //01 00  %s%s=%s
		$a_01_2 = {25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 } //01 00  %02X%02X%02X%02X%02X%02X
		$a_01_3 = {25 2e 38 58 25 2e 34 58 25 2e 34 58 25 2e 32 58 25 2e 32 58 25 2e 32 58 25 2e 32 58 25 2e 32 58 25 2e 32 58 25 2e 32 58 25 2e 32 58 } //01 00  %.8X%.4X%.4X%.2X%.2X%.2X%.2X%.2X%.2X%.2X%.2X
		$a_01_4 = {25 64 2e 25 64 2e 25 64 2d 25 73 } //01 00  %d.%d.%d-%s
		$a_01_5 = {25 73 5c 74 25 63 2e 74 6d 70 } //01 00  %s\t%c.tmp
		$a_01_6 = {69 72 6a 69 74 2e 64 6c 6c } //01 00  irjit.dll
		$a_01_7 = {74 74 72 61 76 65 6c 65 72 } //01 00  ttraveler
		$a_01_8 = {45 78 70 6c 6f 72 65 72 5f 53 65 72 76 65 72 } //01 00  Explorer_Server
		$a_01_9 = {53 68 65 6c 6c 45 78 65 63 75 74 65 41 } //01 00  ShellExecuteA
		$a_01_10 = {49 6e 74 65 72 6e 65 74 52 65 61 64 46 69 6c 65 } //00 00  InternetReadFile
	condition:
		any of ($a_*)
 
}