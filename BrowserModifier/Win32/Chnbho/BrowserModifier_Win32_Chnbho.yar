
rule BrowserModifier_Win32_Chnbho{
	meta:
		description = "BrowserModifier:Win32/Chnbho,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 07 00 00 02 00 "
		
	strings :
		$a_01_0 = {4c 61 6e 67 75 61 67 65 5c 43 68 69 6e 65 73 65 5c 73 65 61 72 63 68 62 61 72 2e 69 6e 69 } //02 00  Language\Chinese\searchbar.ini
		$a_01_1 = {73 6f 67 6f 75 2e 63 6f 6d 2f 65 78 70 72 65 73 73 2f 73 71 2e 6a 73 70 3f 71 75 65 72 79 3d 00 73 6f 2e 71 71 2e 63 6f 6d 2f 63 67 69 2d 62 69 6e 2f 71 71 73 65 61 72 63 68 00 00 26 63 68 61 6e 6e 65 6c 3d 74 62 68 5f 75 72 6c } //02 00 
		$a_01_2 = {7b 25 30 38 58 2d 25 30 34 58 2d 25 30 34 78 2d 25 30 32 58 25 30 32 58 2d 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 7d 00 00 25 73 5c 65 78 70 6c 6f 72 65 72 2e 65 78 65 } //01 00 
		$a_01_3 = {6e 61 6d 65 2e 63 6e 6e 69 63 2e 6e 65 74 } //01 00  name.cnnic.net
		$a_01_4 = {77 77 77 2e 62 61 69 64 75 2e 63 6f 6d 2f 62 61 69 64 75 } //01 00  www.baidu.com/baidu
		$a_01_5 = {33 37 32 31 2e 63 6f 6d 2f 63 6e 73 2e 64 6c 6c } //01 00  3721.com/cns.dll
		$a_01_6 = {70 61 67 65 2e 7a 68 6f 6e 67 73 6f 75 2e 63 6f 6d 2f } //00 00  page.zhongsou.com/
	condition:
		any of ($a_*)
 
}