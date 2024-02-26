
rule TrojanDownloader_Win32_GhostRAT_C_MTB{
	meta:
		description = "TrojanDownloader:Win32/GhostRAT.C!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 07 00 00 02 00 "
		
	strings :
		$a_03_0 = {8b c7 0f 43 4c 24 90 01 01 99 f7 7c 24 90 01 01 8a 04 0a 30 04 37 47 3b 7c 24 90 00 } //02 00 
		$a_01_1 = {8b f8 6a 01 ff d6 6a 01 ff d6 6a 01 ff d6 6a 01 ff d6 6a 01 } //02 00 
		$a_03_2 = {0f be 10 8b 45 90 01 01 03 45 fc 0f b6 08 33 ca 8b 55 90 01 01 03 55 fc 88 0a 90 00 } //02 00 
		$a_01_3 = {89 45 8c 6a 01 ff 15 00 00 41 00 6a 01 ff 15 00 00 41 00 6a 01 ff 15 00 00 41 00 6a 01 ff 15 00 00 41 } //02 00 
		$a_03_4 = {89 c8 99 f7 3e 0f b6 04 13 30 04 0f 8d 41 90 01 01 99 f7 3e 0f b6 04 13 30 44 0f 90 00 } //02 00 
		$a_03_5 = {89 c8 99 f7 7e 90 01 01 0f b6 04 13 30 04 0f 8d 41 90 01 01 99 f7 7e 90 01 01 0f b6 04 13 30 44 0f 90 00 } //02 00 
		$a_01_6 = {89 c7 6a 01 ff d3 6a 01 ff d3 6a 01 ff d3 6a 01 ff d3 } //00 00 
	condition:
		any of ($a_*)
 
}