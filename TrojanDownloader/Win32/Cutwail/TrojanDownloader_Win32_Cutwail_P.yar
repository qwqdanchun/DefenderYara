
rule TrojanDownloader_Win32_Cutwail_P{
	meta:
		description = "TrojanDownloader:Win32/Cutwail.P,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 01 00 "
		
	strings :
		$a_02_0 = {c7 03 6d 3d 30 26 83 c3 04 c7 03 61 3d 30 26 83 c3 04 83 3d 90 01 05 74 09 c7 03 72 3d 31 26 90 00 } //01 00 
		$a_02_1 = {89 5d fc 66 81 3b 4d 5a 75 1e 80 7b 50 75 74 0d ff 75 f8 ff 75 fc e8 90 01 02 00 00 eb 0b 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}