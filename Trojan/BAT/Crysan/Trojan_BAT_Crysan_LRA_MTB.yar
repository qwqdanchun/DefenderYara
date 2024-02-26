
rule Trojan_BAT_Crysan_LRA_MTB{
	meta:
		description = "Trojan:BAT/Crysan.LRA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,12 00 12 00 0a 00 00 0a 00 "
		
	strings :
		$a_80_0 = {73 6d 6d 32 30 32 31 2e 6e 65 74 } //smm2021.net  0a 00 
		$a_80_1 = {31 37 38 2e 32 35 30 2e 31 35 39 2e 31 35 30 } //178.250.159.150  01 00 
		$a_01_2 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 } //01 00  powershell
		$a_01_3 = {2d 00 65 00 6e 00 63 00 20 00 55 00 77 00 42 00 30 00 41 00 47 00 45 00 41 00 63 00 67 00 42 00 30 00 41 00 43 00 30 00 41 00 55 00 77 00 42 00 73 00 41 00 47 00 55 00 41 00 5a 00 51 00 42 00 77 00 41 00 43 00 41 00 41 00 4c 00 51 00 42 00 54 00 41 00 47 00 55 00 41 00 59 00 77 00 42 00 76 00 } //01 00  -enc UwB0AGEAcgB0AC0AUwBsAGUAZQBwACAALQBTAGUAYwBv
		$a_81_4 = {47 65 74 4d 65 74 68 6f 64 } //01 00  GetMethod
		$a_81_5 = {44 6f 77 6e 6c 6f 61 64 44 61 74 61 } //01 00  DownloadData
		$a_81_6 = {49 6e 76 6f 6b 65 } //01 00  Invoke
		$a_81_7 = {57 65 62 43 6c 69 65 6e 74 } //01 00  WebClient
		$a_81_8 = {47 65 74 45 78 70 6f 72 74 65 64 54 79 70 65 73 } //01 00  GetExportedTypes
		$a_81_9 = {54 6f 41 72 72 61 79 } //00 00  ToArray
	condition:
		any of ($a_*)
 
}