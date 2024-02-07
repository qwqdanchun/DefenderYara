
rule Trojan_Win32_Gewder_A{
	meta:
		description = "Trojan:Win32/Gewder.A,SIGNATURE_TYPE_PEHSTR,10 00 0f 00 0d 00 00 02 00 "
		
	strings :
		$a_01_0 = {2e 65 78 69 74 00 2f 72 6f 62 6f 74 73 2e 74 78 74 } //02 00 
		$a_01_1 = {5c 30 78 30 30 6c 61 73 74 5f 64 6f 77 6e 6c 6f 61 64 5f 69 64 } //02 00  \0x00last_download_id
		$a_01_2 = {5f 69 64 00 61 75 74 6f 75 70 64 61 74 65 5f } //02 00 
		$a_01_3 = {5f 69 64 00 64 65 73 69 67 6e 74 65 6d 70 5f } //02 00 
		$a_01_4 = {5f 00 53 6f 66 74 77 61 72 65 5c 4f 44 42 43 } //02 00 
		$a_01_5 = {53 6b 46 39 78 33 78 2e } //02 00  SkF9x3x.
		$a_01_6 = {2e 63 6f 6d 00 2e 65 78 65 00 5c } //01 00 
		$a_01_7 = {2e 74 78 74 00 68 74 74 70 3a 2f 2f 00 } //01 00 
		$a_01_8 = {47 65 74 57 69 6e 64 6f 77 73 44 69 72 65 63 74 6f 72 79 41 } //01 00  GetWindowsDirectoryA
		$a_01_9 = {4f 70 65 6e 4d 75 74 65 78 41 } //01 00  OpenMutexA
		$a_01_10 = {47 65 74 54 69 63 6b 43 6f 75 6e 74 } //01 00  GetTickCount
		$a_01_11 = {52 65 67 44 65 6c 65 74 65 56 61 6c 75 65 41 } //01 00  RegDeleteValueA
		$a_01_12 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //00 00  URLDownloadToFileA
	condition:
		any of ($a_*)
 
}