
rule Backdoor_Win32_Zegost_AE{
	meta:
		description = "Backdoor:Win32/Zegost.AE,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 02 00 "
		
	strings :
		$a_01_0 = {47 c6 45 ed 68 c6 45 ee 30 c6 45 ef 73 } //02 00 
		$a_01_1 = {48 c6 44 24 11 61 c6 44 24 12 63 c6 44 24 13 6b c6 44 24 14 65 c6 44 24 15 72 c6 44 24 16 3a } //01 00 
		$a_02_2 = {5c 73 79 73 6c 6f 67 2e 64 61 74 90 02 10 25 64 2e 62 61 6b 90 00 } //01 00 
		$a_01_3 = {47 6c 6f 62 61 6c 5c 55 55 50 50 20 25 64 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Backdoor_Win32_Zegost_AE_2{
	meta:
		description = "Backdoor:Win32/Zegost.AE,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 02 00 "
		
	strings :
		$a_01_0 = {47 c6 45 ed 68 c6 45 ee 30 c6 45 ef 73 } //01 00 
		$a_01_1 = {5c 73 79 73 74 65 6d 69 6e 66 6f 2e 6b 65 79 00 25 32 64 25 32 64 } //01 00 
		$a_01_2 = {61 50 50 4c 49 43 41 54 49 4f 4e 53 5c 49 45 58 50 4c 4f 52 45 2e 45 58 45 5c 53 48 45 4c 4c 5c 4f 50 45 4e 5c 43 4f 4d 4d 41 4e 44 00 } //01 00 
		$a_01_3 = {54 65 72 6d 69 6e 61 74 65 54 68 72 65 61 64 00 25 73 3a 5c 57 69 6e 64 6f 77 73 5c 53 79 73 74 65 6d 33 32 } //00 00 
	condition:
		any of ($a_*)
 
}