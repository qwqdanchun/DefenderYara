
rule TrojanDownloader_Win32_Delf_RK{
	meta:
		description = "TrojanDownloader:Win32/Delf.RK,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 00 00 68 00 6f 00 75 00 75 00 73 00 68 00 61 00 33 00 33 00 2e 00 69 00 63 00 75 00 00 00 2f 00 6a 00 71 00 75 00 65 00 72 00 79 00 2f 00 6a 00 71 00 75 00 65 00 72 00 79 00 2e 00 70 00 68 00 70 00 } //01 00 
		$a_01_1 = {66 00 6a 00 69 00 69 00 73 00 69 00 69 00 73 00 33 00 33 00 2e 00 69 00 63 00 75 00 } //01 00 
		$a_01_2 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 20 00 2d 00 6e 00 6f 00 70 00 20 00 2d 00 65 00 70 00 20 00 62 00 79 00 70 00 61 00 73 00 73 00 20 00 2d 00 66 00 20 00 25 00 74 00 65 00 6d 00 70 00 25 00 5c 00 65 00 6e 00 75 00 2e 00 70 00 73 00 31 00 } //01 00 
		$a_01_3 = {6f 00 70 00 65 00 72 00 61 00 5f 00 72 00 37 00 37 00 34 00 68 00 34 00 66 00 } //00 00 
	condition:
		any of ($a_*)
 
}