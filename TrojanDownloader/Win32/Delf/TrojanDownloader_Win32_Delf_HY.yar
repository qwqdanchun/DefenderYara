
rule TrojanDownloader_Win32_Delf_HY{
	meta:
		description = "TrojanDownloader:Win32/Delf.HY,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {57 69 6e 45 78 65 63 } //01 00  WinExec
		$a_00_1 = {57 72 69 74 65 46 69 6c 65 } //01 00  WriteFile
		$a_00_2 = {63 6d 64 20 2f 6b 20 43 3a 5c 57 49 4e 44 4f 57 53 5c 73 79 73 74 65 6d 5c 74 77 61 69 6e 5f 33 32 2e 65 78 65 00 } //01 00 
		$a_00_3 = {63 6d 64 20 2f 6b 20 43 3a 5c 57 49 4e 44 4f 57 53 5c 73 79 73 74 65 6d 5c 4d 65 73 73 65 6e 67 65 72 2e 65 78 65 00 } //01 00 
		$a_01_4 = {24 37 33 38 37 33 35 37 34 34 37 34 31 37 35 38 38 30 38 37 39 30 37 38 39 38 31 32 37 33 36 37 35 34 37 33 36 00 00 05 54 45 64 69 74 08 55 72 6c 5f 6c 69 6e 6b } //00 00 
	condition:
		any of ($a_*)
 
}