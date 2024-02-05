
rule TrojanDownloader_Win64_DCRat_A_MTB{
	meta:
		description = "TrojanDownloader:Win64/DCRat.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 04 00 00 02 00 "
		
	strings :
		$a_01_0 = {43 00 3a 00 5c 00 55 00 73 00 65 00 72 00 73 00 5c 00 25 00 73 00 5c 00 41 00 70 00 70 00 44 00 61 00 74 00 61 00 5c 00 52 00 6f 00 61 00 6d 00 69 00 6e 00 67 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 53 00 74 00 61 00 72 00 74 00 20 00 4d 00 65 00 6e 00 75 00 5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 73 00 5c 00 53 00 74 00 61 00 72 00 74 00 75 00 70 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5f 00 44 00 65 00 66 00 65 00 6e 00 64 00 65 00 72 00 5f 00 41 00 64 00 76 00 61 00 6e 00 63 00 65 00 64 00 5f 00 54 00 68 00 72 00 65 00 61 00 74 00 5f 00 50 00 72 00 6f 00 74 00 65 00 63 00 74 00 69 00 6f 00 6e 00 } //02 00 
		$a_01_1 = {43 00 3a 00 5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 20 00 46 00 69 00 6c 00 65 00 73 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 4e 00 54 00 5c 00 54 00 61 00 62 00 6c 00 65 00 54 00 65 00 78 00 74 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 } //02 00 
		$a_01_2 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //02 00 
		$a_01_3 = {3a 00 2f 00 2f 00 66 00 72 00 65 00 65 00 31 00 34 00 35 00 39 00 2e 00 68 00 6f 00 73 00 74 00 2e 00 6f 00 64 00 2e 00 75 00 61 00 2f 00 } //00 00 
	condition:
		any of ($a_*)
 
}