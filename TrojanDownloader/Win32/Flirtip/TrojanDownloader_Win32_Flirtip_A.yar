
rule TrojanDownloader_Win32_Flirtip_A{
	meta:
		description = "TrojanDownloader:Win32/Flirtip.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 05 00 05 00 00 "
		
	strings :
		$a_03_0 = {8b 06 ff 50 04 8b 7d 10 8b 45 0c 8b 0e 8d 55 e0 52 57 50 56 89 5d e8 89 5d e4 89 5d e0 ff 91 ?? ?? ?? ?? 3b c3 7d 12 } //2
		$a_01_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 66 00 77 00 2e 00 71 00 71 00 2e 00 63 00 6f 00 6d 00 2f 00 69 00 70 00 61 00 64 00 64 00 72 00 65 00 73 00 73 00 00 00 } //1
		$a_01_2 = {5c 00 46 00 69 00 6c 00 74 00 65 00 72 00 46 00 69 00 6c 00 65 00 2e 00 74 00 78 00 74 00 00 00 } //1
		$a_01_3 = {44 6f 77 6e 6c 6f 61 64 41 6e 64 52 75 6e 00 } //1
		$a_01_4 = {43 68 65 63 6b 50 45 46 69 6c 65 00 } //1 桃捥偫䙅汩e
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}