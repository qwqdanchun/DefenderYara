
rule Trojan_Win32_BeeBone_RPM_MTB{
	meta:
		description = "Trojan:Win32/BeeBone.RPM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {70 00 61 00 73 00 74 00 65 00 62 00 69 00 6e 00 2e 00 63 00 6f 00 6d 00 2f 00 72 00 61 00 77 00 2f 00 75 00 38 00 71 00 39 00 75 00 35 00 65 00 44 00 } //01 00 
		$a_01_1 = {66 00 69 00 6c 00 65 00 64 00 6e 00 2e 00 65 00 75 00 2f 00 6c 00 54 00 52 00 36 00 52 00 4b 00 6b 00 75 00 47 00 55 00 4d 00 52 00 65 00 6b 00 6f 00 36 00 4c 00 58 00 4d 00 62 00 73 00 30 00 30 00 2f 00 54 00 41 00 42 00 2e 00 74 00 78 00 74 00 } //01 00 
		$a_01_2 = {74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 20 00 2f 00 66 00 20 00 2f 00 74 00 20 00 2f 00 69 00 6d 00 20 00 63 00 68 00 72 00 6f 00 6d 00 65 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_3 = {77 00 73 00 63 00 72 00 69 00 70 00 74 00 2e 00 73 00 68 00 65 00 6c 00 6c 00 } //01 00 
		$a_01_4 = {62 00 69 00 74 00 2e 00 6c 00 79 00 2f 00 33 00 4f 00 4f 00 67 00 6a 00 77 00 73 00 } //01 00 
		$a_01_5 = {5c 00 73 00 76 00 63 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_6 = {5c 00 65 00 6e 00 64 00 7a 00 2e 00 62 00 61 00 74 00 } //01 00 
		$a_01_7 = {53 00 43 00 48 00 54 00 41 00 53 00 4b 00 53 00 20 00 2f 00 44 00 45 00 4c 00 45 00 54 00 45 00 20 00 2f 00 54 00 4e 00 } //00 00 
	condition:
		any of ($a_*)
 
}