
rule Trojan_Win32_Obfuse_RA_MTB{
	meta:
		description = "Trojan:Win32/Obfuse.RA!MTB,SIGNATURE_TYPE_PEHSTR,05 00 05 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {59 00 4e 00 6f 00 45 00 66 00 31 00 58 00 77 00 39 00 58 00 73 00 6f 00 45 00 68 00 39 00 79 00 4b 00 44 00 70 00 55 00 70 00 42 00 53 00 46 00 57 00 52 00 4f 00 32 00 31 00 30 00 } //01 00 
		$a_01_1 = {46 00 36 00 48 00 6c 00 74 00 7a 00 4d 00 53 00 52 00 4d 00 68 00 65 00 6f 00 7a 00 59 00 65 00 75 00 31 00 31 00 38 00 } //01 00 
		$a_01_2 = {4b 00 54 00 4d 00 50 00 6f 00 4f 00 4b 00 33 00 4c 00 53 00 61 00 36 00 4f 00 6d 00 34 00 7a 00 36 00 45 00 36 00 33 00 62 00 36 00 32 00 } //01 00 
		$a_01_3 = {63 00 77 00 4c 00 34 00 30 00 4d 00 38 00 48 00 31 00 64 00 42 00 69 00 79 00 5a 00 70 00 44 00 75 00 75 00 6b 00 59 00 75 00 4c 00 57 00 37 00 6d 00 73 00 38 00 59 00 49 00 51 00 52 00 66 00 4e 00 64 00 62 00 6a 00 32 00 34 00 36 00 } //01 00 
		$a_01_4 = {67 00 73 00 54 00 79 00 52 00 72 00 53 00 58 00 4f 00 70 00 52 00 47 00 51 00 56 00 42 00 4d 00 52 00 63 00 36 00 76 00 62 00 5a 00 32 00 35 00 } //01 00 
		$a_01_5 = {51 00 38 00 61 00 65 00 48 00 4c 00 54 00 72 00 64 00 36 00 79 00 4d 00 75 00 42 00 69 00 39 00 58 00 51 00 56 00 6d 00 38 00 32 00 71 00 54 00 4c 00 4c 00 7a 00 45 00 32 00 33 00 31 00 } //00 00 
		$a_01_6 = {00 67 } //16 00 
	condition:
		any of ($a_*)
 
}