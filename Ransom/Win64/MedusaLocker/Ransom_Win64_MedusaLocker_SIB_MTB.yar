
rule Ransom_Win64_MedusaLocker_SIB_MTB{
	meta:
		description = "Ransom:Win64/MedusaLocker.SIB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,1c 00 1b 00 05 00 00 02 00 "
		
	strings :
		$a_02_0 = {31 00 4a 00 90 02 0a 2e 00 65 00 78 00 65 90 00 } //01 00 
		$a_80_1 = {2e 62 6f 6f 74 } //.boot  05 00 
		$a_80_2 = {2e 74 68 65 6d 69 64 61 } //.themida  0a 00 
		$a_02_3 = {48 01 d8 83 38 00 74 90 01 01 58 eb 90 01 01 58 b9 90 01 04 83 e9 90 01 01 48 01 c1 53 6a 90 01 01 53 6a 90 01 01 51 ff d0 5b b8 90 01 04 48 01 d8 5d 5f 5e 5a 59 5b ff e0 90 00 } //0a 00 
		$a_02_4 = {8a 06 48 ff c6 88 07 48 ff c7 bb 90 02 04 00 d2 75 90 01 01 8a 16 48 ff c6 10 d2 73 90 01 01 00 d2 75 90 01 01 8a 16 48 ff c6 10 d2 73 90 01 01 31 c0 00 d2 75 90 01 01 8a 16 48 ff c6 10 d2 0f 83 90 01 04 00 d2 75 90 01 01 8a 16 48 ff c6 10 d2 11 c0 00 d2 75 90 01 01 8a 16 48 ff c6 10 d2 11 c0 00 d2 75 90 01 01 8a 16 48 ff c6 10 d2 11 c0 00 d2 75 90 01 01 8a 16 48 ff c6 10 d2 11 c0 74 90 01 01 57 89 c0 48 29 c7 8a 07 5f 88 07 48 ff c7 bb 90 01 04 eb 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}