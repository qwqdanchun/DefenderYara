
rule Worm_Win32_Honditost_A{
	meta:
		description = "Worm:Win32/Honditost.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {63 6d 64 2e 65 78 65 20 2f 43 20 72 65 6e 20 4d 73 50 4d 53 4e 53 76 73 2e 64 6c 6c 20 6e 6d 6c 73 76 63 2e 74 78 74 00 } //01 00 
		$a_01_1 = {63 6d 64 2e 65 78 65 20 2f 43 20 63 6f 70 79 20 2f 42 20 6c 73 61 73 72 76 2e 64 6c 6c 2b 7a 69 70 2e 7a 69 70 20 6c 73 61 73 76 73 2e 64 6c 6c 20 2f 79 00 } //01 00 
		$a_01_2 = {4b 45 52 45 4e 20 4b 41 4c 49 20 59 41 43 48 20 4b 41 4c 4f 20 47 49 4e 49 2e 2e 2e 21 21 21 00 } //01 00 
		$a_01_3 = {48 75 6b 75 6d 61 6e 42 75 61 74 4b 6f 72 75 70 74 6f 72 2e 68 74 6d 6c 00 } //01 00 
		$a_01_4 = {6e 6d 6c 73 76 63 65 78 2e 74 78 74 00 } //01 00 
		$a_01_5 = {25 00 73 00 5c 00 75 00 74 00 61 00 6d 00 61 00 2e 00 45 00 78 00 5f 00 } //01 00 
		$a_01_6 = {25 00 73 00 5c 00 79 00 6f 00 72 00 6d 00 2e 00 45 00 78 00 5f 00 } //01 00 
		$a_01_7 = {25 00 73 00 5c 00 6e 00 6d 00 6c 00 73 00 76 00 63 00 2e 00 45 00 78 00 5f 00 } //00 00 
	condition:
		any of ($a_*)
 
}