
rule TrojanDownloader_Win32_Renos_JK{
	meta:
		description = "TrojanDownloader:Win32/Renos.JK,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 06 00 00 01 00 "
		
	strings :
		$a_03_0 = {c7 45 fc 05 00 00 00 83 bd 90 01 04 02 75 90 01 01 83 bd 90 01 04 06 7c 90 00 } //01 00 
		$a_01_1 = {6a 03 6a 00 6a 00 6a 00 6a 00 6a ff 8b 45 b8 50 e8 } //01 00 
		$a_01_2 = {4a 00 a8 03 00 00 07 00 e8 01 04 34 18 00 0a 20 } //01 00 
		$a_03_3 = {74 7f c7 45 fc 04 00 00 00 6a 41 8d 4d 90 01 01 51 ff 15 90 01 04 6a 56 8d 55 90 01 01 52 ff 15 90 00 } //01 00 
		$a_03_4 = {c7 45 fc 1d 00 00 00 6a 53 8d 4d b4 51 ff 15 90 01 04 6a 79 8d 55 a4 52 ff 15 90 01 04 6a 73 8d 45 84 50 ff 15 90 01 04 6a 74 90 00 } //01 00 
		$a_03_5 = {6a 56 ff 15 90 01 04 8b d0 8d 8d 90 01 04 ff 15 90 01 04 50 ff 15 90 01 04 8b d0 8d 8d 90 01 04 ff 15 90 01 04 50 6a 69 ff 15 90 01 04 8b d0 8d 8d 90 01 04 ff 15 90 01 04 50 ff 15 90 01 04 8b d0 8d 8d 90 01 04 ff 15 90 01 04 50 6a 72 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}