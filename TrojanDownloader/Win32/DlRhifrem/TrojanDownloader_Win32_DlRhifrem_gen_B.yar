
rule TrojanDownloader_Win32_DlRhifrem_gen_B{
	meta:
		description = "TrojanDownloader:Win32/DlRhifrem.gen!B,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 03 00 "
		
	strings :
		$a_03_0 = {c7 45 f0 00 00 00 00 81 7d f0 90 01 02 00 00 7f 1e 8b 45 f0 05 90 01 04 80 38 ff 74 0a 8b 45 f0 05 90 01 04 fe 08 8d 45 f0 ff 00 eb d9 c7 44 24 10 00 00 00 00 8d 45 f8 90 00 } //01 00 
		$a_03_1 = {c7 44 24 10 00 00 00 00 89 44 24 0c 8b 45 0c 89 44 24 08 8b 45 f4 89 44 24 04 8b 45 fc 89 04 24 e8 90 01 02 00 00 90 00 } //01 00 
		$a_03_2 = {89 44 24 10 89 54 24 0c c7 44 24 08 00 00 00 00 c7 44 24 04 00 00 00 00 8b 45 fc 89 04 24 e8 90 01 02 00 00 90 00 } //01 00 
		$a_00_3 = {6d 73 69 65 2e 64 61 74 00 } //01 00 
		$a_00_4 = {41 64 6f 62 65 20 41 63 72 6f 62 61 74 20 52 65 61 64 65 72 28 74 6d 29 00 } //00 00 
	condition:
		any of ($a_*)
 
}