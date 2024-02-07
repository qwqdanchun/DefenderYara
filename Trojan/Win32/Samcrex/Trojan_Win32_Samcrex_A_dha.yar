
rule Trojan_Win32_Samcrex_A_dha{
	meta:
		description = "Trojan:Win32/Samcrex.A!dha,SIGNATURE_TYPE_PEHSTR,3c 00 3c 00 06 00 00 0a 00 "
		
	strings :
		$a_01_0 = {3c 00 53 00 54 00 41 00 52 00 54 00 43 00 52 00 45 00 44 00 3e 00 } //0a 00  <STARTCRED>
		$a_01_1 = {3c 00 53 00 54 00 41 00 52 00 54 00 50 00 41 00 53 00 53 00 3e 00 } //0a 00  <STARTPASS>
		$a_01_2 = {3c 00 45 00 4e 00 44 00 43 00 52 00 45 00 44 00 3e 00 } //0a 00  <ENDCRED>
		$a_01_3 = {5f 00 77 00 66 00 72 00 63 00 6d 00 64 00 2e 00 76 00 62 00 73 00 } //0a 00  _wfrcmd.vbs
		$a_01_4 = {25 00 70 00 72 00 6f 00 67 00 72 00 61 00 6d 00 64 00 61 00 74 00 61 00 25 00 5c 00 65 00 76 00 74 00 63 00 68 00 6b 00 2e 00 74 00 78 00 74 00 } //0a 00  %programdata%\evtchk.txt
		$a_01_5 = {6a 01 6a 00 6a 02 6a 00 6a 00 6a 01 68 2a 02 28 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Samcrex_A_dha_2{
	meta:
		description = "Trojan:Win32/Samcrex.A!dha,SIGNATURE_TYPE_PEHSTR,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_01_0 = {5f 00 77 00 66 00 72 00 63 00 6d 00 64 00 2e 00 76 00 62 00 73 00 20 00 26 00 26 00 20 00 63 00 73 00 63 00 72 00 69 00 70 00 74 00 2e 00 65 00 78 00 65 00 20 00 25 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 44 00 61 00 74 00 61 00 25 00 5c 00 5f 00 77 00 66 00 72 00 63 00 6d 00 64 00 2e 00 76 00 62 00 73 00 20 00 26 00 26 00 20 00 25 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 44 00 61 00 74 00 61 00 25 00 5c 00 25 00 43 00 4f 00 4d 00 50 00 55 00 54 00 45 00 52 00 4e 00 41 00 4d 00 45 00 25 00 2e 00 65 00 78 00 65 00 } //00 00  _wfrcmd.vbs && cscript.exe %ProgramData%\_wfrcmd.vbs && %ProgramData%\%COMPUTERNAME%.exe
	condition:
		any of ($a_*)
 
}