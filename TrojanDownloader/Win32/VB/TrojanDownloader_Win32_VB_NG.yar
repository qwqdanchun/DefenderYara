
rule TrojanDownloader_Win32_VB_NG{
	meta:
		description = "TrojanDownloader:Win32/VB.NG,SIGNATURE_TYPE_PEHSTR_EXT,2a 00 2a 00 07 00 00 02 00 "
		
	strings :
		$a_00_0 = {43 00 3a 00 5c 00 57 00 49 00 4e 00 44 00 4f 00 57 00 53 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 61 00 6c 00 67 00 63 00 73 00 2e 00 65 00 78 00 65 00 } //01 00  C:\WINDOWS\system32\algcs.exe
		$a_00_1 = {76 69 64 65 6f 5f 61 6d 61 64 6f 72 } //01 00  video_amador
		$a_02_2 = {43 00 3a 00 5c 00 41 00 72 00 71 00 75 00 69 00 76 00 6f 00 73 00 20 00 64 00 65 00 20 00 70 00 72 00 6f 00 67 00 72 00 61 00 6d 00 61 00 73 00 5c 00 90 02 14 2e 00 65 00 78 00 65 00 90 00 } //0a 00 
		$a_00_3 = {43 00 6c 00 65 00 6d 00 69 00 73 00 2d 00 47 00 61 00 79 00 5c 00 50 00 72 00 6f 00 79 00 65 00 63 00 74 00 6f 00 } //0a 00  Clemis-Gay\Proyecto
		$a_00_4 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //0a 00  URLDownloadToFileA
		$a_00_5 = {4c 6f 61 64 45 58 45 } //0a 00  LoadEXE
		$a_00_6 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //00 00  MSVBVM60.DLL
	condition:
		any of ($a_*)
 
}