
rule TrojanDownloader_O97M_Obfuse_DK{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.DK,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {2b 20 22 77 69 6e 6d 67 6d 74 73 3a 57 69 6e 33 32 5f 50 72 6f 63 65 73 73 53 74 61 72 74 75 70 22 20 2b } //01 00  + "winmgmts:Win32_ProcessStartup" +
		$a_01_1 = {2b 20 22 77 69 6e 6d 67 6d 74 73 3a 57 69 6e 33 32 22 20 2b 20 22 5f 50 72 6f 63 65 73 73 53 74 61 72 74 75 70 22 20 2b } //01 00  + "winmgmts:Win32" + "_ProcessStartup" +
		$a_03_2 = {2b 20 22 77 69 6e 6d 67 6d 74 73 3a 57 69 6e 33 32 22 20 2b 20 90 02 10 20 2b 20 22 5f 50 72 6f 63 65 73 73 53 74 61 72 74 75 70 22 20 2b 20 90 00 } //01 00 
		$a_03_3 = {2b 20 22 77 69 6e 6d 22 20 2b 20 22 67 6d 74 73 3a 57 69 6e 33 32 22 90 02 01 20 2b 20 90 02 11 20 2b 20 22 5f 50 72 6f 63 65 73 73 53 74 61 72 74 75 70 22 20 2b 20 90 00 } //01 00 
		$a_03_4 = {2b 20 22 77 69 6e 6d 22 20 2b 20 90 02 10 20 2b 20 22 67 6d 74 73 3a 57 69 6e 33 32 22 29 20 2b 20 28 90 02 10 20 2b 20 22 5f 50 72 6f 63 65 73 73 53 74 61 72 74 75 70 22 20 2b 20 90 00 } //01 00 
		$a_03_5 = {2b 20 22 77 22 20 2b 20 90 02 10 20 2b 20 22 69 6e 6d 67 6d 74 73 3a 57 69 6e 33 32 5f 50 72 22 20 2b 20 22 6f 63 65 73 73 53 74 61 72 74 75 70 22 90 00 } //02 00 
		$a_03_6 = {47 65 74 4f 62 6a 65 63 74 28 90 02 10 20 2b 20 90 02 10 20 2b 20 90 02 10 29 2e 43 72 65 61 74 65 28 28 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}