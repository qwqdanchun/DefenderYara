
rule Trojan_BAT_Crysan_BQT_MTB{
	meta:
		description = "Trojan:BAT/Crysan.BQT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,11 00 11 00 0b 00 00 0a 00 "
		
	strings :
		$a_80_0 = {39 31 2e 32 34 33 2e 34 34 2e 37 35 } //91.243.44.75  0a 00 
		$a_80_1 = {37 34 2e 32 30 31 2e 32 38 2e 36 32 } //74.201.28.62  0a 00 
		$a_80_2 = {74 61 73 6b 6d 67 72 64 65 76 2e 63 6f 6d 2f 63 2f } //taskmgrdev.com/c/  0a 00 
		$a_80_3 = {72 65 6f 69 6c 64 72 69 65 6e 64 2e 73 79 74 65 73 2e 6e 65 74 2f 63 66 6a 68 75 70 61 74 65 73 66 68 67 66 76 2f } //reoildriend.sytes.net/cfjhupatesfhgfv/  01 00 
		$a_01_4 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 } //01 00  powershell
		$a_01_5 = {2d 00 65 00 6e 00 63 00 20 00 61 00 51 00 42 00 77 00 41 00 47 00 4d 00 41 00 62 00 77 00 42 00 75 00 41 00 47 00 59 00 41 00 61 00 51 00 42 00 6e 00 41 00 43 00 41 00 41 00 4c 00 77 00 42 00 79 00 41 00 47 00 55 00 41 00 62 00 67 00 42 00 6c 00 41 00 48 00 63 00 41 00 } //01 00  -enc aQBwAGMAbwBuAGYAaQBnACAALwByAGUAbgBlAHcA
		$a_01_6 = {2d 00 65 00 6e 00 63 00 20 00 55 00 77 00 42 00 30 00 41 00 47 00 45 00 41 00 63 00 67 00 42 00 30 00 41 00 43 00 30 00 41 00 55 00 77 00 42 00 73 00 41 00 47 00 55 00 41 00 5a 00 51 00 42 00 77 00 41 00 43 00 41 00 41 00 4c 00 51 00 42 00 54 00 41 00 47 00 55 00 41 00 59 00 77 00 42 00 76 00 41 00 47 00 34 00 41 00 5a 00 41 00 42 00 7a 00 41 00 43 00 41 00 41 00 4d 00 51 00 41 00 75 00 41 00 44 00 55 00 41 00 } //01 00  -enc UwB0AGEAcgB0AC0AUwBsAGUAZQBwACAALQBTAGUAYwBvAG4AZABzACAAMQAuADUA
		$a_81_7 = {47 65 74 4d 65 74 68 6f 64 73 } //01 00  GetMethods
		$a_81_8 = {47 65 74 45 78 70 6f 72 74 65 64 54 79 70 65 73 } //01 00  GetExportedTypes
		$a_81_9 = {49 6e 76 6f 6b 65 } //01 00  Invoke
		$a_81_10 = {44 6f 77 6e 6c 6f 61 64 44 61 74 61 } //00 00  DownloadData
	condition:
		any of ($a_*)
 
}