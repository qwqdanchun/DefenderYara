
rule TrojanDownloader_Win32_Bancos_DW{
	meta:
		description = "TrojanDownloader:Win32/Bancos.DW,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {46 61 73 74 4d 4d 20 42 6f 72 6c 61 6e 64 20 45 64 69 74 69 6f 6e } //01 00 
		$a_00_1 = {5c 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 5f 00 66 00 6c 00 61 00 73 00 68 00 5f 00 70 00 6c 00 61 00 79 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_02_2 = {77 00 77 00 77 00 2e 00 6e 00 75 00 63 00 65 00 75 00 2e 00 63 00 6f 00 6d 00 2e 00 62 00 72 00 2f 00 6e 00 6f 00 76 00 6f 00 73 00 69 00 74 00 65 00 2f 00 69 00 6d 00 61 00 67 00 65 00 6e 00 73 00 2f 00 73 00 6d 00 74 00 70 00 2e 00 67 00 69 00 66 00 90 02 04 6f 00 70 00 65 00 6e 00 90 00 } //01 00 
		$a_02_3 = {77 00 77 00 77 00 2e 00 6e 00 75 00 63 00 65 00 75 00 2e 00 63 00 6f 00 6d 00 2e 00 62 00 72 00 2f 00 6e 00 6f 00 76 00 6f 00 73 00 69 00 74 00 65 00 2f 00 69 00 6d 00 61 00 67 00 65 00 6e 00 73 00 2f 00 77 00 61 00 62 00 2e 00 67 00 69 00 66 00 90 02 04 6f 00 70 00 65 00 6e 00 90 00 } //01 00 
		$a_00_4 = {77 00 77 00 77 00 2e 00 61 00 64 00 6f 00 62 00 65 00 2e 00 63 00 6f 00 6d 00 2f 00 62 00 72 00 2f 00 73 00 68 00 6f 00 63 00 6b 00 77 00 61 00 76 00 65 00 2f 00 77 00 65 00 6c 00 63 00 6f 00 6d 00 65 00 2f 00 } //00 00 
	condition:
		any of ($a_*)
 
}