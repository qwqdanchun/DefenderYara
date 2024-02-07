
rule TrojanDownloader_Win32_FakeMSA_gen_B{
	meta:
		description = "TrojanDownloader:Win32/FakeMSA.gen!B,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 20 00 53 00 65 00 63 00 75 00 72 00 69 00 74 00 79 00 20 00 41 00 64 00 76 00 69 00 73 00 65 00 72 00 } //01 00  Microsoft Security Adviser
		$a_00_1 = {77 00 65 00 62 00 62 00 72 00 6f 00 77 00 73 00 65 00 72 00 33 00 2e 00 65 00 78 00 65 00 } //01 00  webbrowser3.exe
		$a_00_2 = {79 00 6f 00 75 00 72 00 74 00 68 00 75 00 6d 00 62 00 6e 00 61 00 69 00 6c 00 73 00 2e 00 63 00 6f 00 6d 00 2f 00 3f 00 69 00 64 00 3d 00 } //01 00  yourthumbnails.com/?id=
		$a_00_3 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //01 00  SOFTWARE\Microsoft\Windows\CurrentVersion\Run
		$a_01_4 = {49 6e 74 65 72 6e 65 74 52 65 61 64 46 69 6c 65 } //01 00  InternetReadFile
		$a_00_5 = {48 74 74 70 4f 70 65 6e 52 65 71 75 65 73 74 41 } //01 00  HttpOpenRequestA
		$a_00_6 = {46 74 70 50 75 74 46 69 6c 65 41 } //00 00  FtpPutFileA
	condition:
		any of ($a_*)
 
}