
rule TrojanDownloader_Win32_Banload_DY{
	meta:
		description = "TrojanDownloader:Win32/Banload.DY,SIGNATURE_TYPE_PEHSTR_EXT,35 00 35 00 06 00 00 1e 00 "
		
	strings :
		$a_00_0 = {53 4f 46 54 57 41 52 45 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 5c 52 54 4c } //0a 00  SOFTWARE\Borland\Delphi\RTL
		$a_02_1 = {20 2d 20 43 6c 69 71 75 65 20 4f 4b 20 70 61 72 61 20 70 72 6f 73 73 65 67 75 69 72 21 90 05 04 01 00 63 3a 5c 41 72 71 75 69 76 6f 73 20 64 65 20 70 72 6f 67 72 61 6d 61 73 5c 49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 5c 49 45 58 50 4c 4f 52 45 2e 45 58 45 20 68 74 74 70 3a 2f 2f 90 00 } //0a 00 
		$a_02_2 = {55 8b ec 83 c4 e8 33 c0 89 45 e8 89 45 ec b8 90 01 04 e8 90 01 04 33 c0 55 68 90 01 04 64 ff 30 64 89 20 b8 90 01 04 e8 90 01 04 6a 01 68 90 01 04 e8 90 01 04 ba 90 01 04 b8 90 01 04 e8 90 01 04 84 c0 74 90 01 01 6a 00 b8 90 00 } //01 00 
		$a_01_3 = {53 65 74 57 69 6e 64 6f 77 73 48 6f 6f 6b 45 78 41 } //01 00  SetWindowsHookExA
		$a_00_4 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //01 00  URLDownloadToFileA
		$a_00_5 = {57 69 6e 45 78 65 63 } //00 00  WinExec
	condition:
		any of ($a_*)
 
}