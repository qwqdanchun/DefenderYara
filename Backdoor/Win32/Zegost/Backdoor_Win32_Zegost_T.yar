
rule Backdoor_Win32_Zegost_T{
	meta:
		description = "Backdoor:Win32/Zegost.T,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {43 3a 5c 33 33 38 39 2e 62 61 74 } //01 00 
		$a_00_1 = {47 68 30 73 74 } //01 00 
		$a_01_2 = {5c 73 79 73 6c 6f 67 2e 64 61 74 } //01 00 
		$a_01_3 = {5b 25 30 32 64 2f 25 30 32 64 2f 25 64 20 25 30 32 64 3a 25 30 32 64 3a 25 30 32 64 5d 20 28 25 73 29 } //01 00 
		$a_00_4 = {44 4e 41 4d 4d 4f 43 5c 4e 45 50 4f 5c 4c 4c 45 48 53 5c 45 58 45 2e 45 52 4f 4c 50 58 45 49 5c 53 4e 4f 49 54 41 43 49 4c 50 50 61 } //00 00 
	condition:
		any of ($a_*)
 
}