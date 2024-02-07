
rule TrojanDownloader_Win32_Gendwnurl_BQ_bit{
	meta:
		description = "TrojanDownloader:Win32/Gendwnurl.BQ!bit,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 03 00 "
		
	strings :
		$a_03_0 = {6c 00 65 00 77 00 64 00 2e 00 73 00 65 00 2f 00 90 02 1f 2e 00 6a 00 70 00 67 00 90 00 } //01 00 
		$a_01_1 = {44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 44 00 61 00 74 00 61 00 } //01 00  DownloadData
		$a_01_2 = {50 00 4f 00 44 00 49 00 5a 00 41 00 4e 00 4a 00 45 00 } //01 00  PODIZANJE
		$a_01_3 = {69 00 6e 00 6a 00 52 00 75 00 6e 00 } //00 00  injRun
	condition:
		any of ($a_*)
 
}