
rule Trojan_Win64_IcedID_DE_MTB{
	meta:
		description = "Trojan:Win64/IcedID.DE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_01_0 = {83 44 24 58 2c c7 44 24 5c 54 00 00 00 66 3b db 74 44 83 44 24 68 13 c7 44 24 6c eb 01 00 00 3a d2 74 48 83 44 24 54 16 c7 44 24 58 17 00 00 00 3a d2 74 cc } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win64_IcedID_DE_MTB_2{
	meta:
		description = "Trojan:Win64/IcedID.DE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,15 00 15 00 07 00 00 03 00 "
		
	strings :
		$a_81_0 = {6f 65 6d 67 70 6c 6e 6e 2e 64 6c 6c } //03 00 
		$a_81_1 = {62 65 6e 70 74 61 71 6d 70 73 6f 66 75 77 } //03 00 
		$a_81_2 = {67 6d 6f 62 6d 66 6f 72 74 } //03 00 
		$a_81_3 = {72 56 64 76 62 4d 73 69 65 63 73 77 72 2e 70 32 62 33 79 76 73 42 72 59 6c 2d 72 } //03 00 
		$a_81_4 = {62 5f 73 69 65 63 73 77 72 } //03 00 
		$a_81_5 = {52 74 6c 4c 6f 6f 6b 75 70 46 75 6e 63 74 69 6f 6e 45 6e 74 72 79 } //03 00 
		$a_81_6 = {48 65 61 70 52 65 41 6c 6c 6f 63 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win64_IcedID_DE_MTB_3{
	meta:
		description = "Trojan:Win64/IcedID.DE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 0b 00 00 0a 00 "
		
	strings :
		$a_01_0 = {44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 } //01 00 
		$a_01_1 = {4a 35 56 35 44 52 2e 64 6c 6c } //01 00 
		$a_01_2 = {63 4a 50 53 7a 71 48 42 4d 4e } //01 00 
		$a_01_3 = {7a 6c 6d 6b 6f 5a 4c 51 4d 64 } //01 00 
		$a_01_4 = {48 64 51 5a 67 6e 45 } //01 00 
		$a_01_5 = {72 48 71 6e 59 53 41 } //01 00 
		$a_01_6 = {6b 78 46 46 74 35 2e 64 6c 6c } //01 00 
		$a_01_7 = {44 51 65 43 66 57 73 61 61 53 } //01 00 
		$a_01_8 = {4d 7a 45 63 5a 58 62 7a 64 46 } //01 00 
		$a_01_9 = {70 68 54 71 63 73 4e 67 74 72 50 } //01 00 
		$a_01_10 = {7a 44 6e 46 46 6c 71 44 74 41 } //00 00 
	condition:
		any of ($a_*)
 
}