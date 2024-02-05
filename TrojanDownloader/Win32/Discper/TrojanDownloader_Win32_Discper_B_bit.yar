
rule TrojanDownloader_Win32_Discper_B_bit{
	meta:
		description = "TrojanDownloader:Win32/Discper.B!bit,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_03_0 = {85 c9 74 2a 8b 55 90 01 01 0f b6 8c 15 90 01 04 8b 45 90 01 01 99 be 90 01 04 f7 fe 0f b6 54 15 90 01 01 33 ca 51 8b 45 90 01 01 50 8d 4d 90 01 01 e8 90 00 } //01 00 
		$a_03_1 = {8b ec 8b 45 08 69 08 90 01 04 81 c1 90 01 04 8b 55 08 89 0a 8b 45 08 8b 00 5d 90 00 } //01 00 
		$a_03_2 = {55 8b ec 51 89 4d 90 01 01 8b 45 90 01 01 8b 08 8b 55 08 8a 45 0c 88 04 11 90 00 } //01 00 
		$a_03_3 = {83 c4 04 33 d2 b9 90 01 04 f7 f1 81 c2 90 01 04 89 95 90 01 04 8b 95 90 01 04 52 ff 15 90 00 } //01 00 
		$a_01_4 = {41 00 76 00 61 00 73 00 74 00 5c 00 64 00 65 00 66 00 73 00 5c 00 } //01 00 
		$a_01_5 = {70 00 69 00 6e 00 67 00 20 00 6c 00 6f 00 63 00 61 00 6c 00 68 00 6f 00 73 00 74 00 20 00 2d 00 6e 00 20 00 34 00 20 00 26 00 20 00 64 00 65 00 6c 00 20 00 2f 00 46 00 20 00 2f 00 51 00 } //00 00 
	condition:
		any of ($a_*)
 
}