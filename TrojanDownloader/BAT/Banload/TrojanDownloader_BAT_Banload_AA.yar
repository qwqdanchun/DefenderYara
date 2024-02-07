
rule TrojanDownloader_BAT_Banload_AA{
	meta:
		description = "TrojanDownloader:BAT/Banload.AA,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {57 00 69 00 6e 00 46 00 6f 00 72 00 6d 00 73 00 5f 00 53 00 65 00 65 00 49 00 6e 00 6e 00 65 00 72 00 45 00 78 00 63 00 65 00 70 00 74 00 69 00 6f 00 6e 00 90 02 03 68 00 74 00 74 00 70 00 90 02 02 3a 00 2f 00 2f 00 90 00 } //01 00 
		$a_03_1 = {44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 46 00 69 00 6c 00 65 00 90 01 02 5c 00 75 00 6e 00 7a 00 69 00 70 00 2e 00 65 00 78 00 65 00 90 01 02 20 00 90 01 02 75 00 6e 00 7a 00 69 00 70 00 90 00 } //01 00 
		$a_01_2 = {5c 55 73 65 72 73 5c 41 64 6d 69 6e 5c 44 65 73 6b 74 6f 70 5c 4c 6f 72 64 5c 4c 6f 72 64 20 5a 49 50 } //00 00  \Users\Admin\Desktop\Lord\Lord ZIP
		$a_00_3 = {5d 04 } //00 00  ѝ
	condition:
		any of ($a_*)
 
}