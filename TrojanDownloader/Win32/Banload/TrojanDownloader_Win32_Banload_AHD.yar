
rule TrojanDownloader_Win32_Banload_AHD{
	meta:
		description = "TrojanDownloader:Win32/Banload.AHD,SIGNATURE_TYPE_PEHSTR_EXT,12 00 0f 00 0b 00 00 0a 00 "
		
	strings :
		$a_01_0 = {0f b6 5c 30 ff 33 5d e4 3b fb 7c 0a 81 c3 ff 00 00 00 2b df eb 02 } //0a 00 
		$a_01_1 = {dd 5d b8 9b ff 75 bc ff 75 b8 8d 45 f8 ba 90 01 04 e8 22 4e ff ff 6a 05 8d 85 40 ff ff ff e8 90 00 } //01 00 
		$a_00_2 = {24 41 76 69 72 61 24 } //01 00 
		$a_00_3 = {24 41 6e 74 69 76 69 72 } //01 00 
		$a_00_4 = {24 50 41 4e 44 41 } //01 00 
		$a_00_5 = {24 4e 4f 52 54 4f 4e } //01 00 
		$a_00_6 = {24 4b 41 53 50 45 52 53 4b 59 24 } //01 00 
		$a_00_7 = {24 4d 63 41 66 65 65 24 } //01 00 
		$a_00_8 = {24 41 56 47 } //01 00 
		$a_00_9 = {24 4d 53 45 24 } //01 00 
		$a_00_10 = {24 43 4f 4d 4f 44 4f 24 } //00 00 
	condition:
		any of ($a_*)
 
}