
rule Trojan_Win32_Farfli_MAM_MTB{
	meta:
		description = "Trojan:Win32/Farfli.MAM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 0b 00 00 01 00 "
		
	strings :
		$a_01_0 = {5b 4e 75 6d 20 4c 6f 63 6b 5d } //01 00 
		$a_01_1 = {5b 44 65 6c 5d } //01 00 
		$a_01_2 = {5b 54 41 42 5d } //01 00 
		$a_01_3 = {74 65 72 6d 73 72 76 68 61 63 6b 2e 64 6c 6c } //01 00 
		$a_01_4 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 20 4e 54 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 57 69 6e 6c 6f 67 6f 6e } //01 00 
		$a_01_5 = {74 61 73 6b 6b 69 6c 6c 20 2f 66 20 2f 69 6d 20 63 6d 64 2e 65 78 65 } //01 00 
		$a_01_6 = {43 72 65 61 74 65 54 6f 6f 6c 68 65 6c 70 33 32 53 6e 61 70 73 68 6f 74 } //01 00 
		$a_01_7 = {47 65 74 41 73 79 6e 63 4b 65 79 53 74 61 74 65 } //01 00 
		$a_01_8 = {2e 72 6f 74 65 78 74 } //01 00 
		$a_01_9 = {2e 72 6f 64 61 74 61 } //01 00 
		$a_01_10 = {59 6f 77 21 20 42 61 64 20 68 6f 73 74 20 6c 6f 6f 6b 75 70 } //00 00 
	condition:
		any of ($a_*)
 
}