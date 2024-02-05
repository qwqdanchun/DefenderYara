
rule Trojan_Win32_VB_AAH{
	meta:
		description = "Trojan:Win32/VB.AAH,SIGNATURE_TYPE_PEHSTR_EXT,23 00 22 00 13 00 00 0a 00 "
		
	strings :
		$a_00_0 = {73 00 68 00 61 00 72 00 4b 00 5c 00 53 00 65 00 72 00 76 00 65 00 72 00 5c 00 50 00 72 00 6f 00 6a 00 65 00 6b 00 74 00 31 00 2e 00 76 00 62 00 70 00 } //0a 00 
		$a_01_1 = {57 69 6e 64 6f 77 73 20 55 70 64 61 74 65 } //05 00 
		$a_00_2 = {5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 64 00 72 00 69 00 76 00 65 00 72 00 73 00 5c 00 65 00 74 00 63 00 5c 00 68 00 6f 00 73 00 74 00 73 00 } //05 00 
		$a_00_3 = {6d 73 77 69 6e 73 63 6b 2e 6f 63 61 } //01 00 
		$a_00_4 = {5c 00 73 00 68 00 61 00 72 00 6b 00 2e 00 75 00 70 00 64 00 61 00 74 00 65 00 } //01 00 
		$a_01_5 = {69 00 61 00 6d 00 61 00 73 00 68 00 61 00 72 00 6b 00 70 00 6c 00 75 00 67 00 69 00 6e 00 } //01 00 
		$a_00_6 = {5c 00 72 00 65 00 67 00 73 00 73 00 76 00 72 00 33 00 32 00 2e 00 62 00 61 00 74 00 } //01 00 
		$a_00_7 = {73 00 74 00 61 00 72 00 74 00 20 00 } //01 00 
		$a_01_8 = {52 00 65 00 63 00 65 00 69 00 76 00 65 00 64 00 5f 00 46 00 69 00 6c 00 65 00 } //01 00 
		$a_00_9 = {7b 00 42 00 52 00 4f 00 57 00 53 00 45 00 52 00 7d 00 } //01 00 
		$a_00_10 = {7b 00 45 00 4e 00 54 00 45 00 52 00 7d 00 } //01 00 
		$a_00_11 = {7b 00 42 00 41 00 43 00 4b 00 7d 00 } //01 00 
		$a_00_12 = {53 00 63 00 72 00 69 00 70 00 74 00 69 00 6e 00 67 00 2e 00 46 00 69 00 6c 00 65 00 53 00 79 00 73 00 74 00 65 00 6d 00 4f 00 62 00 6a 00 65 00 63 00 74 00 } //01 00 
		$a_00_13 = {44 00 65 00 6c 00 65 00 74 00 65 00 46 00 6f 00 6c 00 64 00 65 00 72 00 } //01 00 
		$a_00_14 = {72 00 65 00 67 00 73 00 76 00 72 00 33 00 32 00 20 00 2f 00 73 00 20 00 2f 00 75 00 20 00 22 00 } //01 00 
		$a_00_15 = {70 00 72 00 69 00 76 00 6d 00 73 00 67 00 } //01 00 
		$a_00_16 = {6b 00 69 00 6c 00 6c 00 70 00 72 00 6f 00 63 00 } //01 00 
		$a_01_17 = {43 00 68 00 61 00 74 00 20 00 68 00 61 00 73 00 20 00 62 00 65 00 65 00 6e 00 20 00 73 00 74 00 61 00 72 00 74 00 65 00 64 00 } //01 00 
		$a_01_18 = {55 00 52 00 4c 00 44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 54 00 6f 00 46 00 69 00 6c 00 65 00 41 00 } //00 00 
	condition:
		any of ($a_*)
 
}