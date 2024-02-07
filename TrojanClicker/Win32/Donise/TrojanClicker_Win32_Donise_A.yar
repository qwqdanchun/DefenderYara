
rule TrojanClicker_Win32_Donise_A{
	meta:
		description = "TrojanClicker:Win32/Donise.A,SIGNATURE_TYPE_PEHSTR_EXT,24 00 1a 00 24 00 00 04 00 "
		
	strings :
		$a_00_0 = {3c 01 77 f7 80 3f 01 75 f2 8b 07 8a 5f 04 66 c1 e8 08 c1 c0 10 86 c4 29 f8 80 eb e8 01 f0 ab 47 89 d8 e2 dc } //01 00 
		$a_00_1 = {53 4f 43 4b 33 32 2e 64 6c 6c } //01 00  SOCK32.dll
		$a_00_2 = {38 35 43 42 36 39 30 30 2d 34 44 39 35 2d 31 31 43 46 2d 39 36 30 43 2d 30 30 38 30 43 37 46 34 45 45 38 35 } //01 00  85CB6900-4D95-11CF-960C-0080C7F4EE85
		$a_00_3 = {43 4d 44 2e 45 58 45 } //01 00  CMD.EXE
		$a_00_4 = {43 4f 4d 53 50 45 43 } //01 00  COMSPEC
		$a_00_5 = {25 73 20 2f 63 20 25 73 20 22 25 73 22 } //01 00  %s /c %s "%s"
		$a_00_6 = {64 65 6c 20 25 30 } //01 00  del %0
		$a_00_7 = {69 66 20 65 78 69 73 74 20 25 31 20 67 6f 74 6f 20 61 } //01 00  if exist %1 goto a
		$a_00_8 = {64 65 6c 20 25 31 } //01 00  del %1
		$a_00_9 = {40 65 63 68 6f 20 6f 66 66 } //01 00  @echo off
		$a_00_10 = {74 65 6d 70 5f 25 64 2e 62 61 74 } //01 00  temp_%d.bat
		$a_00_11 = {5c 2a 2e 74 78 74 } //01 00  \*.txt
		$a_00_12 = {43 6f 6f 6b 69 65 73 } //01 00  Cookies
		$a_00_13 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 45 78 70 6c 6f 72 65 72 5c 53 68 65 6c 6c 20 46 6f 6c 64 65 72 73 } //01 00  Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders
		$a_00_14 = {4e 4e 49 45 78 70 6c 6f 72 65 } //01 00  NNIExplore
		$a_00_15 = {41 70 70 45 76 65 6e 74 73 5c 53 63 68 65 6d 65 73 5c 41 70 70 73 5c 45 78 70 6c 6f 72 65 72 5c 4e 61 76 69 67 61 74 69 6e 67 5c 2e 63 75 72 72 65 6e 74 } //01 00  AppEvents\Schemes\Apps\Explorer\Navigating\.current
		$a_00_16 = {6c 69 6e 6b 72 75 6e 6e 65 72 } //01 00  linkrunner
		$a_01_17 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //01 00  WriteProcessMemory
		$a_01_18 = {52 65 61 64 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //01 00  ReadProcessMemory
		$a_00_19 = {47 65 74 53 74 61 72 74 75 70 49 6e 66 6f 41 } //01 00  GetStartupInfoA
		$a_01_20 = {43 72 65 61 74 65 54 68 72 65 61 64 } //01 00  CreateThread
		$a_00_21 = {46 69 6e 64 46 69 72 73 74 46 69 6c 65 41 } //01 00  FindFirstFileA
		$a_00_22 = {44 65 6c 65 74 65 46 69 6c 65 41 } //01 00  DeleteFileA
		$a_00_23 = {46 69 6e 64 4e 65 78 74 46 69 6c 65 41 } //01 00  FindNextFileA
		$a_00_24 = {43 72 65 61 74 65 50 72 6f 63 65 73 73 41 } //01 00  CreateProcessA
		$a_00_25 = {47 65 74 53 74 6f 63 6b 4f 62 6a 65 63 74 } //01 00  GetStockObject
		$a_00_26 = {77 63 73 74 6f 6d 62 73 } //01 00  wcstombs
		$a_00_27 = {47 65 74 4b 65 79 62 6f 61 72 64 4c 61 79 6f 75 74 4c 69 73 74 } //01 00  GetKeyboardLayoutList
		$a_00_28 = {50 6f 73 74 51 75 69 74 4d 65 73 73 61 67 65 } //01 00  PostQuitMessage
		$a_00_29 = {47 65 74 43 6c 69 65 6e 74 52 65 63 74 } //01 00  GetClientRect
		$a_00_30 = {50 6f 73 74 4d 65 73 73 61 67 65 41 } //01 00  PostMessageA
		$a_01_31 = {49 6e 74 65 72 6e 65 74 4f 70 65 6e 55 72 6c 41 } //01 00  InternetOpenUrlA
		$a_01_32 = {49 6e 74 65 72 6e 65 74 52 65 61 64 46 69 6c 65 } //01 00  InternetReadFile
		$a_00_33 = {3a 24 3a 2a 3a 31 3a 3a 3a 42 3a 49 3a 54 3a 5a 3a 60 3a 6a 3a 70 3a 76 3a } //01 00  :$:*:1:::B:I:T:Z:`:j:p:v:
		$a_00_34 = {3d 45 3d 4d 3d 62 3d 6d 3d } //01 00  =E=M=b=m=
		$a_00_35 = {3d 48 3d 52 3d 61 3d 6b 3d 78 3d } //00 00  =H=R=a=k=x=
	condition:
		any of ($a_*)
 
}