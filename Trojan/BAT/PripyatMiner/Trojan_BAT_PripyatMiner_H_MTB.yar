
rule Trojan_BAT_PripyatMiner_H_MTB{
	meta:
		description = "Trojan:BAT/PripyatMiner.H!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 00 79 00 73 00 74 00 65 00 6d 00 2e 00 4e 00 65 00 74 00 2e 00 57 00 65 00 62 00 43 00 6c 00 69 00 65 00 6e 00 74 00 29 00 2e 00 44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 46 00 69 00 6c 00 65 00 } //01 00 
		$a_01_1 = {63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 20 00 2f 00 63 00 20 00 73 00 63 00 68 00 74 00 61 00 73 00 6b 00 73 00 20 00 2f 00 63 00 72 00 65 00 61 00 74 00 65 00 20 00 2f 00 78 00 6d 00 6c 00 } //01 00 
		$a_01_2 = {2f 00 74 00 6e 00 20 00 22 00 47 00 6f 00 6f 00 67 00 6c 00 65 00 55 00 70 00 64 00 61 00 74 00 65 00 54 00 61 00 73 00 6b 00 22 00 3b 00 63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 20 00 2f 00 63 00 20 00 64 00 65 00 6c 00 } //01 00 
		$a_01_3 = {63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 20 00 2f 00 63 00 20 00 6e 00 65 00 74 00 73 00 68 00 20 00 69 00 6e 00 74 00 65 00 72 00 66 00 61 00 63 00 65 00 20 00 69 00 70 00 76 00 34 00 20 00 73 00 65 00 74 00 20 00 64 00 6e 00 73 00 20 00 6e 00 61 00 6d 00 65 00 3d 00 } //01 00 
		$a_01_4 = {2f 00 43 00 20 00 63 00 68 00 6f 00 69 00 63 00 65 00 20 00 2f 00 43 00 20 00 59 00 20 00 2f 00 4e 00 20 00 2f 00 44 00 20 00 59 00 20 00 2f 00 54 00 20 00 33 00 20 00 26 00 20 00 44 00 65 00 6c 00 } //01 00 
		$a_01_5 = {2f 00 62 00 6f 00 74 00 } //01 00 
		$a_01_6 = {53 00 45 00 4c 00 45 00 43 00 54 00 20 00 2a 00 20 00 46 00 52 00 4f 00 4d 00 20 00 41 00 6e 00 74 00 69 00 76 00 69 00 72 00 75 00 73 00 50 00 72 00 6f 00 64 00 75 00 63 00 74 00 } //00 00 
	condition:
		any of ($a_*)
 
}