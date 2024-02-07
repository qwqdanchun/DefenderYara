
rule Trojan_Win32_Statinfru_A_bit{
	meta:
		description = "Trojan:Win32/Statinfru.A!bit,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {73 00 70 00 65 00 65 00 64 00 62 00 6f 00 6f 00 73 00 74 00 32 00 2e 00 65 00 78 00 65 00 } //02 00  speedboost2.exe
		$a_01_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 73 00 74 00 61 00 74 00 69 00 63 00 69 00 6e 00 66 00 6f 00 2e 00 72 00 75 00 } //01 00  http://staticinfo.ru
		$a_01_2 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //01 00  Software\Microsoft\Windows\CurrentVersion\Run
		$a_01_3 = {76 00 61 00 72 00 69 00 65 00 74 00 79 00 20 00 73 00 70 00 65 00 65 00 64 00 } //00 00  variety speed
	condition:
		any of ($a_*)
 
}