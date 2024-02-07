
rule Trojan_Win32_Downloader_BG_MTB{
	meta:
		description = "Trojan:Win32/Downloader.BG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {0f be 45 99 33 85 90 01 04 b9 93 01 00 01 f7 e1 89 85 48 ff ff ff eb b1 90 00 } //01 00 
		$a_03_1 = {03 42 1c 89 85 90 01 04 8b 4d b0 8b 55 ac 03 51 24 89 95 90 00 } //01 00 
		$a_01_2 = {70 00 61 00 73 00 74 00 65 00 62 00 69 00 6e 00 2e 00 63 00 6f 00 6d 00 } //01 00  pastebin.com
		$a_01_3 = {32 00 31 00 32 00 2e 00 31 00 39 00 33 00 2e 00 33 00 30 00 2e 00 32 00 39 00 } //00 00  212.193.30.29
	condition:
		any of ($a_*)
 
}