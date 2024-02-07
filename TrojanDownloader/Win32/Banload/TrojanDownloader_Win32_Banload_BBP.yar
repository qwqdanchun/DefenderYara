
rule TrojanDownloader_Win32_Banload_BBP{
	meta:
		description = "TrojanDownloader:Win32/Banload.BBP,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {50 6a 2e ff 15 94 10 40 00 8b d0 8d 4d c8 ff 15 cc 10 40 00 50 6a 65 ff 15 94 10 40 00 8b d0 8d 4d c4 ff 15 cc 10 40 00 50 ff 15 24 10 40 00 8b d0 8d 4d c0 ff 15 cc 10 40 00 50 6a 78 } //01 00 
		$a_03_1 = {6a 26 ff 15 94 10 40 00 8b d0 8d 8d 90 01 02 ff ff ff 15 cc 10 40 00 50 6a 61 ff 15 94 10 40 00 8b d0 8d 8d 90 01 02 ff ff ff 15 cc 10 40 00 50 ff 15 24 10 40 00 8b d0 8d 8d 90 01 02 ff ff ff 15 cc 10 40 00 50 6a 63 90 00 } //00 00 
		$a_00_2 = {5d } //04 00  ]
	condition:
		any of ($a_*)
 
}