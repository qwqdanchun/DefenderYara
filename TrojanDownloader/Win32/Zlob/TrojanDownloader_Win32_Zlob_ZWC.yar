
rule TrojanDownloader_Win32_Zlob_ZWC{
	meta:
		description = "TrojanDownloader:Win32/Zlob.ZWC,SIGNATURE_TYPE_PEHSTR_EXT,04 00 03 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {67 00 6f 00 2e 00 70 00 68 00 70 00 3f 00 73 00 74 00 65 00 70 00 3d 00 25 00 64 00 } //01 00  go.php?step=%d
		$a_01_1 = {7d 00 00 65 78 70 6c 6f 72 65 72 2e 65 78 65 00 00 00 00 53 6f 66 74 77 61 72 65 5c 4d 69 63 72 } //01 00 
		$a_01_2 = {49 54 42 61 72 4c 61 79 6f 75 74 00 53 6f 66 74 } //01 00  呉慂䱲祡畯t潓瑦
		$a_01_3 = {49 73 6f 6c 61 74 69 6f 6e 41 77 61 72 65 43 6c 65 61 6e 75 70 0a 00 } //01 00 
		$a_01_4 = {3a 00 2f 00 2f 00 61 00 67 00 75 00 61 00 72 00 64 00 74 00 6f 00 6f 00 6c 00 } //00 00  ://aguardtool
	condition:
		any of ($a_*)
 
}