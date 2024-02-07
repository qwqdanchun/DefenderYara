
rule Trojan_Win32_Downloader_BH_MTB{
	meta:
		description = "Trojan:Win32/Downloader.BH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {8a 0a 83 c2 01 32 cb 74 40 83 e8 01 75 f2 } //01 00 
		$a_01_1 = {70 00 61 00 73 00 74 00 65 00 62 00 69 00 6e 00 2e 00 63 00 6f 00 6d 00 } //01 00  pastebin.com
		$a_01_2 = {32 00 31 00 32 00 2e 00 31 00 39 00 33 00 2e 00 33 00 30 00 2e 00 32 00 39 00 } //01 00  212.193.30.29
		$a_01_3 = {77 00 66 00 73 00 64 00 72 00 61 00 67 00 6f 00 6e 00 2e 00 72 00 75 00 } //01 00  wfsdragon.ru
		$a_01_4 = {32 00 31 00 32 00 2e 00 31 00 39 00 32 00 2e 00 32 00 34 00 31 00 2e 00 36 00 32 00 } //00 00  212.192.241.62
	condition:
		any of ($a_*)
 
}