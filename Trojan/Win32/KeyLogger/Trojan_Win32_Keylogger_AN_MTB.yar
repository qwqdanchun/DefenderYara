
rule Trojan_Win32_Keylogger_AN_MTB{
	meta:
		description = "Trojan:Win32/Keylogger.AN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {4c 00 6f 00 67 00 20 00 53 00 75 00 62 00 6d 00 69 00 74 00 74 00 65 00 64 00 21 00 } //01 00  Log Submitted!
		$a_01_1 = {6c 00 6f 00 67 00 2e 00 74 00 78 00 74 00 } //01 00  log.txt
		$a_01_2 = {75 00 70 00 61 00 72 00 6b 00 78 00 } //01 00  uparkx
		$a_01_3 = {4e 00 6f 00 20 00 70 00 72 00 69 00 6e 00 74 00 20 00 6a 00 6f 00 62 00 73 00 21 00 } //01 00  No print jobs!
		$a_01_4 = {63 00 2e 00 65 00 78 00 65 00 } //01 00  c.exe
		$a_01_5 = {63 00 68 00 2e 00 65 00 78 00 65 00 } //01 00  ch.exe
		$a_01_6 = {63 75 6e 62 68 61 69 } //00 00  cunbhai
	condition:
		any of ($a_*)
 
}