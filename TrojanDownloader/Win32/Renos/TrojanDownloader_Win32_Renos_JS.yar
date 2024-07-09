
rule TrojanDownloader_Win32_Renos_JS{
	meta:
		description = "TrojanDownloader:Win32/Renos.JS,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 0a 00 00 "
		
	strings :
		$a_03_0 = {50 68 00 14 2d 00 90 09 02 00 6a (0c|18) } //4
		$a_03_1 = {bb 00 01 00 00 ?? ?? ?? ?? ?? ?? ?? 40 3b c3 72 f4 } //4
		$a_01_2 = {8a 06 0f b6 4e ff c1 e0 08 0b c1 } //4
		$a_03_3 = {ff 45 f8 83 c7 04 83 7d f8 03 72 ?? eb } //4
		$a_01_4 = {68 8e 02 00 00 68 56 03 00 00 6a 40 } //4
		$a_03_5 = {68 58 4d 56 c7 45 ?? 58 56 00 00 } //4
		$a_03_6 = {8a 04 37 34 ?? 88 06 46 ?? 75 } //1
		$a_03_7 = {88 06 46 ff ?? ?? 75 90 09 05 00 8a 04 ?? 34 } //1
		$a_03_8 = {88 07 47 ff ?? ?? 75 90 09 05 00 8a 04 ?? 34 } //1
		$a_01_9 = {48 41 5f 25 30 38 78 00 } //1 䅈╟㠰x
	condition:
		((#a_03_0  & 1)*4+(#a_03_1  & 1)*4+(#a_01_2  & 1)*4+(#a_03_3  & 1)*4+(#a_01_4  & 1)*4+(#a_03_5  & 1)*4+(#a_03_6  & 1)*1+(#a_03_7  & 1)*1+(#a_03_8  & 1)*1+(#a_01_9  & 1)*1) >=9
 
}