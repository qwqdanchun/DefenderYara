
rule Trojan_Win32_Vilsel_ABS_MTB{
	meta:
		description = "Trojan:Win32/Vilsel.ABS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,12 00 12 00 0a 00 00 01 00 "
		
	strings :
		$a_01_0 = {2a 00 5c 00 41 00 43 00 3a 00 5c 00 44 00 6f 00 63 00 75 00 6d 00 65 00 6e 00 74 00 73 00 20 00 61 00 6e 00 64 00 20 00 53 00 65 00 74 00 74 00 69 00 6e 00 67 00 73 00 5c 00 44 00 75 00 63 00 44 00 75 00 6e 00 67 00 5c 00 44 00 65 00 73 00 6b 00 74 00 6f 00 70 00 5c 00 50 00 72 00 6f 00 20 00 33 00 5c 00 50 00 72 00 6f 00 33 00 2e 00 76 00 62 00 70 00 } //01 00 
		$a_01_1 = {74 00 65 00 6d 00 70 00 2e 00 7a 00 69 00 70 00 } //01 00 
		$a_01_2 = {48 00 69 00 64 00 65 00 46 00 69 00 6c 00 65 00 45 00 78 00 74 00 } //01 00 
		$a_01_3 = {43 00 72 00 65 00 61 00 74 00 65 00 54 00 65 00 78 00 74 00 46 00 69 00 6c 00 65 00 } //01 00 
		$a_01_4 = {43 72 65 61 74 65 4d 75 74 65 78 41 } //01 00 
		$a_01_5 = {52 65 67 43 72 65 61 74 65 4b 65 79 41 } //01 00 
		$a_01_6 = {50 72 6f 6a 65 63 74 31 } //01 00 
		$a_01_7 = {43 3a 5c 57 49 4e 44 4f 57 53 5c 73 79 73 74 65 6d 33 32 5c 6d 73 76 62 76 6d 36 30 2e 64 6c 6c 5c 33 } //0a 00 
		$a_01_8 = {6d 00 75 00 73 00 69 00 63 00 2e 00 65 00 78 00 65 00 } //0a 00 
		$a_01_9 = {6d 00 75 00 73 00 69 00 63 00 76 00 6e 00 2e 00 65 00 78 00 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}