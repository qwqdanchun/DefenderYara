
rule TrojanDownloader_Win32_VB_OD{
	meta:
		description = "TrojanDownloader:Win32/VB.OD,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {2e 78 75 6e 6c 65 69 31 30 30 2e 63 6f 6d 2f 79 6f 75 62 61 6b 2f } //1 .xunlei100.com/youbak/
		$a_03_1 = {50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 46 00 69 00 6c 00 65 00 73 00 ?? ?? ?? ?? ?? ?? ?? ?? 5c 00 79 00 78 00 79 00 36 00 31 00 33 00 2e 00 65 00 78 00 65 00 } //1
		$a_01_2 = {00 00 58 00 58 00 58 00 2e 00 65 00 78 00 65 00 00 00 } //1
		$a_01_3 = {44 00 3a 00 5c 00 13 4e 28 75 5c 00 7d 59 8b 53 5c 00 7d 59 8b 53 5c 00 e5 5d 0b 7a 31 00 2e 00 76 00 62 00 70 } //1
		$a_01_4 = {00 00 ae 5f 6f 8f 2d 4e fd 56 00 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}