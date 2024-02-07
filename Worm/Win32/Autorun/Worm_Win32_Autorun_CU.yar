
rule Worm_Win32_Autorun_CU{
	meta:
		description = "Worm:Win32/Autorun.CU,SIGNATURE_TYPE_PEHSTR,16 00 16 00 0e 00 00 0a 00 "
		
	strings :
		$a_01_0 = {73 74 61 72 74 20 57 4f 52 4e 49 4e 47 2e 74 78 74 } //0a 00  start WORNING.txt
		$a_01_1 = {74 69 74 6c 65 20 59 4f 55 20 41 52 45 20 44 45 41 44 } //01 00  title YOU ARE DEAD
		$a_01_2 = {6e 65 74 20 73 74 6f 70 20 73 68 61 72 65 64 61 63 63 65 73 73 20 3e 6e 75 6c } //01 00  net stop sharedaccess >nul
		$a_01_3 = {63 6f 70 79 20 25 30 20 25 77 69 6e 64 69 72 25 5c 73 79 73 74 65 6d 33 32 5c 63 6d 64 2e 62 61 74 } //01 00  copy %0 %windir%\system32\cmd.bat
		$a_01_4 = {25 73 25 20 2f 69 6d 20 61 76 2a 20 2f 66 20 3e 6e 75 6c } //01 00  %s% /im av* /f >nul
		$a_01_5 = {25 73 25 20 2f 69 6d 20 61 6e 74 69 2a 20 2f 66 20 3e 6e 75 6c } //01 00  %s% /im anti* /f >nul
		$a_01_6 = {25 73 25 20 2f 69 6d 20 73 70 79 2a 20 2f 66 20 3e 6e 75 6c } //01 00  %s% /im spy* /f >nul
		$a_01_7 = {66 6f 72 20 25 25 61 20 69 6e 20 28 63 20 25 61 6c 6c 64 72 69 76 65 25 29 20 64 6f 20 64 65 6c 20 25 25 61 3a 5c } //01 00  for %%a in (c %alldrive%) do del %%a:\
		$a_01_8 = {6e 65 74 20 75 73 65 72 20 61 64 6d 69 6e 69 73 74 72 61 74 6f 72 20 31 32 33 34 35 36 20 3e 6e 75 6c } //01 00  net user administrator 123456 >nul
		$a_01_9 = {66 6f 72 20 25 25 63 20 69 6e 20 28 63 20 25 61 6c 6c 64 72 69 76 65 25 29 20 64 6f 20 64 65 6c 20 25 25 63 3a 5c 2a 2e 67 68 6f 20 2f 66 20 2f 73 20 2f 71 20 3e 6e 75 6c } //01 00  for %%c in (c %alldrive%) do del %%c:\*.gho /f /s /q >nul
		$a_01_10 = {65 63 68 6f 20 5b 77 69 6e 64 6f 77 73 5d 20 3e 3e 20 25 77 69 6e 64 69 72 25 5c 77 69 6e 2e 69 6e 69 } //01 00  echo [windows] >> %windir%\win.ini
		$a_01_11 = {65 63 68 6f 20 5b 62 6f 6f 74 5d 20 3e 3e 20 25 77 69 6e 64 69 72 25 5c 73 79 73 74 65 6d 2e 69 6e 69 } //01 00  echo [boot] >> %windir%\system.ini
		$a_01_12 = {63 6f 70 79 20 25 30 20 25 73 79 73 74 65 6d 72 6f 6f 74 25 5c 77 69 6e 64 6f 77 73 2e 62 61 74 20 3e 6e 75 6c } //01 00  copy %0 %systemroot%\windows.bat >nul
		$a_01_13 = {63 6f 70 79 20 25 30 20 25 77 69 6e 64 69 72 25 5c 73 79 73 74 65 6d 33 32 5c 6c 6f 67 6f 6e 2e 62 61 74 } //00 00  copy %0 %windir%\system32\logon.bat
	condition:
		any of ($a_*)
 
}