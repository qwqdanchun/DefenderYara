
rule TrojanDownloader_Win32_Banload_AEL{
	meta:
		description = "TrojanDownloader:Win32/Banload.AEL,SIGNATURE_TYPE_PEHSTR_EXT,07 00 06 00 04 00 00 05 00 "
		
	strings :
		$a_03_0 = {8b 45 fc 85 c0 74 05 83 e8 04 8b 00 8b d8 85 db 7e 2c be 01 00 00 00 8d 45 f0 8b d7 52 8b 55 fc 0f b6 54 32 ff 59 2a d1 f6 d2 e8 90 01 04 8b 55 f0 8d 45 f8 e8 90 01 04 46 4b 75 d9 90 00 } //01 00 
		$a_01_1 = {8b 4d e0 8b c3 5a 8b 18 ff 13 84 c0 74 16 b2 01 a1 } //01 00 
		$a_01_2 = {63 00 3a 00 5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 44 00 61 00 74 00 61 00 5c 00 5c 00 54 00 61 00 73 00 6b 00 6d 00 73 00 67 00 2e 00 65 00 78 00 65 00 00 00 } //01 00 
		$a_01_3 = {63 00 3a 00 5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 44 00 61 00 74 00 61 00 5c 00 5c 00 54 00 41 00 73 00 6b 00 2e 00 65 00 78 00 65 00 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}