
rule TrojanDownloader_Win32_Small_ZZS{
	meta:
		description = "TrojanDownloader:Win32/Small.ZZS,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 02 00 "
		
	strings :
		$a_01_0 = {6a 0d 8b d8 ff d7 ff d6 6a 0d 8b e8 ff d7 ff d6 8b c8 8b c3 6a 64 99 } //01 00 
		$a_01_1 = {66 00 3d 00 5f 00 5f 00 4c 00 71 00 69 00 72 00 31 00 67 00 64 00 77 00 } //01 00  f=__Lqir1gdw
		$a_01_2 = {51 00 69 00 78 00 69 00 35 00 35 00 20 00 56 00 69 00 64 00 65 00 6f 00 20 00 43 00 6f 00 6d 00 6d 00 75 00 6e 00 69 00 74 00 79 00 } //01 00  Qixi55 Video Community
		$a_01_3 = {76 00 69 00 70 00 2e 00 39 00 62 00 69 00 63 00 2e 00 6e 00 65 00 74 00 3a 00 38 00 38 00 33 00 2f 00 6f 00 76 00 65 00 72 00 2e 00 68 00 74 00 6d 00 6c 00 } //01 00  vip.9bic.net:883/over.html
		$a_03_4 = {57 00 69 00 6e 00 53 00 65 00 72 00 2e 00 65 00 78 00 65 00 90 09 22 00 43 00 3a 00 5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 20 00 46 00 69 00 6c 00 65 00 73 00 5c 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}