
rule Trojan_Win64_Icedid_EK_MTB{
	meta:
		description = "Trojan:Win64/Icedid.EK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 02 00 00 04 00 "
		
	strings :
		$a_01_0 = {4d 0f a4 cf 26 48 69 f6 21 09 00 00 e4 3f e4 b1 48 81 c5 83 0c 00 00 e6 90 48 c1 ef 8f 48 8b 04 24 } //01 00 
		$a_01_1 = {62 68 6a 61 64 73 67 76 74 79 61 73 68 6a 6b } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win64_Icedid_EK_MTB_2{
	meta:
		description = "Trojan:Win64/Icedid.EK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {49 4f 46 50 70 6b 33 } //01 00 
		$a_01_1 = {4a 55 36 64 54 67 6c } //01 00 
		$a_01_2 = {4d 49 51 6a 58 4b 5a } //01 00 
		$a_01_3 = {4d 75 7a 4f 4b 79 41 } //01 00 
		$a_01_4 = {54 36 61 31 6d 6b 54 72 49 53 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win64_Icedid_EK_MTB_3{
	meta:
		description = "Trojan:Win64/Icedid.EK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {41 4c 6a 37 4d 46 } //01 00 
		$a_01_1 = {43 62 6f 42 6a 75 33 39 } //01 00 
		$a_01_2 = {48 52 68 36 46 43 51 39 31 52 72 } //01 00 
		$a_01_3 = {4f 72 78 66 37 66 } //01 00 
		$a_01_4 = {51 7a 59 48 35 59 50 4c 46 41 70 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win64_Icedid_EK_MTB_4{
	meta:
		description = "Trojan:Win64/Icedid.EK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 72 65 61 74 65 4d 75 74 65 78 57 } //01 00 
		$a_01_1 = {4f 70 65 6e 53 65 6d 61 70 68 6f 72 65 57 } //01 00 
		$a_01_2 = {56 69 72 74 75 61 6c 41 6c 6c 6f 63 45 78 } //01 00 
		$a_01_3 = {79 75 61 67 73 66 62 76 61 79 73 66 68 6a 61 79 73 75 66 61 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win64_Icedid_EK_MTB_5{
	meta:
		description = "Trojan:Win64/Icedid.EK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {44 74 48 63 72 58 61 79 73 71 57 75 76 6f 4b } //01 00 
		$a_01_1 = {49 6d 76 62 7a 43 54 45 57 48 78 7a 68 4b 57 4e } //01 00 
		$a_01_2 = {4a 4f 62 62 70 44 42 44 76 45 44 4c 6c } //01 00 
		$a_01_3 = {4e 6b 44 57 62 70 75 70 6c 44 72 51 53 4f } //01 00 
		$a_01_4 = {50 6c 75 67 69 6e 49 6e 69 74 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win64_Icedid_EK_MTB_6{
	meta:
		description = "Trojan:Win64/Icedid.EK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {66 75 61 64 73 79 67 75 61 73 67 64 75 68 61 69 73 75 64 6a 79 75 61 67 73 64 75 61 } //01 00 
		$a_01_1 = {62 72 6f 77 73 65 72 49 6e 66 6f } //01 00 
		$a_01_2 = {73 65 74 2d 6c 69 6e 6b 2d 74 61 72 67 65 74 } //01 00 
		$a_01_3 = {57 61 69 74 46 6f 72 53 69 6e 67 6c 65 4f 62 6a 65 63 74 45 78 } //00 00 
	condition:
		any of ($a_*)
 
}