
rule Trojan_BAT_Camru_A{
	meta:
		description = "Trojan:BAT/Camru.A,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 6d 61 63 5c 6d 61 63 5c } //01 00  \mac\mac\
		$a_01_1 = {43 6c 6f 73 65 41 6c 6c 43 68 72 6f 6d 65 42 72 6f 77 73 65 72 73 00 } //01 00 
		$a_03_2 = {41 00 6c 00 6c 00 55 00 73 00 65 00 72 00 73 00 44 00 65 00 73 00 6b 00 74 00 6f 00 70 00 90 01 02 5c 00 47 00 6f 00 6f 00 67 00 6c 00 65 00 20 00 43 00 68 00 72 00 6f 00 6d 00 65 00 2e 00 6c 00 6e 00 6b 00 90 00 } //01 00 
		$a_03_3 = {5c 00 59 00 61 00 6e 00 64 00 65 00 78 00 2e 00 6c 00 6e 00 6b 00 90 01 02 59 00 61 00 6e 00 64 00 65 00 78 00 90 00 } //01 00 
		$a_03_4 = {5c 00 4d 00 6f 00 7a 00 69 00 6c 00 6c 00 61 00 20 00 46 00 69 00 72 00 65 00 66 00 6f 00 78 00 2e 00 6c 00 6e 00 6b 00 90 01 02 4d 00 6f 00 7a 00 69 00 6c 00 6c 00 61 00 20 00 46 00 69 00 72 00 65 00 66 00 6f 00 78 00 90 00 } //01 00 
		$a_01_5 = {5c 00 4f 00 70 00 65 00 72 00 61 00 5c 00 6c 00 61 00 75 00 6e 00 63 00 68 00 65 00 72 00 2e 00 65 00 78 00 65 00 22 00 } //01 00  \Opera\launcher.exe"
		$a_01_6 = {6f 00 64 00 6e 00 6f 00 6b 00 6c 00 61 00 73 00 73 00 6e 00 69 00 6b 00 69 00 2e 00 72 00 75 00 2f 00 22 00 2c 00 20 00 22 00 68 00 74 00 74 00 70 00 } //01 00  odnoklassniki.ru/", "http
		$a_01_7 = {2f 00 73 00 65 00 61 00 72 00 63 00 68 00 2e 00 70 00 68 00 70 00 3f 00 73 00 65 00 61 00 72 00 63 00 68 00 3d 00 7b 00 73 00 65 00 61 00 72 00 63 00 68 00 54 00 65 00 72 00 6d 00 73 00 7d 00 22 00 2c 00 22 00 73 00 75 00 67 00 67 00 65 00 73 00 74 00 5f 00 75 00 72 00 6c 00 22 00 3a 00 } //01 00  /search.php?search={searchTerms}","suggest_url":
		$a_01_8 = {75 00 72 00 6c 00 73 00 5f 00 74 00 6f 00 5f 00 72 00 65 00 73 00 74 00 6f 00 72 00 65 00 5f 00 6f 00 6e 00 5f 00 73 00 74 00 61 00 72 00 74 00 75 00 70 00 22 00 3a 00 20 00 5b 00 20 00 22 00 68 00 74 00 74 00 70 00 } //00 00  urls_to_restore_on_startup": [ "http
		$a_00_9 = {5d 04 00 00 fc } //13 03 
	condition:
		any of ($a_*)
 
}