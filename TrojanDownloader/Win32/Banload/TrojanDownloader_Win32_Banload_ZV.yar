
rule TrojanDownloader_Win32_Banload_ZV{
	meta:
		description = "TrojanDownloader:Win32/Banload.ZV,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {6a 00 8d 44 24 14 50 56 8d 8c 24 90 01 02 00 00 51 53 ff 15 90 01 04 8b 44 24 0c 6a 00 68 28 27 00 00 8d 94 24 90 01 02 00 00 52 50 ff 15 90 01 04 8b f0 85 f6 7f c9 90 00 } //01 00 
		$a_01_1 = {61 72 71 75 69 76 6f 2e 65 78 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}