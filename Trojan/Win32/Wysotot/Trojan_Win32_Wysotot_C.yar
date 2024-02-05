
rule Trojan_Win32_Wysotot_C{
	meta:
		description = "Trojan:Win32/Wysotot.C,SIGNATURE_TYPE_PEHSTR_EXT,04 00 03 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 65 47 64 70 5c 62 69 6e 5c 77 69 6e 33 32 5c 52 65 6c 65 61 73 65 5c 65 47 64 70 53 76 63 2e 70 64 62 } //01 00 
		$a_01_1 = {57 00 73 00 79 00 73 00 53 00 76 00 63 } //01 00 
		$a_01_2 = {65 00 53 00 61 00 66 00 65 00 20 00 53 00 65 00 63 00 75 00 72 00 69 00 74 00 79 00 20 00 43 00 6f } //01 00 
		$a_01_3 = {75 00 6e 00 73 00 76 00 63 00 00 00 72 00 75 00 6e 00 00 00 6b 00 69 00 6c 00 6c 00 00 00 00 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 } //01 00 
		$a_01_4 = {61 00 64 00 6d 00 2e 00 73 00 6f 00 66 00 74 00 33 00 36 00 35 00 2e 00 63 00 6f 00 6d 00 2f 00 67 00 64 00 70 00 2f 00 73 00 6f 00 66 00 74 00 75 00 70 00 64 00 61 00 74 00 65 } //00 00 
	condition:
		any of ($a_*)
 
}