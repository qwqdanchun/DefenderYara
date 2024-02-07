
rule TrojanDownloader_BAT_Gendwnurl_BC_bit{
	meta:
		description = "TrojanDownloader:BAT/Gendwnurl.BC!bit,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {1b 5c 00 6e 00 76 00 78 00 64 00 73 00 79 00 6e 00 63 00 2e 00 65 00 78 00 65 00 00 90 01 01 68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 90 00 } //01 00 
		$a_01_1 = {11 6e 00 76 00 78 00 64 00 73 00 79 00 6e 00 63 00 00 77 48 00 4b 00 45 00 59 00 5f 00 43 00 55 00 52 00 52 00 45 00 4e 00 54 00 5f 00 55 00 53 00 45 00 52 00 5c 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 43 00 6c 00 61 00 73 00 73 00 65 00 73 00 5c 00 73 00 74 00 65 00 61 00 6d 00 5c 00 53 00 68 00 65 00 6c 00 6c 00 5c 00 4f 00 70 00 65 00 6e 00 5c 00 43 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_BAT_Gendwnurl_BC_bit_2{
	meta:
		description = "TrojanDownloader:BAT/Gendwnurl.BC!bit,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {35 00 36 00 35 00 34 00 36 00 66 00 66 00 66 00 } //01 00  56546fff
		$a_03_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 73 00 61 00 76 00 65 00 69 00 6d 00 61 00 67 00 65 00 2e 00 70 00 77 00 90 02 20 2e 00 65 00 78 00 65 00 90 00 } //01 00 
		$a_01_2 = {48 00 4b 00 45 00 59 00 5f 00 43 00 55 00 52 00 52 00 45 00 4e 00 54 00 5f 00 55 00 53 00 45 00 52 00 5c 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 43 00 6c 00 61 00 73 00 73 00 65 00 73 00 5c 00 73 00 74 00 65 00 61 00 6d 00 5c 00 53 00 68 00 65 00 6c 00 6c 00 5c 00 4f 00 70 00 65 00 6e 00 5c 00 43 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 } //00 00  HKEY_CURRENT_USER\Software\Classes\steam\Shell\Open\Command
	condition:
		any of ($a_*)
 
}