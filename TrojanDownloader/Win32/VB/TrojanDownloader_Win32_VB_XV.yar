
rule TrojanDownloader_Win32_VB_XV{
	meta:
		description = "TrojanDownloader:Win32/VB.XV,SIGNATURE_TYPE_PEHSTR,04 00 04 00 05 00 00 "
		
	strings :
		$a_01_0 = {62 00 64 00 73 00 6b 00 77 00 2e 00 63 00 6e 00 } //1 bdskw.cn
		$a_01_1 = {77 00 64 00 3d 00 25 00 42 00 36 00 25 00 41 00 42 00 25 00 42 00 37 00 25 00 42 00 44 00 25 00 43 00 39 00 25 00 46 00 31 00 25 00 43 00 36 00 25 00 46 00 30 00 25 00 44 00 37 00 25 00 45 00 45 00 25 00 44 00 30 00 25 00 43 00 32 00 25 00 43 00 44 00 25 00 42 00 43 00 } //1 wd=%B6%AB%B7%BD%C9%F1%C6%F0%D7%EE%D0%C2%CD%BC
		$a_01_2 = {70 00 61 00 69 00 6e 00 77 00 65 00 62 00 2e 00 6e 00 65 00 74 00 2f 00 68 00 74 00 2f 00 } //1 painweb.net/ht/
		$a_01_3 = {62 00 61 00 69 00 64 00 75 00 2e 00 63 00 6f 00 6d 00 2f 00 69 00 6d 00 67 00 2f 00 6c 00 6f 00 67 00 6f 00 2d 00 79 00 79 00 2e 00 67 00 69 00 66 00 } //1 baidu.com/img/logo-yy.gif
		$a_01_4 = {51 00 51 00 4f 00 6e 00 65 00 43 00 6c 00 69 00 63 00 6b 00 41 00 70 00 70 00 } //1 QQOneClickApp
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=4
 
}