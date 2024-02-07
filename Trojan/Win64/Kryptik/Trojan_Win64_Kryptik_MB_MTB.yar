
rule Trojan_Win64_Kryptik_MB_MTB{
	meta:
		description = "Trojan:Win64/Kryptik.MB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 77 69 6e 64 6f 77 73 5c 73 79 73 74 65 6d 33 32 5c 68 6f 73 74 2e 65 78 65 } //01 00  \windows\system32\host.exe
		$a_01_1 = {2f 63 20 64 65 6c 20 2f 71 20 25 73 } //01 00  /c del /q %s
		$a_01_2 = {57 00 69 00 64 00 67 00 65 00 74 00 } //01 00  Widget
		$a_01_3 = {61 00 63 00 63 00 4b 00 65 00 79 00 62 00 6f 00 61 00 72 00 64 00 53 00 68 00 6f 00 72 00 74 00 63 00 75 00 74 00 } //01 00  accKeyboardShortcut
		$a_01_4 = {52 65 73 74 72 69 63 74 52 75 6e } //01 00  RestrictRun
		$a_01_5 = {54 00 6f 00 67 00 67 00 6c 00 65 00 20 00 53 00 74 00 61 00 74 00 75 00 73 00 42 00 61 00 72 00 } //01 00  Toggle StatusBar
		$a_01_6 = {45 00 26 00 78 00 69 00 74 00 } //01 00  E&xit
		$a_01_7 = {43 68 65 63 6b 52 65 6d 6f 74 65 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //01 00  CheckRemoteDebuggerPresent
		$a_01_8 = {57 72 69 74 65 46 69 6c 65 } //01 00  WriteFile
		$a_01_9 = {47 65 74 4b 65 79 53 74 61 74 65 } //00 00  GetKeyState
	condition:
		any of ($a_*)
 
}