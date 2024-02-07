
rule TrojanDownloader_Win32_Proneuf_A_bit{
	meta:
		description = "TrojanDownloader:Win32/Proneuf.A!bit,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 05 00 00 02 00 "
		
	strings :
		$a_01_0 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //02 00  URLDownloadToFileA
		$a_01_1 = {44 00 3a 00 5c 00 24 00 52 00 45 00 43 00 59 00 43 00 4c 00 45 00 42 00 49 00 4e 00 5c 00 74 00 65 00 73 00 74 00 } //02 00  D:\$RECYCLEBIN\test
		$a_01_2 = {44 00 3a 00 5c 00 24 00 52 00 45 00 43 00 59 00 43 00 4c 00 45 00 42 00 49 00 4e 00 5c 00 72 00 61 00 62 00 62 00 69 00 74 00 } //01 00  D:\$RECYCLEBIN\rabbit
		$a_03_3 = {2d 00 24 00 52 00 45 00 43 00 59 00 43 00 4c 00 45 00 42 00 49 00 4e 00 5c 00 90 02 20 2e 00 76 00 62 00 70 00 90 00 } //01 00 
		$a_01_4 = {44 00 3a 00 5c 00 24 00 52 00 45 00 43 00 59 00 43 00 4c 00 45 00 42 00 49 00 4e 00 5c 00 74 00 72 00 61 00 73 00 68 00 } //00 00  D:\$RECYCLEBIN\trash
		$a_00_5 = {5d 04 00 00 } //f9 72 
	condition:
		any of ($a_*)
 
}