
rule Worm_Win32_Autorun_CI{
	meta:
		description = "Worm:Win32/Autorun.CI,SIGNATURE_TYPE_PEHSTR,ffffffb0 01 ffffffb0 01 0e 00 00 64 00 "
		
	strings :
		$a_01_0 = {5c 53 45 52 56 49 43 45 53 2e 45 58 45 } //64 00  \SERVICES.EXE
		$a_01_1 = {72 65 67 65 64 69 74 2e 65 78 65 20 2f 73 20 25 73 } //64 00  regedit.exe /s %s
		$a_01_2 = {25 74 65 6d 70 25 5c 6d 73 64 74 72 2e 65 78 65 } //64 00  %temp%\msdtr.exe
		$a_01_3 = {4d 53 4e 20 45 78 70 6c 6f 72 65 72 20 53 69 67 6e 75 70 } //0a 00  MSN Explorer Signup
		$a_01_4 = {49 6e 74 65 72 6e 65 74 52 65 61 64 46 69 6c 65 } //0a 00  InternetReadFile
		$a_01_5 = {63 6d 64 20 2f 63 20 6e 65 74 20 75 73 65 72 20 3e 3e } //0a 00  cmd /c net user >>
		$a_01_6 = {43 41 4e 27 54 20 46 49 4e 44 20 4d 49 43 52 4f 53 4f 46 54 } //01 00  CAN'T FIND MICROSOFT
		$a_01_7 = {53 68 6f 77 53 75 70 65 72 48 69 64 64 65 6e } //01 00  ShowSuperHidden
		$a_01_8 = {25 63 3a 5c 2a 2e 2a } //01 00  %c:\*.*
		$a_01_9 = {25 73 5c 65 78 70 6c 6f 72 65 2e 65 78 65 } //01 00  %s\explore.exe
		$a_01_10 = {25 73 5c 52 65 63 79 63 6c 65 64 5c 65 78 70 6c 6f 72 65 2e 65 78 65 } //01 00  %s\Recycled\explore.exe
		$a_01_11 = {25 73 5c 41 75 74 6f 52 75 6e 2e 69 6e 66 } //01 00  %s\AutoRun.inf
		$a_01_12 = {25 63 3a 5c 41 75 74 6f 52 75 6e 2e 69 6e 66 } //01 00  %c:\AutoRun.inf
		$a_01_13 = {43 4c 53 49 44 3d 7b 36 34 35 46 46 30 34 30 2d 35 30 38 31 2d 31 30 31 42 2d 39 46 30 38 2d 30 30 41 41 30 30 32 46 39 35 34 45 7d } //00 00  CLSID={645FF040-5081-101B-9F08-00AA002F954E}
	condition:
		any of ($a_*)
 
}