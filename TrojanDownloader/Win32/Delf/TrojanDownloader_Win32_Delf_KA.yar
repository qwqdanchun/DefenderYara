
rule TrojanDownloader_Win32_Delf_KA{
	meta:
		description = "TrojanDownloader:Win32/Delf.KA,SIGNATURE_TYPE_PEHSTR,08 00 08 00 08 00 00 "
		
	strings :
		$a_01_0 = {53 4f 46 54 57 41 52 45 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 5c 52 54 4c } //1 SOFTWARE\Borland\Delphi\RTL
		$a_01_1 = {65 2d 6a 6f 6b 2e 63 6e 2f 63 6e 66 67 2f 5f 70 6f 70 77 7a 77 2e 74 78 74 } //1 e-jok.cn/cnfg/_popwzw.txt
		$a_01_2 = {65 2d 6a 6f 6b 2e 63 6e 2f 63 6f 75 6e 74 2f 75 70 64 61 74 65 64 61 74 61 2e 61 73 70 78 3f 69 64 3d } //1 e-jok.cn/count/updatedata.aspx?id=
		$a_01_3 = {63 61 6e 76 69 65 77 2e 74 78 74 } //1 canview.txt
		$a_01_4 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 45 78 70 6c 6f 72 65 72 5c 42 72 6f 77 73 65 72 20 48 65 6c 70 65 72 20 4f 62 6a 65 63 74 73 5c } //1 Software\Microsoft\Windows\CurrentVersion\Explorer\Browser Helper Objects\
		$a_01_5 = {44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 } //1 DllRegisterServer
		$a_01_6 = {47 65 74 43 6c 69 70 62 6f 61 72 64 44 61 74 61 } //1 GetClipboardData
		$a_01_7 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //1 URLDownloadToFileA
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=8
 
}