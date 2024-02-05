
rule Trojan_Win32_AveMaria_NEDO_MTB{
	meta:
		description = "Trojan:Win32/AveMaria.NEDO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,16 00 16 00 06 00 00 05 00 "
		
	strings :
		$a_01_0 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 61 00 6a 00 61 00 79 00 62 00 6e 00 6c 00 2e 00 78 00 31 00 30 00 2e 00 6d 00 78 00 } //05 00 
		$a_01_1 = {64 00 65 00 74 00 65 00 63 00 74 00 65 00 64 00 2e 00 77 00 61 00 76 00 } //04 00 
		$a_01_2 = {72 00 65 00 67 00 73 00 76 00 72 00 33 00 32 00 2e 00 65 00 78 00 65 00 } //04 00 
		$a_01_3 = {46 00 72 00 65 00 65 00 41 00 56 00 2e 00 53 00 63 00 61 00 6e 00 6e 00 65 00 72 00 } //02 00 
		$a_01_4 = {5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 2e 00 4e 00 45 00 54 00 5c 00 46 00 72 00 61 00 6d 00 65 00 77 00 6f 00 72 00 6b 00 5c 00 76 00 34 00 2e 00 30 00 2e 00 33 00 30 00 33 00 31 00 39 00 5c 00 52 00 65 00 67 00 53 00 76 00 63 00 73 00 2e 00 65 00 78 00 65 00 } //02 00 
		$a_01_5 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //00 00 
	condition:
		any of ($a_*)
 
}