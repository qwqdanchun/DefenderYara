
rule Trojan_Win32_VB_WE{
	meta:
		description = "Trojan:Win32/VB.WE,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {42 00 44 00 20 00 4b 00 69 00 74 00 20 00 4c 00 53 00 20 00 2d 00 20 00 34 00 63 00 68 00 61 00 6e 00 20 00 42 00 6f 00 74 00 5c 00 4d 00 61 00 69 00 6e 00 20 00 42 00 6f 00 74 00 5c 00 50 00 72 00 6f 00 6a 00 65 00 63 00 74 00 31 00 2e 00 76 00 62 00 70 00 } //01 00 
		$a_01_1 = {74 00 73 00 31 00 30 00 30 00 72 00 61 00 74 00 65 00 2e 00 61 00 67 00 69 00 6c 00 69 00 74 00 79 00 68 00 6f 00 73 00 74 00 65 00 72 00 2e 00 63 00 6f 00 6d 00 2f 00 75 00 70 00 33 00 2e 00 70 00 68 00 70 00 } //01 00 
		$a_01_2 = {43 00 4d 00 44 00 20 00 2f 00 43 00 20 00 6e 00 65 00 74 00 20 00 73 00 74 00 6f 00 70 00 20 00 6d 00 70 00 73 00 73 00 76 00 63 00 } //01 00 
		$a_01_3 = {3a 00 5c 00 52 00 65 00 63 00 79 00 63 00 6c 00 65 00 72 00 5c 00 } //00 00 
	condition:
		any of ($a_*)
 
}