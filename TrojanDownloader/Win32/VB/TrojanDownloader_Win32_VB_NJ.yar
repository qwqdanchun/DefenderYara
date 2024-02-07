
rule TrojanDownloader_Win32_VB_NJ{
	meta:
		description = "TrojanDownloader:Win32/VB.NJ,SIGNATURE_TYPE_PEHSTR_EXT,06 00 05 00 06 00 00 01 00 "
		
	strings :
		$a_00_0 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //01 00  URLDownloadToFileA
		$a_01_1 = {5b 00 73 00 70 00 6c 00 69 00 74 00 5d 00 00 00 0e 00 00 00 5b 00 73 00 74 00 61 00 72 00 74 00 5d 00 } //01 00 
		$a_00_2 = {77 00 69 00 6e 00 00 00 0c 00 00 00 77 00 69 00 6e 00 64 00 69 00 72 00 } //01 00 
		$a_00_3 = {64 00 65 00 6c 00 20 00 61 00 2e 00 62 00 61 00 74 00 } //01 00  del a.bat
		$a_00_4 = {56 00 69 00 73 00 75 00 61 00 6c 00 20 00 42 00 61 00 73 00 69 00 63 00 5c 00 44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 65 00 72 00 20 00 45 00 78 00 61 00 6d 00 70 00 6c 00 65 00 5c 00 53 00 74 00 75 00 62 00 2e 00 76 00 62 00 70 00 } //01 00  Visual Basic\Downloader Example\Stub.vbp
		$a_00_5 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //00 00  MSVBVM60.DLL
	condition:
		any of ($a_*)
 
}