
rule Trojan_Win32_GuLoader_MC_MTB{
	meta:
		description = "Trojan:Win32/GuLoader.MC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,15 00 15 00 07 00 00 03 00 "
		
	strings :
		$a_81_0 = {62 65 61 6d 5f 72 2e 63 75 72 } //03 00 
		$a_81_1 = {62 65 61 6d 5f 72 6c 2e 63 75 72 } //03 00 
		$a_81_2 = {62 75 73 79 2e 73 76 67 } //03 00 
		$a_81_3 = {73 79 73 74 65 6d 2e 69 6e 69 } //03 00 
		$a_81_4 = {5c 73 6f 6d 65 74 68 69 6e 67 2e 69 6e 69 } //03 00 
		$a_81_5 = {6b 65 72 6e 65 6c 33 32 2e 64 6c 6c 3a 3a 52 74 6c 4d 6f 76 65 4d 65 6d 6f 72 79 28 2a 69 20 72 33 20 72 33 2c 69 20 72 39 2c 69 20 34 29 } //03 00 
		$a_81_6 = {43 6f 6e 63 75 69 74 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_GuLoader_MC_MTB_2{
	meta:
		description = "Trojan:Win32/GuLoader.MC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 0f 00 00 01 00 "
		
	strings :
		$a_01_0 = {41 73 47 65 6e 49 63 6f 6e 2e 70 64 62 } //01 00 
		$a_01_1 = {43 72 65 61 74 65 4d 75 74 65 78 57 } //01 00 
		$a_01_2 = {49 73 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //01 00 
		$a_01_3 = {4b 69 6c 6c 54 69 6d 65 72 } //01 00 
		$a_01_4 = {5c 00 46 00 52 00 49 00 4c 00 41 00 47 00 44 00 45 00 5c 00 53 00 4b 00 52 00 4d 00 59 00 44 00 53 00 45 00 4c 00 53 00 } //01 00 
		$a_01_5 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 50 00 4f 00 53 00 54 00 41 00 47 00 45 00 53 00 5c 00 4e 00 61 00 74 00 75 00 72 00 66 00 61 00 67 00 73 00 } //01 00 
		$a_01_6 = {5c 00 52 00 65 00 6e 00 74 00 65 00 6b 00 6f 00 6d 00 70 00 65 00 6e 00 73 00 61 00 74 00 69 00 6f 00 6e 00 65 00 6e 00 2e 00 44 00 49 00 42 00 } //01 00 
		$a_01_7 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 55 00 6e 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 5c 00 4b 00 41 00 50 00 49 00 54 00 4c 00 45 00 52 00 53 00 } //01 00 
		$a_01_8 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 42 00 61 00 64 00 64 00 69 00 73 00 68 00 6e 00 65 00 73 00 73 00 39 00 34 00 5c 00 57 00 4f 00 4f 00 52 00 41 00 52 00 49 00 53 00 } //01 00 
		$a_01_9 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 61 00 73 00 6b 00 69 00 6e 00 6f 00 72 00 64 00 65 00 74 00 73 00 5c 00 4b 00 41 00 4e 00 41 00 52 00 41 00 } //01 00 
		$a_01_10 = {5c 00 53 00 56 00 4f 00 56 00 4c 00 42 00 4c 00 41 00 41 00 54 00 2e 00 75 00 6e 00 69 00 } //01 00 
		$a_01_11 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 56 00 6f 00 6c 00 63 00 61 00 6e 00 75 00 73 00 5c 00 54 00 45 00 4f 00 4c 00 4f 00 47 00 49 00 53 00 4b 00 45 00 53 00 } //01 00 
		$a_01_12 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 61 00 72 00 74 00 65 00 72 00 69 00 6f 00 73 00 63 00 6c 00 65 00 72 00 6f 00 73 00 65 00 73 00 5c 00 54 00 65 00 67 00 6e 00 73 00 74 00 6e 00 69 00 6e 00 67 00 65 00 6e 00 73 00 36 00 33 00 } //01 00 
		$a_01_13 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 54 00 61 00 6e 00 64 00 66 00 72 00 65 00 6d 00 62 00 72 00 75 00 64 00 31 00 33 00 32 00 5c 00 4d 00 4f 00 52 00 4d 00 4f 00 4e 00 53 00 4b 00 45 00 53 00 } //01 00 
		$a_01_14 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 55 00 6e 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 5c 00 53 00 4c 00 41 00 4e 00 44 00 45 00 52 00 4f 00 55 00 53 00 } //00 00 
	condition:
		any of ($a_*)
 
}