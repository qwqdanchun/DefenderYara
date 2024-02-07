
rule TrojanDownloader_Win32_VB_US{
	meta:
		description = "TrojanDownloader:Win32/VB.US,SIGNATURE_TYPE_PEHSTR_EXT,04 00 03 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {71 75 70 61 6e 2e 63 6f 6d 5f 33 38 35 30 37 36 30 5f } //01 00  qupan.com_3850760_
		$a_01_1 = {63 00 3a 00 5c 00 79 00 75 00 2e 00 74 00 78 00 74 00 } //01 00  c:\yu.txt
		$a_01_2 = {63 00 3a 00 5c 00 67 00 67 00 6d 00 6d 00 2e 00 65 00 78 00 65 00 } //01 00  c:\ggmm.exe
		$a_01_3 = {2f 00 55 00 42 00 42 00 2f 00 5f 00 76 00 74 00 69 00 5f 00 63 00 6e 00 66 00 2f 00 35 00 39 00 2e 00 6a 00 70 00 67 00 } //01 00  /UBB/_vti_cnf/59.jpg
		$a_01_4 = {6c 00 77 00 73 00 65 00 78 00 2e 00 69 00 6e 00 66 00 6f 00 2f 00 7a 00 63 00 2f 00 74 00 6a 00 32 00 2e 00 68 00 74 00 6d 00 6c 00 3f 00 } //01 00  lwsex.info/zc/tj2.html?
		$a_01_5 = {6b 00 65 00 79 00 79 00 6f 00 75 00 2e 00 6e 00 65 00 74 00 2f 00 61 00 2d 00 64 00 2e 00 70 00 68 00 70 00 3f 00 75 00 69 00 64 00 3d 00 } //00 00  keyyou.net/a-d.php?uid=
	condition:
		any of ($a_*)
 
}