
rule Trojan_Win32_Refpron_E{
	meta:
		description = "Trojan:Win32/Refpron.E,SIGNATURE_TYPE_PEHSTR_EXT,ffffff8e 00 ffffff8c 00 11 00 00 64 00 "
		
	strings :
		$a_00_0 = {66 69 c0 6d ce 66 05 bf 58 66 89 45 f0 } //0a 00 
		$a_00_1 = {4e 65 65 64 53 65 6e 64 50 72 6f 63 65 73 73 4c 69 73 74 } //0a 00  NeedSendProcessList
		$a_00_2 = {44 69 73 61 62 6c 65 53 63 72 69 70 74 44 65 62 75 67 67 65 72 49 45 } //0a 00  DisableScriptDebuggerIE
		$a_00_3 = {37 34 2e 35 34 2e 32 30 31 2e 32 31 30 } //05 00  74.54.201.210
		$a_00_4 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //05 00  URLDownloadToFileA
		$a_00_5 = {44 65 6c 65 74 65 55 72 6c 43 61 63 68 65 45 6e 74 72 79 } //05 00  DeleteUrlCacheEntry
		$a_00_6 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 42 45 4d } //05 00  SOFTWARE\Microsoft\WBEM
		$a_00_7 = {74 78 74 66 69 6c 65 5c 73 68 65 6c 6c 5c 6f 70 65 6e 5c 63 6f 6d 6d 61 6e 64 } //05 00  txtfile\shell\open\command
		$a_00_8 = {72 74 6c 36 30 2e 62 70 6c } //05 00  rtl60.bpl
		$a_00_9 = {72 74 6c 36 30 2e 62 69 6e } //01 00  rtl60.bin
		$a_00_10 = {64 69 73 63 6f 76 65 72 2e 65 78 65 } //01 00  discover.exe
		$a_00_11 = {6d 73 72 73 74 61 72 74 2e 65 78 65 } //01 00  msrstart.exe
		$a_00_12 = {6e 78 74 65 70 61 64 2e 65 78 65 } //01 00  nxtepad.exe
		$a_02_13 = {63 3a 5c 74 65 6d 70 5c 6d 74 61 90 02 08 2e 64 6c 6c 90 00 } //01 00 
		$a_00_14 = {64 69 63 74 73 64 33 32 2e 73 79 73 } //01 00  dictsd32.sys
		$a_00_15 = {63 6f 6d 73 61 33 32 2e 73 79 73 } //01 00  comsa32.sys
		$a_00_16 = {46 49 6e 73 74 61 6c 6c 2e 73 79 73 } //00 00  FInstall.sys
	condition:
		any of ($a_*)
 
}