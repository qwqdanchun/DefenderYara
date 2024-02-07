
rule TrojanDownloader_Win32_Adload_DN{
	meta:
		description = "TrojanDownloader:Win32/Adload.DN,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {2f 00 6c 00 6f 00 67 00 2f 00 4f 00 75 00 74 00 73 00 75 00 72 00 66 00 69 00 6e 00 67 00 5f 00 49 00 43 00 2f 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 } //01 00  /log/Outsurfing_IC/install
		$a_01_1 = {35 00 34 00 2e 00 32 00 31 00 34 00 2e 00 32 00 34 00 36 00 2e 00 39 00 37 00 2f 00 } //01 00  54.214.246.97/
		$a_01_2 = {73 00 74 00 61 00 72 00 74 00 3a 00 20 00 31 00 2e 00 30 00 2e 00 31 00 2e 00 32 00 } //01 00  start: 1.0.1.2
		$a_01_3 = {45 00 52 00 52 00 3a 00 20 00 56 00 69 00 72 00 74 00 75 00 61 00 6c 00 20 00 50 00 43 00 } //00 00  ERR: Virtual PC
		$a_00_4 = {7e 15 00 } //00 78 
	condition:
		any of ($a_*)
 
}