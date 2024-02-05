
rule Trojan_Win32_Dorifel_EC_MTB{
	meta:
		description = "Trojan:Win32/Dorifel.EC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 41 64 6f 62 65 33 44 5c 61 64 6f 62 6c 6f 63 2e 65 78 65 } //01 00 
		$a_01_1 = {5c 4c 61 62 5a 36 34 5c 78 6f 70 74 69 73 79 73 2e 65 78 65 } //01 00 
		$a_01_2 = {4b 45 59 4b 45 59 30 } //01 00 
		$a_01_3 = {6e 65 74 73 74 61 74 2e 74 78 74 } //01 00 
		$a_01_4 = {67 72 75 62 62 2e 6c 69 73 74 } //00 00 
	condition:
		any of ($a_*)
 
}