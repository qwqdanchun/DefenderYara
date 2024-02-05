
rule Trojan_Win32_VB_DJ{
	meta:
		description = "Trojan:Win32/VB.DJ,SIGNATURE_TYPE_PEHSTR,33 00 33 00 0a 00 00 0a 00 "
		
	strings :
		$a_01_0 = {4e 65 74 53 70 72 65 61 64 } //0a 00 
		$a_01_1 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //0a 00 
		$a_01_2 = {4b 00 69 00 6c 00 6c 00 20 00 22 00 63 00 3a 00 5c 00 } //0a 00 
		$a_01_3 = {5c 00 43 00 53 00 57 00 5c 00 63 00 73 00 77 00 2e 00 76 00 62 00 70 00 } //0a 00 
		$a_01_4 = {48 00 4b 00 45 00 59 00 5f 00 43 00 55 00 52 00 52 00 45 00 4e 00 54 00 5f 00 55 00 53 00 45 00 52 00 5c 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 49 00 6e 00 74 00 65 00 72 00 6e 00 65 00 74 00 20 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 5c 00 4d 00 61 00 69 00 6e 00 5c 00 53 00 74 00 61 00 72 00 74 00 20 00 50 00 61 00 67 00 65 00 } //01 00 
		$a_01_5 = {5c 00 6d 00 33 00 72 00 2e 00 73 00 79 00 73 00 } //01 00 
		$a_01_6 = {5c 00 64 00 65 00 73 00 75 00 6e 00 61 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_7 = {5c 00 6c 00 61 00 6d 00 61 00 72 00 61 00 6e 00 2e 00 74 00 78 00 74 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_8 = {5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 63 00 63 00 69 00 6e 00 66 00 6f 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_9 = {5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 72 00 65 00 61 00 64 00 6d 00 65 00 2e 00 74 00 78 00 74 00 2e 00 65 00 78 00 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}