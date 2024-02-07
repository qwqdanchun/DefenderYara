
rule TrojanDownloader_Win32_Banload_ZFI_bit{
	meta:
		description = "TrojanDownloader:Win32/Banload.ZFI!bit,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {6d 6f 64 65 5b 30 30 31 5d 67 33 70 72 6f 5b 30 30 31 5d 63 6f 6d 5b 30 30 31 5d 62 72 2f 90 02 1f 7a 69 70 90 00 } //01 00 
		$a_01_1 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //01 00  URLDownloadToFileA
		$a_01_2 = {43 61 62 61 6b 61 65 } //00 00  Cabakae
	condition:
		any of ($a_*)
 
}