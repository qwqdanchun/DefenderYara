
rule Trojan_Win32_Darksma_C{
	meta:
		description = "Trojan:Win32/Darksma.C,SIGNATURE_TYPE_PEHSTR_EXT,1d 00 18 00 1a 00 00 01 00 "
		
	strings :
		$a_00_0 = {43 3a 5c 57 49 4e 44 4f 57 53 5c 53 59 53 54 45 4d 33 32 5c 73 68 64 6f 63 76 73 2e 64 6c 6c } //01 00  C:\WINDOWS\SYSTEM32\shdocvs.dll
		$a_00_1 = {43 4c 53 49 44 5c 7b 30 30 30 30 39 45 39 46 2d 44 44 44 37 2d 41 41 35 39 2d 41 41 37 44 2d 41 41 34 42 37 44 36 42 45 30 30 30 7d 5c 49 6e 70 72 6f 63 53 65 72 76 65 72 } //01 00  CLSID\{00009E9F-DDD7-AA59-AA7D-AA4B7D6BE000}\InprocServer
		$a_00_2 = {43 4c 53 49 44 5c 7b 30 30 30 30 39 45 39 46 2d 44 44 44 37 2d 41 41 35 39 2d 41 41 37 44 2d 41 41 34 42 37 44 36 42 45 30 30 30 7d 5c 50 72 6f 67 49 44 } //01 00  CLSID\{00009E9F-DDD7-AA59-AA7D-AA4B7D6BE000}\ProgID
		$a_00_3 = {43 4c 53 49 44 5c 7b 30 30 30 30 39 45 39 46 2d 44 44 44 37 2d 41 41 35 39 2d 41 41 37 44 2d 41 41 34 42 37 44 36 42 45 30 30 30 7d 5c 54 79 70 65 4c 69 62 } //01 00  CLSID\{00009E9F-DDD7-AA59-AA7D-AA4B7D6BE000}\TypeLib
		$a_00_4 = {43 4c 53 49 44 5c 7b 30 30 30 30 39 45 39 46 2d 44 44 44 37 2d 41 41 35 39 2d 41 41 37 44 2d 41 41 34 42 37 44 36 42 45 30 30 30 7d 5c 56 65 72 73 69 6f 6e 49 6e 64 65 70 65 6e 64 65 6e 74 50 72 6f 67 49 44 } //01 00  CLSID\{00009E9F-DDD7-AA59-AA7D-AA4B7D6BE000}\VersionIndependentProgID
		$a_00_5 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 45 78 70 6c 6f 72 65 72 5c 42 72 6f 77 73 65 72 20 48 65 6c 70 65 72 20 4f 62 6a 65 63 74 73 5c 7b 30 30 30 30 39 45 39 46 2d 44 44 44 37 2d 41 41 35 39 2d 41 41 37 44 2d 41 41 34 42 37 44 36 42 45 30 30 30 7d } //01 00  SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Browser Helper Objects\{00009E9F-DDD7-AA59-AA7D-AA4B7D6BE000}
		$a_00_6 = {63 6f 6d 63 73 33 32 6d 2e 64 6c 6c } //01 00  comcs32m.dll
		$a_00_7 = {63 6f 6d 63 73 33 32 75 2e 64 6c 6c } //01 00  comcs32u.dll
		$a_00_8 = {73 68 64 6f 63 76 73 2e 64 6c 6c } //01 00  shdocvs.dll
		$a_00_9 = {53 45 41 52 43 48 5f 43 4f 4e 46 49 47 5f 4d 41 49 4e } //01 00  SEARCH_CONFIG_MAIN
		$a_00_10 = {53 45 41 52 43 48 5f 43 4f 4e 46 49 47 5f 55 50 44 41 54 45 } //01 00  SEARCH_CONFIG_UPDATE
		$a_00_11 = {53 68 65 6c 6c 20 44 6f 63 20 4f 62 6a 65 63 74 } //01 00  Shell Doc Object
		$a_00_12 = {43 6f 6e 74 72 6f 6c 20 48 65 6c 70 65 72 20 43 6c 61 73 73 } //01 00  Control Helper Class
		$a_00_13 = {43 72 65 61 74 65 46 69 6c 65 41 } //01 00  CreateFileA
		$a_00_14 = {44 65 6c 65 74 65 46 69 6c 65 41 } //01 00  DeleteFileA
		$a_00_15 = {66 69 6c 65 20 25 73 2c 20 6c 69 6e 65 20 25 64 } //01 00  file %s, line %d
		$a_00_16 = {66 77 72 69 74 65 } //01 00  fwrite
		$a_00_17 = {47 65 74 43 6f 6d 6d 61 6e 64 4c 69 6e 65 41 } //01 00  GetCommandLineA
		$a_01_18 = {47 65 74 53 79 73 74 65 6d 44 69 72 65 63 74 6f 72 79 41 } //01 00  GetSystemDirectoryA
		$a_00_19 = {4f 75 74 2f 49 6e 3a 20 25 2e 33 66 } //01 00  Out/In: %.3f
		$a_00_20 = {4f 75 74 3a 20 25 6c 64 20 62 79 74 65 73 } //01 00  Out: %ld bytes
		$a_00_21 = {52 65 67 43 72 65 61 74 65 4b 65 79 41 } //01 00  RegCreateKeyA
		$a_00_22 = {52 65 67 53 65 74 56 61 6c 75 65 45 78 41 } //01 00  RegSetValueExA
		$a_00_23 = {53 68 65 6c 6c 45 78 65 63 75 74 65 41 } //01 00  ShellExecuteA
		$a_00_24 = {73 70 6f 6f 6c 65 77 2e 65 78 65 } //05 00  spoolew.exe
		$a_02_25 = {8d 45 fc 50 ff 75 90 01 01 ff 75 90 01 02 ff 15 38 20 40 00 90 01 01 ff 15 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}