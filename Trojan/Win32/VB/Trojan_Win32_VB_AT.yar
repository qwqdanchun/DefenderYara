
rule Trojan_Win32_VB_AT{
	meta:
		description = "Trojan:Win32/VB.AT,SIGNATURE_TYPE_PEHSTR_EXT,10 00 10 00 10 00 00 01 00 "
		
	strings :
		$a_00_0 = {41 00 54 00 20 00 39 00 3a 00 30 00 30 00 20 00 2f 00 69 00 6e 00 74 00 65 00 72 00 61 00 63 00 74 00 69 00 76 00 65 00 20 00 2f 00 65 00 76 00 65 00 72 00 79 00 3a 00 4d 00 2c 00 54 00 2c 00 57 00 2c 00 54 00 68 00 2c 00 46 00 2c 00 53 00 2c 00 53 00 75 00 20 00 } //01 00  AT 9:00 /interactive /every:M,T,W,Th,F,S,Su 
		$a_00_1 = {41 00 54 00 20 00 31 00 34 00 3a 00 30 00 30 00 20 00 2f 00 69 00 6e 00 74 00 65 00 72 00 61 00 63 00 74 00 69 00 76 00 65 00 20 00 2f 00 65 00 76 00 65 00 72 00 79 00 3a 00 4d 00 2c 00 54 00 2c 00 57 00 2c 00 54 00 68 00 2c 00 46 00 2c 00 53 00 2c 00 53 00 75 00 20 00 } //01 00  AT 14:00 /interactive /every:M,T,W,Th,F,S,Su 
		$a_00_2 = {46 00 75 00 63 00 6b 00 20 00 55 00 2c 00 50 00 6c 00 65 00 61 00 73 00 65 00 20 00 44 00 6f 00 6e 00 27 00 74 00 20 00 54 00 61 00 6b 00 65 00 20 00 4d 00 79 00 20 00 43 00 6c 00 6f 00 74 00 68 00 65 00 73 00 20 00 4f 00 66 00 66 00 21 00 21 00 21 00 } //01 00  Fuck U,Please Don't Take My Clothes Off!!!
		$a_01_3 = {47 65 74 4b 65 79 53 74 61 74 65 } //01 00  GetKeyState
		$a_00_4 = {6e 00 65 00 74 00 20 00 73 00 74 00 61 00 72 00 74 00 20 00 73 00 63 00 68 00 65 00 64 00 75 00 6c 00 65 00 } //01 00  net start schedule
		$a_01_5 = {53 68 65 6c 6c 45 78 65 63 75 74 65 41 } //01 00  ShellExecuteA
		$a_00_6 = {63 00 6f 00 6e 00 66 00 69 00 67 00 5c 00 49 00 6e 00 66 00 6f 00 2e 00 69 00 6e 00 69 00 } //01 00  config\Info.ini
		$a_00_7 = {64 00 6e 00 66 00 64 00 6e 00 66 00 2e 00 61 00 73 00 70 00 3f 00 6d 00 73 00 67 00 3d 00 } //01 00  dnfdnf.asp?msg=
		$a_00_8 = {73 00 76 00 63 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 } //01 00  svchost.exe
		$a_01_9 = {22 25 20 75 48 43 } //01 00  "% uHC
		$a_00_10 = {32 00 30 00 30 00 39 00 30 00 32 00 32 00 31 00 } //01 00  20090221
		$a_00_11 = {72 00 75 00 6e 00 64 00 6c 00 6c 00 33 00 32 00 2e 00 63 00 6f 00 6d 00 } //01 00  rundll32.com
		$a_00_12 = {55 00 73 00 65 00 72 00 53 00 65 00 74 00 74 00 69 00 6e 00 67 00 2e 00 69 00 6e 00 69 00 } //01 00  UserSetting.ini
		$a_00_13 = {4e 00 4f 00 21 00 4e 00 4f 00 21 00 4e 00 4f 00 21 00 } //01 00  NO!NO!NO!
		$a_01_14 = {53 65 74 57 69 6e 64 6f 77 73 48 6f 6f 6b 45 78 41 } //01 00  SetWindowsHookExA
		$a_00_15 = {4d 00 61 00 63 00 72 00 6f 00 6d 00 5c 00 53 00 63 00 68 00 65 00 54 00 69 00 6d 00 65 00 2e 00 62 00 61 00 74 00 } //00 00  Macrom\ScheTime.bat
	condition:
		any of ($a_*)
 
}