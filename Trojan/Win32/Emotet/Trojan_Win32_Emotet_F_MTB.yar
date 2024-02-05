
rule Trojan_Win32_Emotet_F_MTB{
	meta:
		description = "Trojan:Win32/Emotet.F!MTB,SIGNATURE_TYPE_PEHSTR,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {45 6d 6f 74 69 63 2e 65 78 65 } //01 00 
		$a_01_1 = {40 2e 65 68 5f 66 72 61 6d } //01 00 
		$a_01_2 = {6d 00 65 00 6d 00 63 00 70 00 79 00 } //01 00 
		$a_01_3 = {4c 00 6f 00 61 00 64 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 } //01 00 
		$a_01_4 = {56 00 69 00 72 00 74 00 75 00 61 00 6c 00 41 00 6c 00 6c 00 6f 00 63 00 } //01 00 
		$a_01_5 = {43 00 72 00 79 00 70 00 74 00 45 00 6e 00 63 00 72 00 79 00 70 00 74 00 } //01 00 
		$a_01_6 = {43 00 72 00 79 00 70 00 74 00 41 00 63 00 71 00 75 00 69 00 72 00 65 00 43 00 6f 00 6e 00 74 00 65 00 78 00 74 00 57 00 } //01 00 
		$a_01_7 = {c7 44 24 0c 40 00 00 00 c7 44 24 08 00 10 00 00 89 44 24 04 c7 04 24 00 00 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}