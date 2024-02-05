
rule Ransom_Win32_Critloki_A{
	meta:
		description = "Ransom:Win32/Critloki.A,SIGNATURE_TYPE_PEHSTR,05 00 05 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {54 00 6f 00 72 00 4c 00 6f 00 63 00 6b 00 65 00 72 00 } //01 00 
		$a_01_1 = {50 61 79 6d 65 6e 74 20 52 65 63 65 69 76 65 64 2e 20 50 72 6f 63 65 65 64 20 74 6f 20 64 65 63 72 79 70 74 69 6f 6e 2e } //01 00 
		$a_01_2 = {72 00 65 00 67 00 20 00 61 00 64 00 64 00 20 00 22 00 48 00 4b 00 43 00 55 00 5c 00 43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 20 00 50 00 61 00 6e 00 65 00 6c 00 5c 00 44 00 65 00 73 00 6b 00 74 00 6f 00 70 00 22 00 20 00 2f 00 76 00 20 00 57 00 61 00 6c 00 6c 00 70 00 61 00 70 00 65 00 72 00 20 00 2f 00 66 00 20 00 2f 00 74 00 20 00 52 00 45 00 47 00 5f 00 53 00 5a 00 20 00 2f 00 64 00 20 00 22 00 43 00 3a 00 5c 00 54 00 45 00 4d 00 50 00 5c 00 77 00 61 00 6c 00 6c 00 2e 00 62 00 6d 00 70 00 22 00 } //01 00 
		$a_01_3 = {20 00 2d 00 41 00 76 00 6f 00 69 00 64 00 44 00 69 00 73 00 6b 00 57 00 72 00 69 00 74 00 65 00 73 00 } //01 00 
		$a_01_4 = {20 00 2d 00 44 00 69 00 72 00 52 00 65 00 71 00 53 00 74 00 61 00 74 00 69 00 73 00 74 00 69 00 63 00 73 00 } //01 00 
		$a_01_5 = {6b 00 2e 00 70 00 68 00 70 00 3f 00 61 00 66 00 66 00 69 00 64 00 3d 00 } //00 00 
		$a_01_6 = {00 5d 04 00 } //00 8b 
	condition:
		any of ($a_*)
 
}