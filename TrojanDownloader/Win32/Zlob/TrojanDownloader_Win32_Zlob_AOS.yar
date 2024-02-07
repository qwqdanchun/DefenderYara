
rule TrojanDownloader_Win32_Zlob_AOS{
	meta:
		description = "TrojanDownloader:Win32/Zlob.AOS,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 05 00 "
		
	strings :
		$a_01_0 = {c6 84 24 4a 05 00 00 52 c6 84 24 49 05 00 00 55 c6 84 24 4b 05 00 00 4c c7 44 24 28 04 01 00 00 ff 15 } //04 00 
		$a_03_1 = {05 00 00 52 c6 84 24 90 01 01 05 00 00 55 c6 84 24 90 01 01 05 00 00 4c c7 44 24 90 01 01 04 01 00 00 ff 15 90 00 } //01 00 
		$a_01_2 = {78 00 65 00 00 00 00 00 2e 00 25 00 73 00 25 00 73 00 00 00 25 00 64 00 00 00 00 00 25 00 73 00 5c 00 25 00 73 00 } //01 00 
		$a_01_3 = {00 73 65 63 75 72 69 74 79 69 6e 74 65 72 6e 65 74 00 } //01 00  猀捥牵瑩楹瑮牥敮t
		$a_01_4 = {00 68 72 6e 25 64 2e 63 6d 64 00 } //00 00 
	condition:
		any of ($a_*)
 
}