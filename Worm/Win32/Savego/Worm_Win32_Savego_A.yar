
rule Worm_Win32_Savego_A{
	meta:
		description = "Worm:Win32/Savego.A,SIGNATURE_TYPE_PEHSTR,0c 00 0c 00 0e 00 00 01 00 "
		
	strings :
		$a_01_0 = {40 45 43 48 4f 20 4f 46 46 } //01 00  @ECHO OFF
		$a_01_1 = {3a 52 65 70 65 61 74 } //01 00  :Repeat
		$a_01_2 = {44 45 4c 20 22 43 3a 5c 6d 79 61 70 70 2e 65 78 65 } //01 00  DEL "C:\myapp.exe
		$a_01_3 = {50 69 6e 67 20 30 2e 30 2e 30 2e 30 } //01 00  Ping 0.0.0.0
		$a_01_4 = {49 46 20 45 58 49 53 54 20 22 43 3a 5c 6d 79 61 70 70 2e 65 78 65 22 20 47 4f 54 4f 20 52 65 70 65 61 74 } //01 00  IF EXIST "C:\myapp.exe" GOTO Repeat
		$a_01_5 = {44 45 4c 20 22 25 30 22 } //01 00  DEL "%0"
		$a_01_6 = {66 6f 6f 2e 63 6f 6d } //01 00  foo.com
		$a_01_7 = {25 73 4e 4c 25 69 25 69 25 69 2e 62 61 74 } //01 00  %sNL%i%i%i.bat
		$a_01_8 = {6e 65 74 20 73 74 61 72 74 20 22 53 79 6d 61 6e 74 65 63 20 41 6e 74 69 56 69 72 75 73 22 } //01 00  net start "Symantec AntiVirus"
		$a_01_9 = {41 67 65 6e 74 49 50 50 6f 72 74 } //01 00  AgentIPPort
		$a_01_10 = {53 4f 46 54 57 41 52 45 5c 49 6e 74 65 6c 5c 4c 41 4e 44 65 73 6b 5c 56 69 72 75 73 50 72 6f 74 65 63 74 36 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e } //01 00  SOFTWARE\Intel\LANDesk\VirusProtect6\CurrentVersion
		$a_01_11 = {6e 65 74 20 73 74 6f 70 20 53 68 61 72 65 64 41 63 63 65 73 73 } //01 00  net stop SharedAccess
		$a_01_12 = {25 73 5c 77 69 6e 73 5c 73 76 63 68 6f 73 74 2e 65 78 65 } //01 00  %s\wins\svchost.exe
		$a_01_13 = {6e 65 74 20 73 74 61 72 74 20 22 53 79 6d 61 6e 74 65 63 20 41 6e 74 69 56 69 72 75 73 } //00 00  net start "Symantec AntiVirus
	condition:
		any of ($a_*)
 
}