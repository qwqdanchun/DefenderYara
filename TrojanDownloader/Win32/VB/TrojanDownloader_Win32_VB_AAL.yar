
rule TrojanDownloader_Win32_VB_AAL{
	meta:
		description = "TrojanDownloader:Win32/VB.AAL,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_00_0 = {5c 00 44 00 65 00 73 00 6b 00 74 00 6f 00 70 00 5c 00 47 00 68 00 30 00 73 00 74 00 6c 00 79 00 20 00 44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 65 00 72 00 20 00 32 00 2e 00 30 00 5c 00 44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 65 00 72 00 20 00 53 00 74 00 75 00 62 00 2e 00 76 00 62 00 70 00 } //1 \Desktop\Gh0stly Downloader 2.0\Downloader Stub.vbp
		$a_00_1 = {48 00 4b 00 45 00 59 00 5f 00 4c 00 4f 00 43 00 41 00 4c 00 5f 00 4d 00 41 00 43 00 48 00 49 00 4e 00 45 00 5c 00 53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 49 00 43 00 52 00 4f 00 53 00 4f 00 46 00 54 00 5c 00 57 00 49 00 4e 00 44 00 4f 00 57 00 53 00 5c 00 43 00 55 00 52 00 52 00 45 00 4e 00 54 00 56 00 45 00 52 00 53 00 49 00 4f 00 4e 00 5c 00 52 00 55 00 4e 00 5c 00 } //1 HKEY_LOCAL_MACHINE\SOFTWARE\MICROSOFT\WINDOWS\CURRENTVERSION\RUN\
		$a_00_2 = {37 00 38 00 45 00 31 00 42 00 44 00 44 00 31 00 2d 00 39 00 39 00 34 00 31 00 2d 00 31 00 31 00 63 00 66 00 2d 00 39 00 37 00 35 00 36 00 2d 00 30 00 30 00 41 00 41 00 30 00 30 00 43 00 30 00 30 00 39 00 30 00 38 00 } //1 78E1BDD1-9941-11cf-9756-00AA00C00908
		$a_00_3 = {77 00 73 00 63 00 72 00 69 00 70 00 74 00 2e 00 73 00 68 00 65 00 6c 00 6c 00 } //1 wscript.shell
		$a_01_4 = {52 00 65 00 67 00 57 00 72 00 69 00 74 00 65 00 } //1 RegWrite
		$a_00_5 = {53 68 65 6c 6c 45 78 65 63 75 74 65 41 } //1 ShellExecuteA
		$a_00_6 = {53 74 75 62 00 44 6f 77 6e 6c 6f 61 64 65 72 20 53 74 75 62 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_01_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1) >=7
 
}