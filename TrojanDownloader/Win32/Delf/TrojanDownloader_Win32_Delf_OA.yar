
rule TrojanDownloader_Win32_Delf_OA{
	meta:
		description = "TrojanDownloader:Win32/Delf.OA,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 02 00 "
		
	strings :
		$a_02_0 = {74 00 70 00 73 00 3a 00 2f 00 2f 00 73 00 33 00 2e 00 61 00 6d 00 61 00 7a 00 6f 00 6e 00 61 00 77 00 73 00 2e 00 63 00 6f 00 6d 00 2f 00 6d 00 6f 00 64 00 75 00 6c 00 6f 00 73 00 31 00 2f 00 90 02 08 2e 00 6a 00 70 00 67 00 90 00 } //01 00 
		$a_00_1 = {5c 00 6b 00 69 00 64 00 6b 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_00_2 = {5c 00 6d 00 61 00 74 00 61 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_00_3 = {5c 00 6d 00 73 00 6e 00 2e 00 65 00 78 00 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}