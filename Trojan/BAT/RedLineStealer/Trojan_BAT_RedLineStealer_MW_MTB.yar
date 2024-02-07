
rule Trojan_BAT_RedLineStealer_MW_MTB{
	meta:
		description = "Trojan:BAT/RedLineStealer.MW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 0a 00 00 01 00 "
		
	strings :
		$a_02_0 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 31 00 31 00 33 00 2e 00 32 00 31 00 32 00 2e 00 38 00 38 00 2e 00 90 02 09 2f 00 56 00 76 00 2f 00 72 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 2e 00 6a 00 73 00 6f 00 6e 00 90 00 } //01 00 
		$a_02_1 = {68 74 74 70 3a 2f 2f 31 31 33 2e 32 31 32 2e 38 38 2e 90 02 09 2f 56 76 2f 72 65 73 6f 75 72 63 65 2e 6a 73 6f 6e 90 00 } //01 00 
		$a_81_2 = {43 3a 5c 57 69 6e 64 6f 77 73 5c 53 79 73 57 4f 57 36 34 5c 73 76 63 68 6f 73 74 2e 65 78 65 } //01 00  C:\Windows\SysWOW64\svchost.exe
		$a_81_3 = {43 3a 5c 57 69 6e 64 6f 77 73 5c 53 79 73 57 4f 57 36 34 5c 72 75 6e 64 6c 6c 33 32 2e 65 78 65 } //01 00  C:\Windows\SysWOW64\rundll32.exe
		$a_81_4 = {44 6f 77 6e 6c 6f 61 64 53 74 72 69 6e 67 } //01 00  DownloadString
		$a_81_5 = {44 6f 77 6e 6c 6f 61 64 46 69 6c 65 } //01 00  DownloadFile
		$a_81_6 = {53 6c 65 65 70 } //01 00  Sleep
		$a_81_7 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggableAttribute
		$a_81_8 = {54 6f 53 74 72 69 6e 67 } //01 00  ToString
		$a_81_9 = {67 65 74 5f 4b 65 79 } //00 00  get_Key
	condition:
		any of ($a_*)
 
}