
rule TrojanDownloader_Win32_Pusrac_A{
	meta:
		description = "TrojanDownloader:Win32/Pusrac.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {b8 68 00 00 00 90 02 20 b8 74 00 00 00 90 02 20 b8 74 00 00 00 90 02 20 b8 70 00 00 00 90 02 20 b8 3a 00 00 00 90 02 20 b8 2f 00 00 00 90 02 20 b8 2f 00 00 00 90 02 20 b8 77 00 00 00 90 02 20 b8 77 00 00 00 90 02 20 b8 77 00 00 00 90 02 20 b8 2e 00 00 00 90 02 20 b8 66 00 00 00 90 00 } //01 00 
		$a_03_1 = {b8 61 00 00 00 90 02 20 b8 73 00 00 00 90 02 20 b8 74 00 00 00 90 02 20 b8 6d 00 00 00 90 02 20 b8 70 00 00 00 90 02 20 b8 33 00 00 00 90 02 20 b8 73 00 00 00 90 02 20 b8 65 00 00 00 90 02 20 b8 61 00 00 00 90 02 20 b8 72 00 00 00 90 02 20 b8 63 00 00 00 90 02 20 b8 68 00 00 00 90 02 20 b8 2e 00 00 00 90 02 20 b8 63 00 00 00 90 02 20 b8 6f 00 00 00 90 02 20 b8 6d 00 00 00 90 02 20 b8 2e 00 00 00 90 02 20 b8 61 00 00 00 90 02 20 b8 72 90 00 } //01 00 
		$a_00_2 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //01 00  URLDownloadToFileA
		$a_00_3 = {53 68 65 6c 6c 45 78 65 63 75 74 65 45 78 41 } //00 00  ShellExecuteExA
	condition:
		any of ($a_*)
 
}