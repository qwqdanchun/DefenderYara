
rule TrojanDownloader_Win32_Banload_TD{
	meta:
		description = "TrojanDownloader:Win32/Banload.TD,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {08 75 53 74 72 74 44 77 6e 00 } //01 00  甈瑓瑲睄n
		$a_01_1 = {0c 54 6d 72 49 6e 69 63 54 69 6d 65 72 13 00 } //01 00 
		$a_01_2 = {0c 54 6d 72 42 78 61 72 54 69 6d 65 72 13 00 } //01 00 
		$a_01_3 = {0c 54 6d 72 53 63 44 77 54 69 6d 65 72 13 00 } //00 00 
	condition:
		any of ($a_*)
 
}