
rule Trojan_Win64_IcedID_A_MTB{
	meta:
		description = "Trojan:Win64/IcedID.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_01_0 = {48 8b 49 78 0f b6 54 24 70 88 14 01 48 8b 84 24 60 01 00 00 8b 40 48 ff c0 48 8b 8c 24 60 01 00 00 89 41 48 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win64_IcedID_A_MTB_2{
	meta:
		description = "Trojan:Win64/IcedID.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 05 00 00 02 00 "
		
	strings :
		$a_01_0 = {4c 68 70 58 35 53 51 44 39 30 57 78 } //02 00 
		$a_01_1 = {55 5a 59 68 59 57 66 4a } //02 00 
		$a_01_2 = {56 4f 61 46 73 59 38 50 4e } //02 00 
		$a_01_3 = {66 57 69 4f 51 62 46 6b 37 } //02 00 
		$a_01_4 = {6c 6b 43 38 78 6f 6f 71 5a 76 72 74 62 51 79 4a } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win64_IcedID_A_MTB_3{
	meta:
		description = "Trojan:Win64/IcedID.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {4e 71 70 33 33 74 2e 64 6c 6c } //01 00 
		$a_01_1 = {48 61 79 75 67 66 6e 61 73 75 62 79 66 68 68 6a 73 73 } //01 00 
		$a_01_2 = {58 4b 59 39 53 69 47 74 78 51 5a 4d 69 4f 34 } //01 00 
		$a_01_3 = {63 69 32 6a 44 49 63 5a 75 6a 4e 37 6b } //01 00 
		$a_01_4 = {68 4f 42 4c 46 7a 6c 43 4f 66 58 76 56 38 56 66 } //00 00 
	condition:
		any of ($a_*)
 
}