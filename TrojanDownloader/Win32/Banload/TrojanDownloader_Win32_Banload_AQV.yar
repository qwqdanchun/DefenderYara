
rule TrojanDownloader_Win32_Banload_AQV{
	meta:
		description = "TrojanDownloader:Win32/Banload.AQV,SIGNATURE_TYPE_PEHSTR_EXT,6f 00 6f 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 00 6f 00 6e 00 6e 00 65 00 63 00 74 00 69 00 6f 00 6e 00 53 00 74 00 72 00 69 00 6e 00 67 00 00 00 00 00 4f 00 70 00 65 00 6e 00 } //01 00 
		$a_01_1 = {53 00 74 00 61 00 74 00 65 00 00 00 43 00 6c 00 6f 00 73 00 65 00 } //0a 00 
		$a_03_2 = {83 7a 34 00 75 20 8b 45 08 83 c0 34 90 09 09 00 ff 90 90 90 00 } //64 00 
		$a_03_3 = {50 51 ff d7 50 8d 55 94 56 52 ff 15 90 01 02 40 00 8b d0 8d 4d a4 ff 15 90 01 02 40 00 50 6a 00 ff 15 90 01 02 40 00 8d 4d a4 90 00 } //00 00 
		$a_00_4 = {5d 04 00 00 64 ef 02 80 5c 28 00 } //00 65 
	condition:
		any of ($a_*)
 
}