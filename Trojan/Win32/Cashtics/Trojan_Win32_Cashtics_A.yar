
rule Trojan_Win32_Cashtics_A{
	meta:
		description = "Trojan:Win32/Cashtics.A,SIGNATURE_TYPE_PEHSTR_EXT,fffffffa 00 ffffffdc 00 07 00 00 64 00 "
		
	strings :
		$a_01_0 = {47 00 75 00 6d 00 6d 00 69 00 4d 00 6f 00 64 00 41 00 6c 00 6d 00 69 00 67 00 68 00 74 00 79 00 } //64 00 
		$a_01_1 = {46 00 61 00 63 00 65 00 62 00 6f 00 6f 00 6b 00 5f 00 50 00 72 00 69 00 76 00 61 00 74 00 65 00 5f 00 50 00 72 00 6f 00 66 00 69 00 6c 00 65 00 5f 00 56 00 69 00 65 00 77 00 65 00 72 00 } //32 00 
		$a_00_2 = {53 68 61 72 65 43 61 73 68 20 54 61 63 74 69 63 73 5c 50 72 6f 6a 65 63 74 73 } //32 00 
		$a_01_3 = {66 00 69 00 6c 00 65 00 6d 00 6c 00 2e 00 63 00 6f 00 6d 00 2f 00 31 00 32 00 41 00 32 00 61 00 36 00 } //32 00 
		$a_01_4 = {66 00 69 00 6c 00 65 00 75 00 70 00 73 00 2e 00 6e 00 65 00 74 00 2f 00 31 00 32 00 61 00 36 00 39 00 38 00 34 00 } //14 00 
		$a_01_5 = {45 00 72 00 72 00 6f 00 72 00 20 00 38 00 32 00 37 00 31 00 38 00 } //14 00 
		$a_01_6 = {46 00 61 00 63 00 65 00 62 00 6f 00 6f 00 6b 00 2e 00 49 00 6e 00 65 00 74 00 } //00 00 
	condition:
		any of ($a_*)
 
}