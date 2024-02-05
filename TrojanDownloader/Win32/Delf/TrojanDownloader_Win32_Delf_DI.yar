
rule TrojanDownloader_Win32_Delf_DI{
	meta:
		description = "TrojanDownloader:Win32/Delf.DI,SIGNATURE_TYPE_PEHSTR_EXT,06 00 05 00 06 00 00 01 00 "
		
	strings :
		$a_00_0 = {0f 00 00 00 63 3a 5c 70 61 67 65 66 69 6c 65 2e 49 4e 46 } //01 00 
		$a_00_1 = {0f 00 00 00 63 3a 5c 70 61 67 65 66 69 6c 65 2e 6c 6f 67 } //01 00 
		$a_00_2 = {19 00 00 00 22 20 7c 20 66 69 6e 64 20 22 20 30 20 62 79 74 65 73 22 20 3e 20 4e 55 4c } //01 00 
		$a_00_3 = {08 00 00 00 5f 75 6e 6b 6e 6f 77 5f } //01 00 
		$a_00_4 = {09 00 00 00 67 6f 74 6f 20 73 61 69 72 } //03 00 
		$a_01_5 = {2c 01 72 08 74 15 fe c8 74 20 eb 2b } //00 00 
	condition:
		any of ($a_*)
 
}