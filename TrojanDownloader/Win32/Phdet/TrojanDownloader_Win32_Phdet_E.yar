
rule TrojanDownloader_Win32_Phdet_E{
	meta:
		description = "TrojanDownloader:Win32/Phdet.E,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {ff 51 30 85 c0 7c 27 ff 75 f4 68 } //01 00 
		$a_01_1 = {81 7d f0 c8 00 00 00 75 5a bb 62 29 21 1a } //01 00 
		$a_01_2 = {2d 2d 53 45 52 56 49 43 45 } //00 00  --SERVICE
	condition:
		any of ($a_*)
 
}