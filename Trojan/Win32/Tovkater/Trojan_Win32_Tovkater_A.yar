
rule Trojan_Win32_Tovkater_A{
	meta:
		description = "Trojan:Win32/Tovkater.A,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 00 3a 00 5c 00 54 00 45 00 4d 00 50 00 5c 00 6e 00 73 00 79 00 32 00 38 00 42 00 38 00 2e 00 74 00 6d 00 70 00 } //01 00  C:\TEMP\nsy28B8.tmp
		$a_01_1 = {6f 00 72 00 2e 00 64 00 6c 00 6c 00 } //01 00  or.dll
		$a_01_2 = {64 00 66 00 77 00 65 00 72 00 74 00 2e 00 65 00 78 00 65 00 } //01 00  dfwert.exe
		$a_01_3 = {59 00 20 00 67 00 61 00 6d 00 65 00 6d 00 6f 00 6e 00 69 00 74 00 6f 00 72 00 2e 00 64 00 6c 00 6c 00 } //01 00  Y gamemonitor.dll
		$a_01_4 = {61 00 73 00 64 00 66 00 77 00 65 00 72 00 74 00 2e 00 65 00 78 00 65 00 } //01 00  asdfwert.exe
		$a_01_5 = {74 00 65 00 73 00 74 00 2e 00 64 00 6c 00 6c 00 } //01 00  test.dll
		$a_01_6 = {66 00 67 00 68 00 6a 00 72 00 74 00 79 00 75 00 2e 00 65 00 78 00 65 00 } //00 00  fghjrtyu.exe
	condition:
		any of ($a_*)
 
}