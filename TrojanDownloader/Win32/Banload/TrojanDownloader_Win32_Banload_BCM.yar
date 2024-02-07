
rule TrojanDownloader_Win32_Banload_BCM{
	meta:
		description = "TrojanDownloader:Win32/Banload.BCM,SIGNATURE_TYPE_PEHSTR,05 00 05 00 03 00 00 03 00 "
		
	strings :
		$a_01_0 = {3a 00 5c 00 4c 00 6f 00 61 00 64 00 65 00 72 00 5c 00 76 00 65 00 72 00 73 00 61 00 6f 00 20 00 31 00 2e 00 35 00 5c 00 53 00 70 00 61 00 63 00 65 00 2e 00 76 00 62 00 70 00 } //01 00  :\Loader\versao 1.5\Space.vbp
		$a_01_1 = {45 00 72 00 72 00 6f 00 72 00 20 00 57 00 68 00 69 00 6c 00 65 00 20 00 41 00 74 00 74 00 65 00 6d 00 70 00 74 00 69 00 6e 00 67 00 20 00 74 00 6f 00 20 00 43 00 72 00 65 00 61 00 74 00 65 00 20 00 44 00 69 00 72 00 65 00 63 00 74 00 6f 00 72 00 69 00 65 00 73 00 20 00 6f 00 6e 00 20 00 44 00 65 00 73 00 74 00 69 00 6e 00 61 00 74 00 69 00 6f 00 6e 00 20 00 44 00 72 00 69 00 76 00 65 00 2e 00 } //01 00  Error While Attempting to Create Directories on Destination Drive.
		$a_01_2 = {47 00 69 00 76 00 65 00 20 00 50 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 } //00 00  Give Password
		$a_01_3 = {00 7e 15 } //00 00 
	condition:
		any of ($a_*)
 
}