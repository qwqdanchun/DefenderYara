
rule Trojan_Win32_VBKeyLoggerSpy_B_MTB{
	meta:
		description = "Trojan:Win32/VBKeyLoggerSpy.B!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 0b 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 48 44 6f 63 56 77 43 74 6c 2e 57 65 62 42 72 6f 77 73 65 72 } //01 00  SHDocVwCtl.WebBrowser
		$a_01_1 = {5b 00 54 00 61 00 62 00 5d 00 } //01 00  [Tab]
		$a_01_2 = {5b 00 41 00 4c 00 54 00 55 00 50 00 5d 00 } //01 00  [ALTUP]
		$a_01_3 = {5b 00 41 00 4c 00 54 00 44 00 4f 00 57 00 4e 00 5d 00 } //01 00  [ALTDOWN]
		$a_01_4 = {5b 00 45 00 73 00 63 00 61 00 70 00 65 00 5d 00 } //01 00  [Escape]
		$a_01_5 = {5b 00 50 00 61 00 67 00 65 00 55 00 70 00 5d 00 } //01 00  [PageUp]
		$a_01_6 = {5b 00 50 00 61 00 67 00 65 00 44 00 6f 00 77 00 6e 00 5d 00 } //01 00  [PageDown]
		$a_01_7 = {5b 00 45 00 6e 00 64 00 5d 00 } //01 00  [End]
		$a_01_8 = {5b 00 48 00 6f 00 6d 00 65 00 5d 00 } //01 00  [Home]
		$a_01_9 = {5b 00 49 00 6e 00 73 00 65 00 72 00 74 00 5d 00 } //01 00  [Insert]
		$a_01_10 = {5b 00 44 00 65 00 6c 00 65 00 74 00 65 00 5d 00 } //00 00  [Delete]
	condition:
		any of ($a_*)
 
}