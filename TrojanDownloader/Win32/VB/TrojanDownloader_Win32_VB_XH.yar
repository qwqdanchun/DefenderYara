
rule TrojanDownloader_Win32_VB_XH{
	meta:
		description = "TrojanDownloader:Win32/VB.XH,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 0e 00 00 "
		
	strings :
		$a_01_0 = {44 00 3a 00 5c 00 4d 00 61 00 73 00 74 00 65 00 72 00 5c 00 41 00 44 00 57 00 41 00 52 00 41 00 } //1 D:\Master\ADWARA
		$a_01_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 6c 00 69 00 76 00 65 00 75 00 70 00 64 00 61 00 74 00 65 00 73 00 6e 00 65 00 74 00 2e 00 63 00 6f 00 6d 00 2f 00 } //1 http://liveupdatesnet.com/
		$a_01_2 = {76 00 6d 00 77 00 61 00 72 00 65 00 73 00 65 00 72 00 76 00 69 00 63 00 65 00 2e 00 65 00 78 00 65 00 } //1 vmwareservice.exe
		$a_01_3 = {74 00 72 00 61 00 6e 00 73 00 66 00 65 00 72 00 2d 00 65 00 6e 00 63 00 6f 00 64 00 69 00 6e 00 67 00 } //1 transfer-encoding
		$a_01_4 = {63 00 6f 00 6e 00 74 00 65 00 6e 00 74 00 2d 00 6c 00 65 00 6e 00 67 00 68 00 74 00 } //1 content-lenght
		$a_00_5 = {53 68 65 6c 6c 45 78 65 63 75 74 65 41 } //1 ShellExecuteA
		$a_01_6 = {73 74 72 52 65 6d 6f 74 65 48 6f 73 74 } //1 strRemoteHost
		$a_01_7 = {6c 6e 67 52 65 6d 6f 74 65 50 6f 72 74 } //1 lngRemotePort
		$a_00_8 = {52 65 6d 6f 74 65 48 6f 73 74 49 50 } //1 RemoteHostIP
		$a_01_9 = {5c 00 6e 00 75 00 73 00 72 00 6d 00 67 00 72 00 2e 00 65 00 78 00 65 00 } //1 \nusrmgr.exe
		$a_00_10 = {57 69 6e 45 78 65 63 } //1 WinExec
		$a_01_11 = {5c 00 31 00 2e 00 65 00 78 00 65 00 } //1 \1.exe
		$a_01_12 = {5c 00 32 00 2e 00 65 00 78 00 65 00 } //1 \2.exe
		$a_01_13 = {49 73 56 6d 57 61 72 65 } //1 IsVmWare
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_00_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_00_8  & 1)*1+(#a_01_9  & 1)*1+(#a_00_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1) >=11
 
}