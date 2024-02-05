
rule Trojan_Win64_Ransom666_A_MTB{
	meta:
		description = "Trojan:Win64/Ransom666.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 0a 00 00 01 00 "
		
	strings :
		$a_02_0 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 90 02 25 2f 00 36 00 36 00 36 00 2e 00 6d 00 70 00 33 00 90 00 } //01 00 
		$a_02_1 = {68 74 74 70 3a 2f 2f 90 02 25 2f 36 36 36 2e 6d 70 33 90 00 } //01 00 
		$a_02_2 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 90 02 25 2f 00 72 00 61 00 6e 00 73 00 6f 00 6d 00 77 00 61 00 72 00 65 00 5f 00 61 00 70 00 69 00 2e 00 70 00 68 00 70 00 3f 00 63 00 68 00 65 00 63 00 6b 00 5f 00 70 00 61 00 79 00 6d 00 65 00 6e 00 74 00 3d 00 90 00 } //01 00 
		$a_02_3 = {68 74 74 70 3a 2f 2f 90 02 25 2f 72 61 6e 73 6f 6d 77 61 72 65 5f 61 70 69 2e 70 68 70 3f 63 68 65 63 6b 5f 70 61 79 6d 65 6e 74 3d 90 00 } //01 00 
		$a_01_4 = {61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 6e 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_5 = {59 00 6f 00 75 00 72 00 20 00 53 00 79 00 73 00 74 00 65 00 6d 00 20 00 69 00 73 00 20 00 6e 00 6f 00 77 00 20 00 55 00 6e 00 6c 00 6f 00 63 00 6b 00 65 00 64 00 } //01 00 
		$a_01_6 = {66 00 75 00 72 00 74 00 68 00 65 00 72 00 5f 00 69 00 6e 00 73 00 74 00 72 00 75 00 63 00 74 00 69 00 6f 00 6e 00 73 00 2e 00 74 00 78 00 74 00 } //01 00 
		$a_01_7 = {59 00 6f 00 75 00 72 00 20 00 53 00 6f 00 75 00 6c 00 20 00 68 00 61 00 73 00 20 00 62 00 65 00 65 00 6e 00 20 00 72 00 65 00 6c 00 65 00 61 00 73 00 65 00 64 00 21 00 } //01 00 
		$a_81_8 = {72 61 6e 73 6f 6d 77 61 72 65 2e 65 78 65 } //01 00 
		$a_01_9 = {36 00 36 00 36 00 2e 00 74 00 78 00 74 00 } //00 00 
	condition:
		any of ($a_*)
 
}