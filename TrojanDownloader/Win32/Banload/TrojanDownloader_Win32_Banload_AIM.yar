
rule TrojanDownloader_Win32_Banload_AIM{
	meta:
		description = "TrojanDownloader:Win32/Banload.AIM,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {81 c4 a0 fa ff ff 53 56 57 33 c0 89 45 ec 8b 75 0c 8b 5d 08 33 c0 55 90 01 19 6a 00 6a 00 6a 00 6a 00 8b 45 ec e8 90 01 04 50 e8 90 01 04 89 45 f8 33 c0 55 68 90 01 04 64 ff 30 64 89 20 6a 00 6a 00 6a 00 6a 00 8b c3 e8 90 01 04 8b f8 57 8b 45 f8 50 e8 90 00 } //01 00 
		$a_03_1 = {8b 06 89 45 f8 8b c3 2c 04 74 90 14 33 c0 8a c3 50 8b c7 5a 8b ca 99 f7 f9 85 d2 75 90 14 33 c0 8a c3 8b d7 2b d0 8b 45 fc 8b 44 90 90 08 33 45 f8 89 46 04 eb 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}