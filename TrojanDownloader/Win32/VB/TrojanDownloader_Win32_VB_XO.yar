
rule TrojanDownloader_Win32_VB_XO{
	meta:
		description = "TrojanDownloader:Win32/VB.XO,SIGNATURE_TYPE_PEHSTR,04 00 04 00 05 00 00 "
		
	strings :
		$a_01_0 = {66 00 74 00 70 00 2e 00 35 00 38 00 38 00 38 00 38 00 2e 00 6e 00 65 00 74 00 2f 00 6d 00 6d 00 2e 00 65 00 78 00 65 00 } //1 ftp.58888.net/mm.exe
		$a_01_1 = {35 00 38 00 38 00 38 00 38 00 2e 00 6e 00 65 00 74 00 2f 00 72 00 6a 00 73 00 68 00 65 00 6e 00 67 00 6a 00 69 00 2f 00 72 00 6a 00 78 00 69 00 61 00 7a 00 61 00 69 00 2e 00 74 00 78 00 74 00 } //1 58888.net/rjshengji/rjxiazai.txt
		$a_01_2 = {63 00 3a 00 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 72 00 6a 00 71 00 69 00 6e 00 67 00 2e 00 63 00 6a 00 } //1 c:\windows\rjqing.cj
		$a_01_3 = {64 00 65 00 6c 00 20 00 7a 00 63 00 79 00 5f 00 63 00 6f 00 70 00 79 00 5f 00 7a 00 69 00 6a 00 69 00 2e 00 62 00 61 00 74 00 } //1 del zcy_copy_ziji.bat
		$a_01_4 = {43 00 3a 00 5c 00 53 00 59 00 53 00 5c 00 53 00 50 00 30 00 30 00 4c 00 53 00 56 00 2e 00 65 00 78 00 65 00 } //1 C:\SYS\SP00LSV.exe
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=4
 
}