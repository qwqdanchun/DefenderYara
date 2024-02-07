
rule TrojanSpy_Win32_Delf_HK{
	meta:
		description = "TrojanSpy:Win32/Delf.HK,SIGNATURE_TYPE_PEHSTR,17 00 17 00 17 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 4f 46 54 57 41 52 45 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 5c 52 54 4c } //01 00  SOFTWARE\Borland\Delphi\RTL
		$a_01_1 = {45 78 65 4d 75 74 65 78 5f 41 44 53 41 4c } //01 00  ExeMutex_ADSAL
		$a_01_2 = {44 6c 6c 4d 75 74 65 78 5f 41 44 53 41 4c } //01 00  DllMutex_ADSAL
		$a_01_3 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 45 78 70 6c 6f 72 65 72 5c 53 68 65 6c 6c 45 78 65 63 75 74 65 48 6f 6f 6b 73 } //01 00  SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ShellExecuteHooks
		$a_01_4 = {53 59 53 54 45 4d 5c 43 75 72 72 65 6e 74 43 6f 6e 74 72 6f 6c 53 65 74 5c 53 65 72 76 69 63 65 73 5c } //01 00  SYSTEM\CurrentControlSet\Services\
		$a_01_5 = {53 6f 66 74 57 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //01 00  SoftWare\Microsoft\Windows\CurrentVersion\Run
		$a_01_6 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 50 6f 6c 69 63 69 65 73 5c 45 78 70 6c 6f 72 65 72 5c 52 75 6e } //01 00  Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\Run
		$a_01_7 = {3a 5c 50 72 6f 67 72 61 6d 20 46 69 6c 65 73 5c 43 6f 6d 6d 6f 6e 20 46 69 6c 65 73 5c 53 59 53 54 45 4d 5c } //01 00  :\Program Files\Common Files\SYSTEM\
		$a_01_8 = {5c 49 6e 70 72 6f 63 53 65 72 76 65 72 33 32 } //01 00  \InprocServer32
		$a_01_9 = {61 64 73 61 6c 2e 64 61 74 } //01 00  adsal.dat
		$a_01_10 = {61 64 73 61 6c 2e 64 6c 6c } //01 00  adsal.dll
		$a_01_11 = {4e 65 74 57 6f 72 6b 4c 6f 67 6f 6e } //01 00  NetWorkLogon
		$a_01_12 = {53 65 72 76 69 63 65 34 30 30 35 33 38 31 } //01 00  Service4005381
		$a_01_13 = {7b 44 31 38 45 33 33 36 44 2d 38 43 35 38 2d 30 36 31 35 2d 38 31 33 33 2d 45 36 42 36 30 31 31 32 41 41 30 36 7d } //01 00  {D18E336D-8C58-0615-8133-E6B60112AA06}
		$a_01_14 = {7b 42 31 30 33 34 33 42 44 2d 31 44 43 36 2d 34 34 32 66 2d 39 42 41 32 2d 44 34 34 43 37 30 38 43 45 45 38 33 7d } //01 00  {B10343BD-1DC6-442f-9BA2-D44C708CEE83}
		$a_01_15 = {7b 31 41 34 30 34 36 38 35 2d 37 35 36 33 2d 34 64 30 32 2d 42 30 46 36 2d 35 38 42 33 30 38 41 34 30 36 41 39 7d } //01 00  {1A404685-7563-4d02-B0F6-58B308A406A9}
		$a_01_16 = {7b 39 41 30 43 46 43 35 38 2d 35 41 36 46 2d 34 31 62 61 2d 39 46 46 45 2d 34 33 32 30 46 34 46 36 32 31 42 41 7d } //01 00  {9A0CFC58-5A6F-41ba-9FFE-4320F4F621BA}
		$a_01_17 = {7b 36 45 34 34 38 38 37 46 2d 35 32 31 34 2d 34 31 46 32 2d 41 42 34 36 2d 34 37 32 38 37 33 35 43 34 43 43 36 7d } //01 00  {6E44887F-5214-41F2-AB46-4728735C4CC6}
		$a_01_18 = {50 72 6f 62 61 62 6c 65 20 72 65 61 73 6f 6e 20 69 73 20 74 68 61 74 20 61 6e 6f 74 68 65 72 20 64 61 65 6d 6f 6e 20 69 73 20 61 6c 72 65 61 64 79 20 72 75 6e 6e 69 6e 67 20 6f 6e 20 74 68 65 20 73 61 6d 65 20 70 6f 72 74 } //01 00  Probable reason is that another daemon is already running on the same port
		$a_01_19 = {50 72 6f 78 79 20 41 75 74 68 65 6e 74 69 63 61 74 69 6f 6e 20 52 65 71 75 69 72 65 64 } //01 00  Proxy Authentication Required
		$a_01_20 = {61 63 63 65 73 73 5f 6c 6f 67 } //01 00  access_log
		$a_01_21 = {46 69 6e 64 45 78 65 63 75 74 61 62 6c 65 41 } //01 00  FindExecutableA
		$a_01_22 = {67 65 74 68 6f 73 74 62 79 61 64 64 72 } //00 00  gethostbyaddr
	condition:
		any of ($a_*)
 
}