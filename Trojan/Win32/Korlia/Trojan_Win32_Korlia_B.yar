
rule Trojan_Win32_Korlia_B{
	meta:
		description = "Trojan:Win32/Korlia.B,SIGNATURE_TYPE_PEHSTR_EXT,23 00 23 00 0b 00 00 0a 00 "
		
	strings :
		$a_00_0 = {b8 68 58 4d 56 bb 00 00 00 00 b9 0a 00 00 00 ba 58 56 00 00 ed 81 fb 68 58 4d 56 } //0a 00 
		$a_00_1 = {62 69 73 6f 6e 61 6c } //0a 00  bisonal
		$a_00_2 = {20 4f 53 3a 25 73 73 70 25 64 20 76 6d 3a 25 73 20 70 72 6f 78 79 3a 25 73 } //01 00   OS:%ssp%d vm:%s proxy:%s
		$a_00_3 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //01 00  URLDownloadToFileA
		$a_00_4 = {53 68 65 6c 6c 45 78 65 63 75 74 65 41 } //01 00  ShellExecuteA
		$a_00_5 = {49 6e 74 65 72 6e 65 74 4f 70 65 6e 55 72 6c 41 } //01 00  InternetOpenUrlA
		$a_02_6 = {68 74 74 70 3a 2f 2f 90 02 10 2f 6a 70 2f 6e 65 77 73 90 01 01 2e 61 73 70 90 00 } //01 00 
		$a_02_7 = {68 74 74 70 3a 2f 2f 90 02 10 2f 6a 70 2f 73 6f 66 74 90 01 01 2e 72 61 72 90 00 } //01 00 
		$a_00_8 = {25 73 3f 69 64 3d 25 73 } //02 00  %s?id=%s
		$a_00_9 = {74 00 61 00 73 00 6b 00 68 00 6f 00 73 00 74 00 } //02 00  taskhost
		$a_00_10 = {57 00 49 00 4e 00 44 00 4f 00 57 00 53 00 5c 00 74 00 61 00 73 00 6b 00 73 00 5c 00 6c 00 73 00 61 00 73 00 73 00 2e 00 65 00 78 00 65 00 } //00 00  WINDOWS\tasks\lsass.exe
	condition:
		any of ($a_*)
 
}