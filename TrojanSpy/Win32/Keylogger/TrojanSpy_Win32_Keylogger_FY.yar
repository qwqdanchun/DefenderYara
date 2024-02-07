
rule TrojanSpy_Win32_Keylogger_FY{
	meta:
		description = "TrojanSpy:Win32/Keylogger.FY,SIGNATURE_TYPE_PEHSTR_EXT,10 00 10 00 05 00 00 0a 00 "
		
	strings :
		$a_01_0 = {2f 00 69 00 73 00 6c 00 65 00 6d 00 2f 00 6c 00 6f 00 71 00 65 00 72 00 2e 00 70 00 68 00 70 00 } //05 00  /islem/loqer.php
		$a_01_1 = {6d 00 61 00 76 00 69 00 3e 00 20 00 5b 00 50 00 61 00 67 00 65 00 44 00 6f 00 77 00 6e 00 5d 00 20 00 3c 00 2f 00 73 00 70 00 61 00 6e 00 3e 00 } //01 00  mavi> [PageDown] </span>
		$a_01_2 = {5c 00 53 00 79 00 73 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 2e 00 65 00 78 00 65 00 } //01 00  \SysService.exe
		$a_01_3 = {5c 00 77 00 69 00 6e 00 6c 00 6f 00 67 00 6f 00 6e 00 2e 00 65 00 78 00 65 00 } //01 00  \winlogon.exe
		$a_01_4 = {5c 00 73 00 76 00 63 00 68 00 6f 00 73 00 74 00 73 00 2e 00 65 00 78 00 65 00 } //00 00  \svchosts.exe
		$a_00_5 = {5d 04 00 00 34 fa } //02 80 
	condition:
		any of ($a_*)
 
}