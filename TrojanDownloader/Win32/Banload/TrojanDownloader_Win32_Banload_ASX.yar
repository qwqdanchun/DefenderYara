
rule TrojanDownloader_Win32_Banload_ASX{
	meta:
		description = "TrojanDownloader:Win32/Banload.ASX,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {36 39 2e 36 34 2e 33 39 2e 31 33 31 2f 61 75 74 72 73 75 68 70 63 6f 6e 66 69 67 2e 70 61 63 } //01 00  69.64.39.131/autrsuhpconfig.pac
		$a_01_1 = {37 34 2e 36 33 2e 32 32 30 2e 34 31 2f 61 75 74 72 73 75 68 70 63 6f 6e 66 69 67 2e 70 61 63 } //01 00  74.63.220.41/autrsuhpconfig.pac
		$a_01_2 = {31 39 38 2e 35 36 2e 31 38 31 2e 32 34 36 2f 61 75 74 72 73 75 68 70 63 6f 6e 66 69 67 2e 70 61 63 } //01 00  198.56.181.246/autrsuhpconfig.pac
		$a_01_3 = {32 31 36 2e 32 34 35 2e 31 39 33 2e 32 37 2f 61 75 74 72 73 75 68 70 63 6f 6e 66 69 67 2e 70 61 63 } //01 00  216.245.193.27/autrsuhpconfig.pac
		$a_01_4 = {36 39 2e 31 36 32 2e 36 38 2e 32 31 39 2f 61 75 74 72 73 75 68 70 63 6f 6e 66 69 67 2e 70 61 63 } //01 00  69.162.68.219/autrsuhpconfig.pac
		$a_01_5 = {32 30 38 2e 31 31 35 2e 31 39 37 2e 31 31 37 2f 61 75 74 72 73 75 68 70 63 6f 6e 66 69 67 2e 70 61 63 } //01 00  208.115.197.117/autrsuhpconfig.pac
		$a_01_6 = {63 6f 6d 69 63 65 78 70 72 65 73 73 6d 6d 61 2e 63 6f 6d 2e 62 72 2f 61 75 74 72 73 75 68 70 63 6f 6e 66 69 67 2e 70 61 63 } //01 00  comicexpressmma.com.br/autrsuhpconfig.pac
		$a_00_7 = {43 00 3a 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 6c 00 6f 00 72 00 64 00 70 00 62 00 73 00 } //00 00  C:\Windows\System32\lordpbs
		$a_00_8 = {5d 04 } //00 00  ѝ
	condition:
		any of ($a_*)
 
}