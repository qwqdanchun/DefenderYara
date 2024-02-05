
rule Trojan_Win64_Winnti_C_dha{
	meta:
		description = "Trojan:Win64/Winnti.C!dha,SIGNATURE_TYPE_PEHSTR,05 00 05 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {52 00 4e 00 54 00 4f 00 } //01 00 
		$a_01_1 = {58 00 4d 00 44 00 35 00 } //01 00 
		$a_01_2 = {53 00 68 00 65 00 6c 00 6c 00 20 00 73 00 65 00 74 00 75 00 70 00 20 00 69 00 6e 00 66 00 6f 00 72 00 6d 00 61 00 74 00 69 00 6f 00 6e 00 3a 00 } //01 00 
		$a_01_3 = {55 00 70 00 74 00 69 00 6d 00 65 00 3a 00 20 00 25 00 2d 00 2e 00 32 00 64 00 20 00 44 00 61 00 79 00 73 00 20 00 25 00 2d 00 2e 00 32 00 64 00 20 00 48 00 6f 00 75 00 72 00 73 00 20 00 25 00 2d 00 2e 00 32 00 64 00 20 00 4d 00 69 00 6e 00 75 00 74 00 65 00 73 00 20 00 25 00 2d 00 2e 00 32 00 64 00 20 00 53 00 65 00 63 00 6f 00 6e 00 64 00 73 00 } //01 00 
		$a_01_4 = {25 00 73 00 5c 00 25 00 64 00 2e 00 6c 00 6f 00 67 00 } //01 00 
		$a_01_5 = {44 00 3a 00 5c 00 5a 00 65 00 75 00 73 00 53 00 65 00 72 00 76 00 65 00 72 00 2e 00 74 00 78 00 74 00 } //00 00 
	condition:
		any of ($a_*)
 
}