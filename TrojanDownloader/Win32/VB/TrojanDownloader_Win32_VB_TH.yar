
rule TrojanDownloader_Win32_VB_TH{
	meta:
		description = "TrojanDownloader:Win32/VB.TH,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 05 00 00 03 00 "
		
	strings :
		$a_03_0 = {c7 45 fc 06 00 00 00 8d 4d cc 89 8d 90 01 01 ff ff ff c7 85 90 01 01 ff ff ff 09 40 00 00 8d 95 90 01 01 ff ff ff 52 ff 15 90 00 } //01 00 
		$a_00_1 = {72 00 65 00 67 00 20 00 61 00 64 00 64 00 20 00 22 00 48 00 4b 00 45 00 59 00 5f 00 4c 00 4f 00 43 00 41 00 4c 00 5f 00 4d 00 41 00 43 00 48 00 49 00 4e 00 45 00 5c 00 53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 4e 00 54 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 44 00 72 00 69 00 76 00 65 00 72 00 73 00 33 00 32 00 22 00 20 00 2f 00 76 00 20 00 77 00 61 00 76 00 65 00 6d 00 61 00 70 00 70 00 65 00 72 00 20 00 2f 00 74 00 20 00 72 00 65 00 67 00 5f 00 73 00 7a 00 20 00 2f 00 64 00 20 00 22 00 6d 00 73 00 61 00 6f 00 6d 00 33 00 32 00 2e 00 64 00 72 00 76 00 22 00 20 00 2f 00 66 00 } //01 00  reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Drivers32" /v wavemapper /t reg_sz /d "msaom32.drv" /f
		$a_00_2 = {5c 00 73 00 65 00 72 00 76 00 69 00 63 00 65 00 73 00 63 00 2e 00 65 00 78 00 65 00 } //01 00  \servicesc.exe
		$a_00_3 = {65 00 72 00 72 00 2e 00 61 00 73 00 70 00 3f 00 61 00 6c 00 65 00 72 00 72 00 3d 00 73 00 75 00 62 00 3a 00 64 00 65 00 6c 00 63 00 6f 00 6f 00 6b 00 69 00 65 00 5f 00 5f 00 65 00 72 00 72 00 6e 00 62 00 3a 00 } //01 00  err.asp?alerr=sub:delcookie__errnb:
		$a_00_4 = {2f 00 74 00 65 00 73 00 74 00 2f 00 74 00 64 00 2e 00 61 00 73 00 70 00 3f 00 69 00 64 00 3d 00 } //00 00  /test/td.asp?id=
	condition:
		any of ($a_*)
 
}